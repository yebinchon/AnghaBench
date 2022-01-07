; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lynx-nat.c_child_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lynx-nat.c_child_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@PTRACE_SINGLESTEP = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@PTRACE_SINGLESTEP_ONE = common dso_local global i32 0, align 4
@PTRACE_CONT_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ptrace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PIDGET(i32 %9)
  store i32 %10, i32* %8, align 4
  store i64 0, i64* @errno, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* @inferior_ptid, align 4
  %15 = call i32 @PIDGET(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @PTRACE_SINGLESTEP, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @PTRACE_CONT, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @PTRACE_SINGLESTEP_ONE, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @PTRACE_CONT_ONE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @target_signal_to_host(i32 %36)
  %38 = call i32 @ptrace(i32 %34, i32 %35, i32 1, i32 %37)
  %39 = load i64, i64* @errno, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  ret void
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @target_signal_to_host(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
