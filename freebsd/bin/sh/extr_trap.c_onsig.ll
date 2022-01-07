; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_onsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_onsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@trap = common dso_local global i8** null, align 8
@suppressint = common dso_local global i64 0, align 8
@in_dotrap = common dso_local global i32 0, align 4
@SET_PENDING_INT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@pendingsig_waitcmd = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@ignore_sigchld = common dso_local global i32 0, align 4
@gotsig = common dso_local global i32* null, align 8
@pendingsig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @onsig(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SIGINT, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i8**, i8*** @trap, align 8
  %8 = load i32, i32* @SIGINT, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8*, i8** %7, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load i64, i64* @suppressint, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @in_dotrap, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @SET_PENDING_INT, align 4
  br label %23

21:                                               ; preds = %16, %13
  %22 = call i32 (...) @onint()
  br label %23

23:                                               ; preds = %21, %19
  br label %65

24:                                               ; preds = %6, %1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SIGINT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SIGQUIT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* @pendingsig_waitcmd, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i8**, i8*** @trap, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load i8**, i8*** @trap, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SIGCHLD, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @ignore_sigchld, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55, %51
  %59 = load i32*, i32** @gotsig, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* @pendingsig, align 4
  %64 = load i32, i32* %2, align 4
  store i32 %64, i32* @pendingsig_waitcmd, align 4
  br label %65

65:                                               ; preds = %23, %58, %55, %41, %34
  ret void
}

declare dso_local i32 @onint(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
