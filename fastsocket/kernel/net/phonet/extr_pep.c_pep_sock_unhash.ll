; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sock_unhash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_sock_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.pep_sock = type { %struct.TYPE_2__, i32, %struct.sock* }
%struct.TYPE_2__ = type { i32 }

@TCPF_CLOSE = common dso_local global i32 0, align 4
@TCPF_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pep_sock_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pep_sock_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pep_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.pep_sock* @pep_sk(%struct.sock* %5)
  store %struct.pep_sock* %6, %struct.pep_sock** %3, align 8
  store %struct.sock* null, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call i32 @lock_sock(%struct.sock* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* @TCPF_CLOSE, align 4
  %14 = load i32, i32* @TCPF_LISTEN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %21 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %20, i32 0, i32 2
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call i32 @sk_del_node_init(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @release_sock(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %27, %struct.sock** %2, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call %struct.pep_sock* @pep_sk(%struct.sock* %28)
  store %struct.pep_sock* %29, %struct.pep_sock** %3, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = call i32 @lock_sock(%struct.sock* %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %34 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %33, i32 0, i32 1
  %35 = call i64 @hlist_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pep_sock*, %struct.pep_sock** %3, align 8
  %39 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @pn_sock_unhash(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = call i32 @release_sock(%struct.sock* %43)
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = icmp ne %struct.sock* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = call i32 @sock_put(%struct.sock* %48)
  br label %50

50:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i32 @pn_sock_unhash(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
