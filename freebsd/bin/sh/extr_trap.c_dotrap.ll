; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_dotrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_dotrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackmark = type { i32 }

@in_dotrap = common dso_local global i32 0, align 4
@pendingsig = common dso_local global i64 0, align 8
@pendingsig_waitcmd = common dso_local global i64 0, align 8
@NSIG = common dso_local global i32 0, align 4
@gotsig = common dso_local global i64* null, align 8
@trap = common dso_local global i64* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@ignore_sigchld = common dso_local global i32 0, align 4
@evalskip = common dso_local global i32 0, align 4
@skipcount = common dso_local global i32 0, align 4
@last_trapsig = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotrap() #0 {
  %1 = alloca %struct.stackmark, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @in_dotrap, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @in_dotrap, align 4
  br label %8

8:                                                ; preds = %79, %0
  store i64 0, i64* @pendingsig, align 8
  store i64 0, i64* @pendingsig_waitcmd, align 8
  store i32 1, i32* %2, align 4
  br label %9

9:                                                ; preds = %71, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NSIG, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  %14 = load i64*, i64** @gotsig, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %13
  %21 = load i64*, i64** @gotsig, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** @trap, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %20
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @SIGCHLD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ignore_sigchld, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @ignore_sigchld, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* @evalskip, align 4
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @skipcount, align 4
  store i32 %40, i32* %5, align 4
  store i32 0, i32* @evalskip, align 4
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* @last_trapsig, align 4
  %42 = load i32, i32* @exitstatus, align 4
  store i32 %42, i32* %3, align 4
  %43 = call i32 @setstackmark(%struct.stackmark* %1)
  %44 = load i64*, i64** @trap, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @stsavestr(i64 %48)
  %50 = call i32 @evalstring(i32 %49, i32 0)
  %51 = call i32 @popstackmark(%struct.stackmark* %1)
  %52 = load i32, i32* @evalskip, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %38
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* @evalskip, align 4
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* @skipcount, align 4
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* @exitstatus, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @SIGCHLD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @ignore_sigchld, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @ignore_sigchld, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %20
  br label %74

70:                                               ; preds = %13
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %9

74:                                               ; preds = %69, %9
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @NSIG, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %80

79:                                               ; preds = %74
  br label %8

80:                                               ; preds = %78
  %81 = load i32, i32* @in_dotrap, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @in_dotrap, align 4
  ret void
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i32 @evalstring(i32, i32) #1

declare dso_local i32 @stsavestr(i64) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
