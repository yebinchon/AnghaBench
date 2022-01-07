; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_fprint_frame_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_fprint_frame_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"UNKNOWN_FRAME\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"NORMAL_FRAME\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DUMMY_FRAME\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SIGTRAMP_FRAME\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"<unknown type>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_file*, i32)* @fprint_frame_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fprint_frame_type(%struct.ui_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 130, label %9
    i32 131, label %12
    i32 129, label %15
  ]

6:                                                ; preds = %2
  %7 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %8 = call i32 @fprintf_unfiltered(%struct.ui_file* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %21

9:                                                ; preds = %2
  %10 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %11 = call i32 @fprintf_unfiltered(%struct.ui_file* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %14 = call i32 @fprintf_unfiltered(%struct.ui_file* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %17 = call i32 @fprintf_unfiltered(%struct.ui_file* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %20 = call i32 @fprintf_unfiltered(%struct.ui_file* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
