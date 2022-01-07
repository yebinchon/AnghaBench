; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_get_version_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_get_version_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"unexpected version string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32, i8*, i32**, i32*, i32*, i32*, i32*)* @get_version_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_version_header(i32* %0, i64* %1, i32 %2, i8* %3, i32** %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64* %1, i64** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @toosmall(i8* %23)
  br label %25

25:                                               ; preds = %22, %9
  %26 = load i32*, i32** %10, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i64 @windres_get_16(i32* %26, i64* %27, i32 2)
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %15, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = call i64 @windres_get_16(i32* %31, i64* %33, i32 2)
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %16, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 4
  %40 = call i64 @windres_get_16(i32* %37, i64* %39, i32 2)
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %17, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %18, align 8
  store i32 6, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 6
  store i32 %45, i32* %12, align 4
  %46 = load i64*, i64** %11, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 6
  store i64* %47, i64** %11, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %25
  %51 = load i32*, i32** %10, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32* @get_unicode(i32* %51, i64* %52, i32 %53, i32* %19)
  %55 = load i32**, i32*** %14, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %62, %59
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  br label %100

65:                                               ; preds = %25
  br label %66

66:                                               ; preds = %65, %96
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @toosmall(i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %10, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = call i64 @windres_get_16(i32* %73, i64* %74, i32 2)
  %76 = load i8*, i8** %13, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i64
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @fatal(i32 %81)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 2
  store i32 %88, i32* %12, align 4
  %89 = load i64*, i64** %11, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  store i64* %90, i64** %11, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %99

96:                                               ; preds = %83
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  br label %66

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99, %50
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 3
  %104 = and i32 %103, -4
  %105 = load i32*, i32** %18, align 8
  store i32 %104, i32* %105, align 4
  ret void
}

declare dso_local i32 @toosmall(i8*) #1

declare dso_local i64 @windres_get_16(i32*, i64*, i32) #1

declare dso_local i32* @get_unicode(i32*, i64*, i32, i32*) #1

declare dso_local i32 @fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
