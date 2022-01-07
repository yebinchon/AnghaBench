; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_make_process_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_make_process_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Internal error, bad ttrace request made\0A\00", align 1
@TT_PROC_STOP = common dso_local global i32 0, align 4
@TT_PROC_CONTINUE = common dso_local global i32 0, align 4
@TT_PROC_GET_EVENT_MASK = common dso_local global i32 0, align 4
@TT_PROC_SET_EVENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @make_process_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_process_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @IS_TTRACE_REQ(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %20 [
    i32 129, label %11
    i32 135, label %13
    i32 134, label %15
    i32 131, label %17
    i32 130, label %19
    i32 132, label %19
    i32 128, label %19
    i32 133, label %19
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @TT_PROC_STOP, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %9
  %14 = load i32, i32* @TT_PROC_CONTINUE, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @TT_PROC_GET_EVENT_MASK, align 4
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %9
  %18 = load i32, i32* @TT_PROC_SET_EVENT_MASK, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %9, %9, %9, %9
  store i32 -1, i32* %2, align 4
  br label %22

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %19, %17, %15, %13, %11, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @IS_TTRACE_REQ(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
