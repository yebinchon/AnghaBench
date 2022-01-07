; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_v4_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_v4_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i32 }
%struct.inet_sock = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"ping_v4_unhash(isk=%p,isk->num=%u)\0A\00", align 1
@ping_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @ping_v4_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ping_v4_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_sock* @inet_sk(%struct.sock* %4)
  store %struct.inet_sock* %5, %struct.inet_sock** %3, align 8
  %6 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %7 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %8 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.inet_sock* %6, i64 %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call i64 @sk_hashed(%struct.sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = call i32 @write_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ping_table, i32 0, i32 0))
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = call i32 @hlist_nulls_del(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @sock_put(%struct.sock* %19)
  %21 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %22 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %24 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @sock_net(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sock_prot_inuse_add(i32 %26, i32 %29, i32 -1)
  %31 = call i32 @write_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ping_table, i32 0, i32 0))
  br label %32

32:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.inet_sock*, i64) #1

declare dso_local i64 @sk_hashed(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_nulls_del(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
