; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_showstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_file_showstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.3o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_showstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %75, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 4294967295
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %7, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %76

19:                                               ; preds = %11
  br label %29

20:                                               ; preds = %8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %6, align 8
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %76

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  store i8 %28, i8* %7, align 1
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 32
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 126
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fputc(i8 signext %38, i32* %39)
  br label %75

41:                                               ; preds = %33, %29
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @fputc(i8 signext 92, i32* %42)
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %67 [
    i32 7, label %46
    i32 8, label %49
    i32 12, label %52
    i32 10, label %55
    i32 13, label %58
    i32 9, label %61
    i32 11, label %64
  ]

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @fputc(i8 signext 97, i32* %47)
  br label %74

49:                                               ; preds = %41
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fputc(i8 signext 98, i32* %50)
  br label %74

52:                                               ; preds = %41
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fputc(i8 signext 102, i32* %53)
  br label %74

55:                                               ; preds = %41
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fputc(i8 signext 110, i32* %56)
  br label %74

58:                                               ; preds = %41
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputc(i8 signext 114, i32* %59)
  br label %74

61:                                               ; preds = %41
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @fputc(i8 signext 116, i32* %62)
  br label %74

64:                                               ; preds = %41
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fputc(i8 signext 118, i32* %65)
  br label %74

67:                                               ; preds = %41
  %68 = load i32*, i32** %4, align 8
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = call i32 @fprintf(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %72)
  br label %74

74:                                               ; preds = %67, %64, %61, %58, %55, %52, %49, %46
  br label %75

75:                                               ; preds = %74, %37
  br label %8

76:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
