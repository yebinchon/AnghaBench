; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_sigstring_to_signum.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_trap.c_sigstring_to_signum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@sys_nsig = common dso_local global i32 0, align 4
@sys_signame = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sigstring_to_signum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigstring_to_signum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @is_number(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @atoi(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NSIG, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %14, %9
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ -1, %20 ]
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %65

28:                                               ; preds = %23
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strncasecmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %32, %28
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @sys_nsig, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i8**, i8*** @sys_signame, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i8**, i8*** @sys_signame, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strcasecmp(i8* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %47, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %36

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %56, %27, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @is_number(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
