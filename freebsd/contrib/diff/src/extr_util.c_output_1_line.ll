; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_output_1_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_util.c_output_1_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expand_tabs = common dso_local global i32 0, align 4
@outfile = common dso_local global i32* null, align 8
@tabsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_1_line(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32, i32* @expand_tabs, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** @outfile, align 8
  %26 = call i32 @fwrite(i8* %18, i32 1, i32 %24, i32* %25)
  br label %101

27:                                               ; preds = %4
  %28 = load i32*, i32** @outfile, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %30 = load i64, i64* @tabsize, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %99, %81, %27
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %31
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %10, align 1
  %39 = zext i8 %38 to i32
  switch i32 %39, label %88 [
    i32 9, label %40
    i32 13, label %57
    i32 8, label %78
  ]

40:                                               ; preds = %35
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = urem i64 %42, %43
  %45 = sub i64 %41, %44
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %52, %40
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @putc(i8 zeroext 32, i32* %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %49, label %56

56:                                               ; preds = %52
  br label %99

57:                                               ; preds = %35
  %58 = load i8, i8* %10, align 1
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @putc(i8 zeroext %58, i32* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @fprintf(i32* %73, i8* %74, i8* %75)
  br label %77

77:                                               ; preds = %72, %67, %63, %57
  store i64 0, i64* %12, align 8
  br label %99

78:                                               ; preds = %35
  %79 = load i64, i64* %12, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %31

82:                                               ; preds = %78
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %12, align 8
  %85 = load i8, i8* %10, align 1
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @putc(i8 zeroext %85, i32* %86)
  br label %99

88:                                               ; preds = %35
  %89 = load i8, i8* %10, align 1
  %90 = call i32 @isprint(i8 zeroext %89)
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %12, align 8
  %96 = load i8, i8* %10, align 1
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @putc(i8 zeroext %96, i32* %97)
  br label %99

99:                                               ; preds = %88, %82, %77, %56
  br label %31

100:                                              ; preds = %31
  br label %101

101:                                              ; preds = %100, %17
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @putc(i8 zeroext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
