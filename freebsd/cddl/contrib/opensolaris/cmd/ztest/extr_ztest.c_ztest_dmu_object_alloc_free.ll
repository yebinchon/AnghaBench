; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_object_alloc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_object_alloc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZTEST_RANGE_LOCKS = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dmu_object_alloc_free(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.TYPE_4__], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %5, i64 0, i64 %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %20 = call i32 @ztest_od_init(%struct.TYPE_4__* %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 0, i32 0, i32 0)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %27 = load i32, i32* @B_TRUE, align 4
  %28 = call i64 @ztest_object_init(i32* %25, %struct.TYPE_4__* %26, i32 16, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %49

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 4, %33
  %35 = call i64 @ztest_random(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ztest_random(i32 %39)
  %41 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %5, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ZTEST_RANGE_LOCKS, align 4
  %45 = call i64 @ztest_random(i32 %44)
  %46 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = call i32 @ztest_io(i32* %38, i32 %43, i64 %47)
  br label %32

49:                                               ; preds = %30, %32
  ret void
}

declare dso_local i32 @ztest_od_init(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @ztest_io(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
