; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_prealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_dmu_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SPA_MAXBLOCKSHIFT = common dso_local global i64 0, align 8
@ZTEST_RANGE_LOCKS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_UINT64_OTHER = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dmu_prealloc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.TYPE_4__], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 @ztest_random(i32 4)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %14 = add i64 %12, %13
  %15 = shl i64 1, %14
  %16 = load i32, i32* @ZTEST_RANGE_LOCKS, align 4
  %17 = call i32 @ztest_random(i32 %16)
  %18 = load i64, i64* @SPA_MAXBLOCKSHIFT, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = add i64 %15, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = call i32 @ztest_random(i32 20)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 (...) @ztest_random_blocksize()
  store i32 %26, i32* %8, align 4
  %27 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FTAG, align 4
  %30 = load i32, i32* @DMU_OT_UINT64_OTHER, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ztest_od_init(%struct.TYPE_4__* %27, i32 %28, i32 %29, i32 0, i32 %30, i32 %31, i32 0, i32 0)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %35 = call i32 @ztest_random(i32 2)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @ztest_object_init(i32* %33, %struct.TYPE_4__* %34, i32 4, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %104

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i64 @ztest_truncate(i32* %43, i32 %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %104

54:                                               ; preds = %42
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @ztest_prealloc(i32* %55, i32 %58, i32 %59, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @UMEM_NOFAIL, align 4
  %66 = call i8* @umem_zalloc(i32 %64, i32 %65)
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %99, %54
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ztest_random(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ztest_random(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %72, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @ztest_write(i32* %78, i32 %81, i32 %82, i32 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %100

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %92, %88
  %90 = call i32 @ztest_random(i32 4)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @ztest_io(i32* %93, i32 %96, i32 %97)
  br label %89

99:                                               ; preds = %89
  br label %67

100:                                              ; preds = %87, %67
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @umem_free(i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %53, %41
  ret void
}

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i32 @ztest_random_blocksize(...) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ztest_truncate(i32*, i32, i32, i32) #1

declare dso_local i32 @ztest_prealloc(i32*, i32, i32, i32) #1

declare dso_local i8* @umem_zalloc(i32, i32) #1

declare dso_local i64 @ztest_write(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @ztest_io(i32*, i32, i32) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
