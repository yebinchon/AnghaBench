; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @native_encode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_encode_int(i32 %0, i8* %1, i32 %2) #0 {
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
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @TYPE_MODE(i32 %18)
  %20 = call i32 @GET_MODE_SIZE(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @UNITS_PER_WORD, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %109, %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @BITS_PER_UNIT, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @TREE_INT_CST_LOW(i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %42, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %14, align 1
  br label %54

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @TREE_INT_CST_HIGH(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %51 = sub nsw i32 %49, %50
  %52 = ashr i32 %48, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %14, align 1
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @UNITS_PER_WORD, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
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
  br label %103

91:                                               ; preds = %54
  %92 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi i32 [ %98, %94 ], [ %100, %99 ]
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %101, %90
  %104 = load i8, i8* %14, align 1
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %29

112:                                              ; preds = %29
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %24
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
