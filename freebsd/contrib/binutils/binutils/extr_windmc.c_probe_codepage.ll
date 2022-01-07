; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_probe_codepage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_probe_codepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_UTF16 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: warning: \00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"A codepage was specified switch ,%s' and UTF16.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\09codepage settings are ignored.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Code page 0x%x is unknown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32)* @probe_codepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_codepage(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CP_UTF16, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32*, i32** %7, align 8
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CP_UTF16, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** @program_name, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* %39, i8* %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* %43, i8* %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %37, %32, %28
  %50 = load i32, i32* @CP_UTF16, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %5, align 4
  br label %76

52:                                               ; preds = %24
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CP_UTF16, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  store i32 1, i32* %58, align 4
  store i32 1, i32* %5, align 4
  br label %76

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  store i32 1252, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @unicode_is_valid_codepage(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %7, align 8
  store i32 0, i32* %75, align 4
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %57, %49
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @unicode_is_valid_codepage(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
