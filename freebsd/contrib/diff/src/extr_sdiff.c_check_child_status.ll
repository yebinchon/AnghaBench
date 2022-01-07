; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_check_child_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_check_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"subsidiary program `%s' could not be invoked\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"subsidiary program `%s' not found\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"subsidiary program `%s' failed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"subsidiary program `%s' failed (exit status %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @check_child_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_child_status(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @WIFEXITED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @WEXITSTATUS(i32 %17)
  br label %21

19:                                               ; preds = %12, %4
  %20 = load i32, i32* @INT_MAX, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 126
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 127
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0)
  br label %41

41:                                               ; preds = %35, %34
  %42 = phi i8* [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %34 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %30
  %44 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %30 ], [ %42, %41 ]
  %45 = call i8* @_(i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @error(i32 0, i32 %27, i8* %45, i8* %46, i32 %47)
  %49 = call i32 (...) @exiterr()
  br label %50

50:                                               ; preds = %43, %21
  ret void
}

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @exiterr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
