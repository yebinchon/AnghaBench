; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mknodes.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i8* null, align 8
@linep = common dso_local global i8* null, align 8
@linno = common dso_local global i32 0, align 4
@BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Line too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i8*, i8** @line, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @fgets(i8* %5, i32 1024, i32* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

10:                                               ; preds = %1
  %11 = load i8*, i8** @line, align 8
  store i8* %11, i8** %4, align 8
  br label %12

12:                                               ; preds = %30, %10
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 35
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %22, %17, %12
  %28 = phi i1 [ false, %17 ], [ false, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %12

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** @line, align 8
  %37 = icmp ugt i8* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 9
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ true, %38 ], [ %49, %44 ]
  br label %52

52:                                               ; preds = %50, %34
  %53 = phi i1 [ false, %34 ], [ %51, %50 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %4, align 8
  br label %34

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** @line, align 8
  store i8* %59, i8** @linep, align 8
  %60 = load i32, i32* @linno, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @linno, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** @line, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = load i32, i32* @BUFLEN, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %57
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
