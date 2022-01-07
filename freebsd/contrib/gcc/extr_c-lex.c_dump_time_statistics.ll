; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_dump_time_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_dump_time_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_fileinfo = type { i32 }

@input_filename = common dso_local global i32 0, align 4
@body_time = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\0A******\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"header files (total)\00", align 1
@header_time = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"main file (total)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ratio = %g : 1\0A\00", align 1
@file_info_tree = common dso_local global i32 0, align 4
@dump_one_header = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_time_statistics() #0 {
  %1 = alloca %struct.c_fileinfo*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @input_filename, align 4
  %4 = call %struct.c_fileinfo* @get_fileinfo(i32 %3)
  store %struct.c_fileinfo* %4, %struct.c_fileinfo** %1, align 8
  %5 = call i32 (...) @get_run_time()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @body_time, align 4
  %8 = sub nsw i32 %6, %7
  %9 = load %struct.c_fileinfo*, %struct.c_fileinfo** %1, align 8
  %10 = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @header_time, align 4
  %16 = call i32 @print_time(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @body_time, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @print_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @header_time, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @body_time, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %23, %27
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), double %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @file_info_tree, align 4
  %33 = load i32, i32* @dump_one_header, align 4
  %34 = call i32 @splay_tree_foreach(i32 %32, i32 %33, i32 0)
  ret void
}

declare dso_local %struct.c_fileinfo* @get_fileinfo(i32) #1

declare dso_local i32 @get_run_time(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_time(i8*, i32) #1

declare dso_local i32 @splay_tree_foreach(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
