; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_fprint_dummy_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_fprint_dummy_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { i32, i32, i32, i32, i32, i32, i32, %struct.dummy_frame* }
%struct.ui_file = type { i32 }

@dummy_frame_stack = common dso_local global %struct.dummy_frame* null, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" pc=0x%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" fp=0x%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" sp=0x%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" top=0x%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" id=\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" call_lo=0x%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" call_hi=0x%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*)* @fprint_dummy_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprint_dummy_frames(%struct.ui_file* %0) #0 {
  %2 = alloca %struct.ui_file*, align 8
  %3 = alloca %struct.dummy_frame*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %2, align 8
  %4 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %4, %struct.dummy_frame** %3, align 8
  br label %5

5:                                                ; preds = %59, %1
  %6 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %7 = icmp ne %struct.dummy_frame* %6, null
  br i1 %7, label %8, label %63

8:                                                ; preds = %5
  %9 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %10 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %11 = call i32 @gdb_print_host_address(%struct.dummy_frame* %9, %struct.ui_file* %10)
  %12 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %13 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %15 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %16 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @paddr(i32 %17)
  %19 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %21 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %22 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @paddr(i32 %23)
  %25 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %27 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %28 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @paddr(i32 %29)
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %33 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %34 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @paddr(i32 %35)
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %39 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %41 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %42 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fprint_frame_id(%struct.ui_file* %40, i32 %43)
  %45 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %46 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %47 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @paddr(i32 %48)
  %50 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %52 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %53 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @paddr(i32 %54)
  %56 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  %57 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %58 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %8
  %60 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  %61 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %60, i32 0, i32 7
  %62 = load %struct.dummy_frame*, %struct.dummy_frame** %61, align 8
  store %struct.dummy_frame* %62, %struct.dummy_frame** %3, align 8
  br label %5

63:                                               ; preds = %5
  ret void
}

declare dso_local i32 @gdb_print_host_address(%struct.dummy_frame*, %struct.ui_file*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local i32 @fprint_frame_id(%struct.ui_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
