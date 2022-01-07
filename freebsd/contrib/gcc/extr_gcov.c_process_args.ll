; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_process_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov.c_process_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"abcfhlno:puv\00", align 1
@options = common dso_local global i32 0, align 4
@flag_all_blocks = common dso_local global i32 0, align 4
@flag_branches = common dso_local global i32 0, align 4
@flag_counts = common dso_local global i32 0, align 4
@flag_function_summary = common dso_local global i32 0, align 4
@flag_long_names = common dso_local global i32 0, align 4
@flag_gcov_file = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@object_directory = common dso_local global i32 0, align 4
@flag_preserve_paths = common dso_local global i32 0, align 4
@flag_unconditional = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @process_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* @options, align 4
  %10 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %28 [
    i32 97, label %14
    i32 98, label %15
    i32 99, label %16
    i32 102, label %17
    i32 104, label %18
    i32 108, label %20
    i32 110, label %21
    i32 111, label %22
    i32 112, label %24
    i32 117, label %25
    i32 118, label %26
  ]

14:                                               ; preds = %12
  store i32 1, i32* @flag_all_blocks, align 4
  br label %30

15:                                               ; preds = %12
  store i32 1, i32* @flag_branches, align 4
  br label %30

16:                                               ; preds = %12
  store i32 1, i32* @flag_counts, align 4
  br label %30

17:                                               ; preds = %12
  store i32 1, i32* @flag_function_summary, align 4
  br label %30

18:                                               ; preds = %12
  %19 = call i32 @print_usage(i32 0)
  br label %20

20:                                               ; preds = %12, %18
  store i32 1, i32* @flag_long_names, align 4
  br label %30

21:                                               ; preds = %12
  store i32 0, i32* @flag_gcov_file, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load i32, i32* @optarg, align 4
  store i32 %23, i32* @object_directory, align 4
  br label %30

24:                                               ; preds = %12
  store i32 1, i32* @flag_preserve_paths, align 4
  br label %30

25:                                               ; preds = %12
  store i32 1, i32* @flag_unconditional, align 4
  br label %30

26:                                               ; preds = %12
  %27 = call i32 (...) @print_version()
  br label %28

28:                                               ; preds = %12, %26
  %29 = call i32 @print_usage(i32 1)
  br label %30

30:                                               ; preds = %28, %25, %24, %22, %21, %20, %17, %16, %15, %14
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* @optind, align 4
  ret i32 %32
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @print_usage(i32) #1

declare dso_local i32 @print_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
