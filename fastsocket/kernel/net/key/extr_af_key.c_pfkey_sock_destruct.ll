; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.netns_pfkey = type { i32 }

@pfkey_net_id = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Attempt to release alive pfkey socket: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pfkey_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfkey_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.netns_pfkey*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.net* @sock_net(%struct.sock* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @pfkey_net_id, align 4
  %9 = call %struct.netns_pfkey* @net_generic(%struct.net* %7, i32 %8)
  store %struct.netns_pfkey* %9, %struct.netns_pfkey** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @pfkey_sk(%struct.sock* %10)
  %12 = call i32 @pfkey_terminate_dump(i32 %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 2
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = load i32, i32* @SOCK_DEAD, align 4
  %18 = call i32 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.sock* %21)
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 1
  %26 = call i32 @atomic_read(i32* %25)
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.netns_pfkey*, %struct.netns_pfkey** %4, align 8
  %33 = getelementptr inbounds %struct.netns_pfkey, %struct.netns_pfkey* %32, i32 0, i32 0
  %34 = call i32 @atomic_dec(i32* %33)
  br label %35

35:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.netns_pfkey* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @pfkey_terminate_dump(i32) #1

declare dso_local i32 @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @printk(i8*, %struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
