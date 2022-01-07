; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_current_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_current_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No registers.\00", align 1
@target_has_stack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"No stack.\00", align 1
@target_has_memory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"No memory.\00", align 1
@current_frame = common dso_local global %struct.frame_info* null, align 8
@current_regcache = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@unwind_to_current_frame = common dso_local global i32 0, align 4
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @get_current_frame() #0 {
  %1 = alloca %struct.frame_info*, align 8
  %2 = load i32, i32* @target_has_registers, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @target_has_stack, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* @target_has_memory, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 @error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.frame_info*, %struct.frame_info** @current_frame, align 8
  %18 = icmp eq %struct.frame_info* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* @current_regcache, align 4
  %21 = call %struct.frame_info* @create_sentinel_frame(i32 %20)
  store %struct.frame_info* %21, %struct.frame_info** %1, align 8
  %22 = load i32, i32* @uiout, align 4
  %23 = load i32, i32* @unwind_to_current_frame, align 4
  %24 = load %struct.frame_info*, %struct.frame_info** %1, align 8
  %25 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %26 = call i64 @catch_exceptions(i32 %22, i32 %23, %struct.frame_info* %24, i32* null, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load %struct.frame_info*, %struct.frame_info** %1, align 8
  store %struct.frame_info* %29, %struct.frame_info** @current_frame, align 8
  br label %30

30:                                               ; preds = %28, %19
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.frame_info*, %struct.frame_info** @current_frame, align 8
  ret %struct.frame_info* %32
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.frame_info* @create_sentinel_frame(i32) #1

declare dso_local i64 @catch_exceptions(i32, i32, %struct.frame_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
