; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_wide_str_to_charconst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_wide_str_to_charconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@bytes_big_endian = common dso_local global i32 0, align 4
@wchar_precision = common dso_local global i32 0, align 4
@char_precision = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"character constant too long for its type\00", align 1
@BITS_PER_CPPCHAR_T = common dso_local global i64 0, align 8
@unsigned_wchar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*, i32*, i32*)* @wide_str_to_charconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wide_str_to_charconst(i32* %0, i64 %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = bitcast %struct.TYPE_3__* %6 to { i64, i64* }*
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 0
  store i64 %1, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 1
  store i64* %2, i64** %22, align 8
  store i32* %0, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* %4, i32** %9, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @bytes_big_endian, align 4
  %25 = call i8* @CPP_OPTION(i32* %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @wchar_precision, align 4
  %29 = call i8* @CPP_OPTION(i32* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @char_precision, align 4
  %33 = call i8* @CPP_OPTION(i32* %31, i32 %32)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @width_to_mask(i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @width_to_mask(i64 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = udiv i64 %39, %40
  store i64 %41, i64* %15, align 8
  store i64 0, i64* %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %15, align 8
  %45 = mul i64 %44, 2
  %46 = sub i64 %43, %45
  store i64 %46, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %47

47:                                               ; preds = %82, %5
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %17, align 8
  %59 = add i64 %57, %58
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  br label %73

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %17, align 8
  %69 = sub i64 %67, %68
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i64, i64* %64, i64 %70
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %62, %54
  %74 = phi i64 [ %61, %54 ], [ %72, %62 ]
  store i64 %74, i64* %19, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %12, align 8
  %77 = shl i64 %75, %76
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %14, align 8
  %80 = and i64 %78, %79
  %81 = or i64 %77, %80
  store i64 %81, i64* %18, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %17, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %17, align 8
  br label %47

85:                                               ; preds = %47
  %86 = load i64, i64* %16, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @CPP_DL_WARNING, align 4
  %91 = call i32 @cpp_error(i32* %89, i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @BITS_PER_CPPCHAR_T, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @unsigned_wchar, align 4
  %99 = call i8* @CPP_OPTION(i32* %97, i32 %98)
  %100 = icmp ne i8* %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = and i64 %102, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %101, %96
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %18, align 8
  %113 = and i64 %112, %111
  store i64 %113, i64* %18, align 8
  br label %119

114:                                              ; preds = %101
  %115 = load i64, i64* %13, align 8
  %116 = xor i64 %115, -1
  %117 = load i64, i64* %18, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %18, align 8
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %92
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* @unsigned_wchar, align 4
  %123 = call i8* @CPP_OPTION(i32* %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %8, align 8
  store i32 1, i32* %126, align 4
  %127 = load i64, i64* %18, align 8
  ret i64 %127
}

declare dso_local i8* @CPP_OPTION(i32*, i32) #1

declare dso_local i64 @width_to_mask(i64) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
