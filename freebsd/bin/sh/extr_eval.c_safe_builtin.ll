; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_safe_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_safe_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPORTCMD = common dso_local global i32 0, align 4
@TRAPCMD = common dso_local global i32 0, align 4
@ULIMITCMD = common dso_local global i32 0, align 4
@UMASKCMD = common dso_local global i32 0, align 4
@SETCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @safe_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_builtin(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @safe_builtin_always(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %95

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EXPORTCMD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TRAPCMD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ULIMITCMD, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UMASKCMD, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24, %20, %16, %12
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br label %42

42:                                               ; preds = %34, %31
  %43 = phi i1 [ false, %31 ], [ %41, %34 ]
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i1 [ true, %28 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %95

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SETCMD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %91, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load i8**, i8*** %7, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %89

73:                                               ; preds = %65, %57
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 111
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %81, %73, %65, %54
  %90 = phi i1 [ false, %73 ], [ false, %65 ], [ false, %54 ], [ %88, %81 ]
  br label %91

91:                                               ; preds = %89, %51
  %92 = phi i1 [ true, %51 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91, %44, %11
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @safe_builtin_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
