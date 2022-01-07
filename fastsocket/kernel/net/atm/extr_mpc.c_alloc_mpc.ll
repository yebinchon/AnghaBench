; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_alloc_mpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_alloc_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { %struct.TYPE_2__, %struct.mpoa_client*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mpcs = common dso_local global %struct.mpoa_client* null, align 8
@MPC_P1 = common dso_local global i32 0, align 4
@MPC_P2 = common dso_local global i32 0, align 4
@MPC_P4 = common dso_local global i32 0, align 4
@MPC_P5 = common dso_local global i32 0, align 4
@MPC_P6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpoa_client* ()* @alloc_mpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpoa_client* @alloc_mpc() #0 {
  %1 = alloca %struct.mpoa_client*, align 8
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.mpoa_client* @kzalloc(i32 40, i32 %3)
  store %struct.mpoa_client* %4, %struct.mpoa_client** %2, align 8
  %5 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %6 = icmp eq %struct.mpoa_client* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.mpoa_client* null, %struct.mpoa_client** %1, align 8
  br label %47

8:                                                ; preds = %0
  %9 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %10 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %9, i32 0, i32 3
  %11 = call i32 @rwlock_init(i32* %10)
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 2
  %14 = call i32 @rwlock_init(i32* %13)
  %15 = load %struct.mpoa_client*, %struct.mpoa_client** @mpcs, align 8
  %16 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %17 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %16, i32 0, i32 1
  store %struct.mpoa_client* %15, %struct.mpoa_client** %17, align 8
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %19 = call i32 @atm_mpoa_init_cache(%struct.mpoa_client* %18)
  %20 = load i32, i32* @MPC_P1, align 4
  %21 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %22 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @MPC_P2, align 4
  %25 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %26 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %29 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load i32, i32* @MPC_P4, align 4
  %34 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %35 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @MPC_P5, align 4
  %38 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %39 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @MPC_P6, align 4
  %42 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %43 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  store %struct.mpoa_client* %45, %struct.mpoa_client** @mpcs, align 8
  %46 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  store %struct.mpoa_client* %46, %struct.mpoa_client** %1, align 8
  br label %47

47:                                               ; preds = %8, %7
  %48 = load %struct.mpoa_client*, %struct.mpoa_client** %1, align 8
  ret %struct.mpoa_client* %48
}

declare dso_local %struct.mpoa_client* @kzalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @atm_mpoa_init_cache(%struct.mpoa_client*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
