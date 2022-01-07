; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_start_event_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_start_event_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_do_one_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_event_loop() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %17
  %3 = load i32, i32* @gdb_do_one_event, align 4
  %4 = load i32, i32* @RETURN_MASK_ALL, align 4
  %5 = call i32 @catch_errors(i32 %3, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = call i32 @display_gdb_prompt(i32 0)
  br i1 true, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 (...) @after_char_processing_hook()
  br label %16

16:                                               ; preds = %14, %12
  br label %17

17:                                               ; preds = %16, %9
  br label %2

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @catch_errors(i32, i32, i8*, i32) #1

declare dso_local i32 @display_gdb_prompt(i32) #1

declare dso_local i32 @after_char_processing_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
