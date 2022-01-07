; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_argv.c_writeargv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_argv.c_writeargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOS = common dso_local global i8 0, align 1
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeargv(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %74

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %68, %12
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %59, %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @EOS, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %8, align 1
  %30 = load i8, i8* %8, align 1
  %31 = call i64 @ISSPACE(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37, %33, %27
  %46 = load i64, i64* @EOF, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @fputc(i8 signext 92, i32* %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %72

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i64, i64* @EOF, align 8
  %54 = load i8, i8* %8, align 1
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @fputc(i8 signext %54, i32* %55)
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %72

59:                                               ; preds = %52
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  br label %20

62:                                               ; preds = %20
  %63 = load i64, i64* @EOF, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @fputc(i8 signext 10, i32* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %72

68:                                               ; preds = %62
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %4, align 8
  br label %13

71:                                               ; preds = %13
  br label %72

72:                                               ; preds = %71, %67, %58, %50
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
