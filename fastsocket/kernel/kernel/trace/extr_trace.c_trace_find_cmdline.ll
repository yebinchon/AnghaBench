; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_find_cmdline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_find_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"<idle>\00", align 1
@PID_MAX_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@trace_cmdline_lock = common dso_local global i32 0, align 4
@map_pid_to_cmdline = common dso_local global i32* null, align 8
@NO_CMDLINE_MAP = common dso_local global i32 0, align 4
@saved_cmdlines = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_find_cmdline(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PID_MAX_DEFAULT, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %43

18:                                               ; preds = %11
  %19 = call i32 (...) @preempt_disable()
  %20 = call i32 @__raw_spin_lock(i32* @trace_cmdline_lock)
  %21 = load i32*, i32** @map_pid_to_cmdline, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NO_CMDLINE_MAP, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i8*, i8** %4, align 8
  %31 = load i8**, i8*** @saved_cmdlines, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i8* %30, i8* %35)
  br label %40

37:                                               ; preds = %18
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcpy(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %29
  %41 = call i32 @__raw_spin_unlock(i32* @trace_cmdline_lock)
  %42 = call i32 (...) @preempt_enable()
  br label %43

43:                                               ; preds = %40, %15, %8
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
