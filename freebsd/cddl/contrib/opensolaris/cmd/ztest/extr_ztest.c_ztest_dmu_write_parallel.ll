; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_write_parallel.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_write_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ZTEST_RANGE_LOCKS = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8
@ID_PARALLEL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dmu_write_parallel(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.TYPE_4__], align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i64 @ztest_random(i32 20)
  %8 = add i64 %7, 43
  %9 = shl i64 1, %8
  %10 = load i32, i32* @ZTEST_RANGE_LOCKS, align 4
  %11 = call i64 @ztest_random(i32 %10)
  %12 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %13 = shl i64 %11, %12
  %14 = add i64 %9, %13
  store i64 %14, i64* %6, align 8
  %15 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %16 = load i32, i32* @ID_PARALLEL, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %19 = call i32 @ztest_od_init(%struct.TYPE_4__* %15, i32 %16, i32 %17, i32 0, i32 %18, i32 0, i32 0, i32 0)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call i64 @ztest_object_init(i32* %20, %struct.TYPE_4__* %21, i32 4, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %37

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %30, %26
  %28 = call i64 @ztest_random(i32 10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ztest_io(i32* %31, i32 %34, i64 %35)
  br label %27

37:                                               ; preds = %25, %27
  ret void
}

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ztest_io(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
