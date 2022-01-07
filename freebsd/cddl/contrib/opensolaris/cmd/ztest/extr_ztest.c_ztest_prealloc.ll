; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_prealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@RL_READER = common dso_local global i32 0, align 4
@RL_WRITER = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i64)* @ztest_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_prealloc(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @dmu_objset_pool(i32* %16)
  %18 = call i32 @txg_wait_synced(i32 %17, i64 0)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @RL_READER, align 4
  %22 = call i32 @ztest_object_lock(%struct.TYPE_6__* %19, i64 %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @RL_WRITER, align 4
  %28 = call i32* @ztest_range_lock(%struct.TYPE_6__* %23, i64 %24, i64 %25, i64 %26, i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @dmu_tx_create(i32* %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @dmu_tx_hold_write(i32* %31, i64 %32, i64 %33, i64 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @TXG_WAIT, align 4
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i64 @ztest_tx_assign(i32* %36, i32 %37, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @dmu_prealloc(i32* %43, i64 %44, i64 %45, i64 %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @dmu_tx_commit(i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @dmu_objset_pool(i32* %51)
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @txg_wait_synced(i32 %52, i64 %53)
  br label %61

55:                                               ; preds = %4
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @dmu_free_long_range(i32* %56, i64 %57, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %55, %42
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @ztest_range_unlock(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @ztest_object_unlock(%struct.TYPE_6__* %64, i64 %65)
  ret void
}

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @ztest_object_lock(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32* @ztest_range_lock(%struct.TYPE_6__*, i64, i64, i64, i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i64, i64, i64) #1

declare dso_local i64 @ztest_tx_assign(i32*, i32, i32) #1

declare dso_local i32 @dmu_prealloc(i32*, i64, i64, i64, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_free_long_range(i32*, i64, i64, i64) #1

declare dso_local i32 @ztest_range_unlock(i32*) #1

declare dso_local i32 @ztest_object_unlock(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
