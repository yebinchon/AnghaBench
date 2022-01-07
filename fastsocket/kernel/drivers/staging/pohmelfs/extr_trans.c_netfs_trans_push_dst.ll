; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_push_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_trans.c_netfs_trans_push_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_trans = type { i32, i32, i32 }
%struct.netfs_state = type { i32 }
%struct.netfs_trans_dst = type { i32, %struct.netfs_trans*, %struct.netfs_state*, i64, i64 }

@netfs_trans_dst_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfs_trans*, %struct.netfs_state*)* @netfs_trans_push_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfs_trans_push_dst(%struct.netfs_trans* %0, %struct.netfs_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfs_trans*, align 8
  %5 = alloca %struct.netfs_state*, align 8
  %6 = alloca %struct.netfs_trans_dst*, align 8
  %7 = alloca i32, align 4
  store %struct.netfs_trans* %0, %struct.netfs_trans** %4, align 8
  store %struct.netfs_state* %1, %struct.netfs_state** %5, align 8
  %8 = load i32, i32* @netfs_trans_dst_pool, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.netfs_trans_dst* @mempool_alloc(i32 %8, i32 %9)
  store %struct.netfs_trans_dst* %10, %struct.netfs_trans_dst** %6, align 8
  %11 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %12 = icmp ne %struct.netfs_trans_dst* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %18 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %20 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %22 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %23 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %22, i32 0, i32 2
  store %struct.netfs_state* %21, %struct.netfs_state** %23, align 8
  %24 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %25 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %26 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %25, i32 0, i32 1
  store %struct.netfs_trans* %24, %struct.netfs_trans** %26, align 8
  %27 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %28 = call i32 @netfs_trans_get(%struct.netfs_trans* %27)
  %29 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %30 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %33 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %34 = call i32 @netfs_trans_insert(%struct.netfs_trans_dst* %32, %struct.netfs_state* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.netfs_state*, %struct.netfs_state** %5, align 8
  %36 = getelementptr inbounds %struct.netfs_state, %struct.netfs_state* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %16
  br label %53

41:                                               ; preds = %16
  %42 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %43 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %46 = getelementptr inbounds %struct.netfs_trans_dst, %struct.netfs_trans_dst* %45, i32 0, i32 0
  %47 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %48 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %47, i32 0, i32 2
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  %50 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %51 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  store i32 0, i32* %3, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %56 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.netfs_trans*, %struct.netfs_trans** %4, align 8
  %58 = call i32 @netfs_trans_put(%struct.netfs_trans* %57)
  %59 = load %struct.netfs_trans_dst*, %struct.netfs_trans_dst** %6, align 8
  %60 = load i32, i32* @netfs_trans_dst_pool, align 4
  %61 = call i32 @mempool_free(%struct.netfs_trans_dst* %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %41, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.netfs_trans_dst* @mempool_alloc(i32, i32) #1

declare dso_local i32 @netfs_trans_get(%struct.netfs_trans*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netfs_trans_insert(%struct.netfs_trans_dst*, %struct.netfs_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netfs_trans_put(%struct.netfs_trans*) #1

declare dso_local i32 @mempool_free(%struct.netfs_trans_dst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
