; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.proto*, %struct.proto* }
%struct.net = type { i32 }
%struct.proto = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sk_alloc(%struct.net* %0, i32 %1, i32 %2, %struct.proto* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proto*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.proto* %3, %struct.proto** %8, align 8
  %10 = load %struct.proto*, %struct.proto** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @__GFP_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.sock* @sk_prot_alloc(%struct.proto* %10, i32 %13, i32 %14)
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.proto*, %struct.proto** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  store %struct.proto* %22, %struct.proto** %24, align 8
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 3
  store %struct.proto* %22, %struct.proto** %26, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call i32 @sock_lock_init(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = load %struct.net*, %struct.net** %5, align 8
  %31 = call i32 @get_net(%struct.net* %30)
  %32 = call i32 @sock_net_set(%struct.sock* %29, i32 %31)
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = call i32 @sock_update_classid(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = call i32 @sock_update_netprioidx(%struct.sock* %38)
  br label %40

40:                                               ; preds = %18, %4
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  ret %struct.sock* %41
}

declare dso_local %struct.sock* @sk_prot_alloc(%struct.proto*, i32, i32) #1

declare dso_local i32 @sock_lock_init(%struct.sock*) #1

declare dso_local i32 @sock_net_set(%struct.sock*, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sock_update_classid(%struct.sock*) #1

declare dso_local i32 @sock_update_netprioidx(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
