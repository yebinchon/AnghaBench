; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_shellexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_shellexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: not found\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellexec(i8** %0, i8** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32* @strchr(i8* %14, i8 signext 47)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = call i32 @tryexec(i8* %20, i8** %21, i8** %22)
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %11, align 4
  br label %64

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %60, %25
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @padvance(i8** %7, i8** %10, i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = call i32 @tryexec(i8* %41, i8** %42, i8** %43)
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @ENOTDIR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %52, %48, %40
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ENOEXEC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %63

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %37, %33
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @stunalloc(i8* %61)
  br label %27

63:                                               ; preds = %58, %27
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ENOTDIR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %64
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @errorwithstatus(i32 127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %84

77:                                               ; preds = %68
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @strerror(i32 %81)
  %83 = call i32 (i32, i8*, i8*, ...) @errorwithstatus(i32 126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @tryexec(i8*, i8**, i8**) #1

declare dso_local i8* @padvance(i8**, i8**, i8*) #1

declare dso_local i32 @stunalloc(i8*) #1

declare dso_local i32 @errorwithstatus(i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
