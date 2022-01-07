; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_interpret_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_interpret_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @native_interpret_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_interpret_real(i32 %0, i8* %1, i32 %2) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca [6 x i64], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TYPE_MODE(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @GET_MODE_SIZE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TYPE_MODE(i32 %22)
  %24 = call i32 @GET_MODE_SIZE(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 24
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %3
  %32 = load i32, i32* @NULL_TREE, align 4
  store i32 %32, i32* %4, align 4
  br label %128

33:                                               ; preds = %28
  %34 = load i32, i32* @UNITS_PER_WORD, align 4
  %35 = sdiv i32 32, %34
  store i32 %35, i32* %13, align 4
  %36 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %37 = call i32 @memset(i64* %36, i32 0, i32 48)
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %117, %33
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BITS_PER_UNIT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %38
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @BITS_PER_UNIT, align 4
  %47 = sdiv i32 %45, %46
  %48 = and i32 %47, 3
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @UNITS_PER_WORD, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @UNITS_PER_WORD, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @UNITS_PER_WORD, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32, i32* @UNITS_PER_WORD, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @UNITS_PER_WORD, align 4
  %73 = srem i32 %71, %72
  %74 = sub nsw i32 %70, %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %83

77:                                               ; preds = %62
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @UNITS_PER_WORD, align 4
  %80 = srem i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %77, %68
  br label %94

84:                                               ; preds = %44
  %85 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 3, %88
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ %89, %87 ], [ %91, %90 ]
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @BITS_PER_UNIT, align 4
  %99 = sdiv i32 %97, %98
  %100 = and i32 %99, -4
  %101 = add nsw i32 %96, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %95, i64 %102
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %15, align 1
  %105 = load i8, i8* %15, align 1
  %106 = zext i8 %105 to i64
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %107, 31
  %109 = zext i32 %108 to i64
  %110 = shl i64 %106, %109
  %111 = load i32, i32* %14, align 4
  %112 = sdiv i32 %111, 32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = or i64 %115, %110
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %94
  %118 = load i32, i32* @BITS_PER_UNIT, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %38

121:                                              ; preds = %38
  %122 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @real_from_target(i32* %16, i64* %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @build_real(i32 %125, i32 %126)
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %121, %31
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @real_from_target(i32*, i64*, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
