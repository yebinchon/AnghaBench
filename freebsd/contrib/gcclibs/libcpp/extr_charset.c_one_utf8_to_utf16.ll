; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32**, i64*, i32**, i64*)* @one_utf8_to_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_utf8_to_utf16(i64 %0, i32** %1, i64* %2, i32** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32**, i32*** %8, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %14, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i32**, i32*** %10, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load i32**, i32*** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 @one_utf8_to_cppchar(i32** %25, i64* %26, i32* %13)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %143

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  %34 = icmp sgt i32 %33, 1114111
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %14, align 8
  %37 = load i32**, i32*** %8, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @EILSEQ, align 4
  store i32 %40, i32* %6, align 4
  br label %143

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 65535
  br i1 %43, label %44, label %80

44:                                               ; preds = %41
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %46, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %14, align 8
  %50 = load i32**, i32*** %8, align 8
  store i32* %49, i32** %50, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* @E2BIG, align 4
  store i32 %53, i32* %6, align 4
  br label %143

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %16, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 65280
  %66 = ashr i32 %65, 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = load i32**, i32*** %10, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32* %76, i32** %74, align 8
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 2
  store i64 %79, i64* %77, align 8
  store i32 0, i32* %6, align 4
  br label %143

80:                                               ; preds = %41
  %81 = load i64*, i64** %11, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32*, i32** %14, align 8
  %86 = load i32**, i32*** %8, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @E2BIG, align 4
  store i32 %89, i32* %6, align 4
  br label %143

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %91, 65536
  %93 = sdiv i32 %92, 1024
  %94 = add nsw i32 %93, 55296
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %95, 65536
  %97 = srem i32 %96, 1024
  %98 = add nsw i32 %97, 56320
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 255
  %101 = load i32*, i32** %16, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load i32, i32* %17, align 4
  %109 = and i32 %108, 65280
  %110 = ashr i32 %109, 8
  %111 = load i32*, i32** %16, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %18, align 4
  %119 = and i32 %118, 255
  %120 = load i32*, i32** %16, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 3, i32 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load i32, i32* %18, align 4
  %128 = and i32 %127, 65280
  %129 = ashr i32 %128, 8
  %130 = load i32*, i32** %16, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 2, i32 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %130, i64 %135
  store i32 %129, i32* %136, align 4
  %137 = load i32**, i32*** %10, align 8
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  store i32* %139, i32** %137, align 8
  %140 = load i64*, i64** %11, align 8
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, 4
  store i64 %142, i64* %140, align 8
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %90, %84, %54, %48, %35, %30
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @one_utf8_to_cppchar(i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
