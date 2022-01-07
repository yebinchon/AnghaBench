; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_vspltis_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_vspltis_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vspltis_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vspltis_constant(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GET_MODE(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @GET_MODE_INNER(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @GET_MODE_NUNITS(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @GET_MODE_BITSIZE(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @GET_MODE_MASK(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub i32 %30, 1
  %32 = call i64 @const_vector_elt_as_int(i32 %29, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 -1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %16, align 8
  store i32 2, i32* %10, align 4
  br label %39

39:                                               ; preds = %67, %3
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = udiv i32 %44, 2
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = ashr i64 %46, %48
  store i64 %49, i64* %17, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = lshr i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %17, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 %54, %56
  %58 = load i64, i64* %17, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = and i64 %58, %60
  %62 = or i64 %57, %61
  %63 = icmp ne i64 %53, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %120

65:                                               ; preds = %43
  %66 = load i64, i64* %17, align 8
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 %68, 2
  store i32 %69, i32* %10, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load i64, i64* %15, align 8
  %72 = call i64 @EASY_VECTOR_15(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %91

75:                                               ; preds = %70
  %76 = load i64, i64* %15, align 8
  %77 = call i64 @EASY_VECTOR_15_ADD_SELF(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i64, i64* %15, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %79
  br label %90

89:                                               ; preds = %85, %82, %75
  store i32 0, i32* %4, align 4
  br label %120

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %74
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %116, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %94, 1
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  %100 = load i32, i32* %6, align 4
  %101 = sub i32 %100, 1
  %102 = and i32 %99, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %18, align 8
  br label %108

106:                                              ; preds = %97
  %107 = load i64, i64* %16, align 8
  store i64 %107, i64* %18, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i64, i64* %18, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @const_vector_elt_as_int(i32 %110, i32 %111)
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %120

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %92

119:                                              ; preds = %92
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %114, %89, %64
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE_MASK(i32) #1

declare dso_local i64 @const_vector_elt_as_int(i32, i32) #1

declare dso_local i64 @EASY_VECTOR_15(i64) #1

declare dso_local i64 @EASY_VECTOR_15_ADD_SELF(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
