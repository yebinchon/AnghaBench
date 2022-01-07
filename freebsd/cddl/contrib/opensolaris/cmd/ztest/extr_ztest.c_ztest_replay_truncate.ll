; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_replay_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_replay_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@RL_READER = common dso_local global i32 0, align 4
@RL_WRITER = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @ztest_replay_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_replay_truncate(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = call i32 @byteswap_uint64_array(%struct.TYPE_10__* %24, i32 12)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RL_READER, align 4
  %32 = call i32 @ztest_object_lock(%struct.TYPE_9__* %27, i32 %30, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RL_WRITER, align 4
  %44 = call i32* @ztest_range_lock(%struct.TYPE_9__* %33, i32 %36, i32 %39, i32 %42, i32 %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @dmu_tx_create(i32* %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dmu_tx_hold_free(i32* %47, i32 %50, i32 %53, i32 %56)
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @TXG_WAIT, align 4
  %60 = load i32, i32* @FTAG, align 4
  %61 = call i64 @ztest_tx_assign(i32* %58, i32 %59, i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %26
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @ztest_range_unlock(i32* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ztest_object_unlock(%struct.TYPE_9__* %67, i32 %70)
  %72 = load i32, i32* @ENOSPC, align 4
  store i32 %72, i32* %4, align 4
  br label %102

73:                                               ; preds = %26
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i64 @dmu_free_range(i32* %74, i32 %77, i32 %80, i32 %83, i32* %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @VERIFY(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = call i32 @ztest_log_truncate(%struct.TYPE_9__* %89, i32* %90, %struct.TYPE_10__* %91)
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @dmu_tx_commit(i32* %93)
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @ztest_range_unlock(i32* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ztest_object_unlock(%struct.TYPE_9__* %97, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %73, %64
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @byteswap_uint64_array(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ztest_object_lock(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @ztest_range_lock(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_free(i32*, i32, i32, i32) #1

declare dso_local i64 @ztest_tx_assign(i32*, i32, i32) #1

declare dso_local i32 @ztest_range_unlock(i32*) #1

declare dso_local i32 @ztest_object_unlock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dmu_free_range(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ztest_log_truncate(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
