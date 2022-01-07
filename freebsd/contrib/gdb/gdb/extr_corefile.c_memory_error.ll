; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_memory_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_memory_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot access memory at address \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error accessing memory address \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c": %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memory_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ui_file*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.ui_file* (...) @mem_fileopen()
  store %struct.ui_file* %6, %struct.ui_file** %5, align 8
  %7 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %8 = call i32 @make_cleanup_ui_file_delete(%struct.ui_file* %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %14 = call i32 @fprintf_unfiltered(%struct.ui_file* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %17 = call i32 @print_address_numeric(i32 %15, i32 1, %struct.ui_file* %16)
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %20 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %23 = call i32 @print_address_numeric(i32 %21, i32 1, %struct.ui_file* %22)
  %24 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @safe_strerror(i32 %25)
  %27 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %18, %12
  %29 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %30 = call i32 @error_stream(%struct.ui_file* %29)
  ret void
}

declare dso_local %struct.ui_file* @mem_fileopen(...) #1

declare dso_local i32 @make_cleanup_ui_file_delete(%struct.ui_file*) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @error_stream(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
