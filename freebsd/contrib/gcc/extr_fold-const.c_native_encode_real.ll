; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @native_encode_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_encode_real(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca [6 x i64], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TREE_TYPE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @TYPE_MODE(i32 %19)
  %21 = call i32 @GET_MODE_SIZE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load i32, i32* @UNITS_PER_WORD, align 4
  %28 = sdiv i32 32, %27
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @TREE_REAL_CST_PTR(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @TYPE_MODE(i32 %32)
  %34 = call i32 @real_to_target(i64* %29, i32 %31, i32 %33)
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %112, %26
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BITS_PER_UNIT, align 4
  %39 = mul nsw i32 %37, %38
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @BITS_PER_UNIT, align 4
  %44 = sdiv i32 %42, %43
  %45 = and i32 %44, 3
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sdiv i32 %46, 32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, 31
  %53 = zext i32 %52 to i64
  %54 = ashr i64 %50, %53
  %55 = trunc i64 %54 to i8
  store i8 %55, i8* %15, align 1
  %56 = load i32, i32* @UNITS_PER_WORD, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %91

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @UNITS_PER_WORD, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %64, %58
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @UNITS_PER_WORD, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* @UNITS_PER_WORD, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @UNITS_PER_WORD, align 4
  %80 = srem i32 %78, %79
  %81 = sub nsw i32 %77, %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %90

84:                                               ; preds = %69
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @UNITS_PER_WORD, align 4
  %87 = srem i32 %85, %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %84, %75
  br label %101

91:                                               ; preds = %41
  %92 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 3, %95
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %96, %94 ], [ %98, %97 ]
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %90
  %102 = load i8, i8* %15, align 1
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @BITS_PER_UNIT, align 4
  %107 = sdiv i32 %105, %106
  %108 = and i32 %107, -4
  %109 = add nsw i32 %104, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %103, i64 %110
  store i8 %102, i8* %111, align 1
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* @BITS_PER_UNIT, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %35

116:                                              ; preds = %35
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %25
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @real_to_target(i64*, i32, i32) #1

declare dso_local i32 @TREE_REAL_CST_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
