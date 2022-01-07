; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_fzap.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_fzap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@DMU_OT_ZAP_OTHER = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fzap-%llu-%llu\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@TXG_MIGHTWAIT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_fzap(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x %struct.TYPE_7__], align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @FTAG, align 4
  %22 = load i32, i32* @DMU_OT_ZAP_OTHER, align 4
  %23 = call i32 @ztest_od_init(%struct.TYPE_7__* %19, i64 %20, i32 %21, i32 0, i32 %22, i32 0, i32 0, i32 0)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %26 = call i32 @ztest_random(i32 2)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @ztest_object_init(%struct.TYPE_8__* %24, %struct.TYPE_7__* %25, i32 8, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %88

33:                                               ; preds = %2
  %34 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %85, %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 2050
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %10, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = trunc i64 %42 to i32
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @snprintf(i8* %44, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @dmu_tx_create(i32* %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @B_TRUE, align 4
  %56 = call i32 @dmu_tx_hold_zap(i32* %53, i64 %54, i32 %55, i8* %44)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @TXG_MIGHTWAIT, align 4
  %59 = load i32, i32* @FTAG, align 4
  %60 = call i64 @ztest_tx_assign(i32* %57, i32 %58, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 1, i32* %15, align 4
  br label %81

64:                                               ; preds = %40
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @zap_add(i32* %65, i64 %66, i8* %44, i32 8, i32 1, i64* %12, i32* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @EEXIST, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i1 [ true, %64 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @dmu_tx_commit(i32* %79)
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %75, %63
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %15, align 4
  switch i32 %83, label %89 [
    i32 0, label %84
    i32 1, label %88
  ]

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %37

88:                                               ; preds = %32, %81, %37
  ret void

89:                                               ; preds = %81
  unreachable
}

declare dso_local i32 @ztest_od_init(%struct.TYPE_7__*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ztest_random(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i64, i32, i8*) #1

declare dso_local i64 @ztest_tx_assign(i32*, i32, i32) #1

declare dso_local i32 @zap_add(i32*, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
