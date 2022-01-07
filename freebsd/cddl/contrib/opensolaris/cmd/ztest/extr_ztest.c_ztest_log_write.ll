; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_log_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_10__* }

@WR_NUM_STATES = common dso_local global i32 0, align 4
@ZIL_MAX_LOG_DATA = common dso_local global i64 0, align 8
@WR_INDIRECT = common dso_local global i64 0, align 8
@TX_WRITE = common dso_local global i32 0, align 4
@WR_COPIED = common dso_local global i64 0, align 8
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@WR_NEED_COPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*)* @ztest_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_log_write(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load i32, i32* @WR_NUM_STATES, align 4
  %10 = call i64 @ztest_random(i32 %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @zil_replaying(i32 %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %96

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZIL_MAX_LOG_DATA, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* @TX_WRITE, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @WR_COPIED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i64 [ %34, %31 ], [ 0, %35 ]
  %38 = add i64 24, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.TYPE_12__* @zil_itx_create(i32 %27, i32 %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @WR_COPIED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = bitcast i32* %59 to %struct.TYPE_11__*
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 1
  %62 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %63 = call i64 @dmu_read(i32 %47, i32 %50, i32 %53, i32 %57, %struct.TYPE_11__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %44
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = call i32 @zil_itx_destroy(%struct.TYPE_12__* %66)
  %68 = load i32, i32* @TX_WRITE, align 4
  %69 = call %struct.TYPE_12__* @zil_itx_create(i32 %68, i32 24)
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %7, align 8
  %70 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %65, %44, %36
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = call i64 @ztest_random(i32 8)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = call i32 @bcopy(i32* %85, i32* %88, i32 20)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @zil_itx_assign(i32 %92, %struct.TYPE_12__* %93, i32* %94)
  br label %96

96:                                               ; preds = %71, %17
  ret void
}

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i64 @zil_replaying(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @zil_itx_create(i32, i32) #1

declare dso_local i64 @dmu_read(i32, i32, i32, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_12__*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @zil_itx_assign(i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
