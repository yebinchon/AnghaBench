; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_narrow_str_to_charconst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_narrow_str_to_charconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@char_precision = common dso_local global i32 0, align 4
@int_precision = common dso_local global i32 0, align 4
@BITS_PER_CPPCHAR_T = common dso_local global i64 0, align 8
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"character constant too long for its type\00", align 1
@warn_multichar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"multi-character character constant\00", align 1
@unsigned_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64*, i32*, i32*)* @narrow_str_to_charconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @narrow_str_to_charconst(i32* %0, i32 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = bitcast %struct.TYPE_3__* %6 to { i32, i64* }*
  %18 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %17, i32 0, i32 0
  store i32 %1, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i64* }, { i32, i64* }* %17, i32 0, i32 1
  store i64* %2, i64** %19, align 8
  store i32* %0, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* %4, i32** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @char_precision, align 4
  %22 = call i64 @CPP_OPTION(i32* %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @int_precision, align 4
  %25 = call i64 @CPP_OPTION(i32* %23, i32 %24)
  %26 = load i64, i64* %10, align 8
  %27 = udiv i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @width_to_mask(i64 %28)
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %30

30:                                               ; preds = %57, %5
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @BITS_PER_CPPCHAR_T, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %10, align 8
  %51 = shl i64 %49, %50
  %52 = load i64, i64* %15, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %14, align 8
  br label %56

54:                                               ; preds = %37
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %14, align 8
  br label %56

56:                                               ; preds = %54, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @CPP_DL_WARNING, align 4
  %68 = call i32 @cpp_error(i32* %66, i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %82

69:                                               ; preds = %60
  %70 = load i64, i64* %13, align 8
  %71 = icmp ugt i64 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @warn_multichar, align 4
  %75 = call i64 @CPP_OPTION(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @CPP_DL_WARNING, align 4
  %80 = call i32 @cpp_error(i32* %78, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %72, %69
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i64, i64* %13, align 8
  %84 = icmp ugt i64 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %16, align 4
  br label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @unsigned_char, align 4
  %89 = call i64 @CPP_OPTION(i32* %87, i32 %88)
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i64, i64* %13, align 8
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @int_precision, align 4
  %97 = call i64 @CPP_OPTION(i32* %95, i32 %96)
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @BITS_PER_CPPCHAR_T, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = shl i64 1, %103
  %105 = sub i64 %104, 1
  store i64 %105, i64* %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = shl i32 1, %112
  %114 = sext i32 %113 to i64
  %115 = and i64 %109, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %108, %102
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %14, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %14, align 8
  br label %126

121:                                              ; preds = %108
  %122 = load i64, i64* %12, align 8
  %123 = xor i64 %122, -1
  %124 = load i64, i64* %14, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %14, align 8
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %98
  %128 = load i64, i64* %13, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %8, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i64, i64* %14, align 8
  ret i64 %133
}

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @width_to_mask(i64) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
