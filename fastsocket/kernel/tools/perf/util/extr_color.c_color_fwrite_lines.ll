; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_color_fwrite_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_color.c_color_fwrite_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_COLOR_RESET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @color_fwrite_lines(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @fwrite(i8* %15, i64 %16, i32 1, i32* %17)
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i8* @memchr(i8* %26, i8 signext 10, i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @fputs(i8* %33, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  br label %49

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i64 [ %46, %41 ], [ %48, %47 ]
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @fwrite(i8* %38, i64 %50, i32 1, i32* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** @PERF_COLOR_RESET, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @fputs(i8* %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49, %32
  store i32 -1, i32* %5, align 4
  br label %81

60:                                               ; preds = %54, %25
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %81

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @fputc(i8 signext 10, i32* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  br label %81

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8*, i8** %9, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %9, align 8
  br label %22

80:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %68, %63, %59, %14
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i64 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
