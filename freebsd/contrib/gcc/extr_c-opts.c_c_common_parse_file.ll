; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i64, i32 (i32, i32)* }

@.str = private unnamed_addr constant [51 x i8] c"YYDEBUG was not defined at build time, -dy ignored\00", align 1
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@this_input_filename = common dso_local global i32 0, align 4
@num_in_fnames = common dso_local global i32 0, align 4
@parse_in = common dso_local global i32 0, align 4
@in_fnames = common dso_local global i32* null, align 8
@yydebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_common_parse_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @warning(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %55, %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load i32, i32* @this_input_filename, align 4
  %19 = call i32 %17(i32 0, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = call i32 (...) @finish_options()
  %22 = call i32 (...) @pch_init()
  %23 = call i32 (...) @push_file_scope()
  %24 = call i32 (...) @c_parse_file()
  %25 = call i32 (...) @finish_file()
  %26 = call i32 (...) @pop_file_scope()
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = call i32 %34(i32 0)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %3, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @num_in_fnames, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %56

42:                                               ; preds = %36
  %43 = load i32, i32* @parse_in, align 4
  %44 = call i32 @cpp_undef_all(i32 %43)
  %45 = load i32, i32* @parse_in, align 4
  %46 = load i32*, i32** @in_fnames, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cpp_read_main_file(i32 %45, i32 %50)
  store i32 %51, i32* @this_input_filename, align 4
  %52 = load i32, i32* @this_input_filename, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %56

55:                                               ; preds = %42
  br label %9

56:                                               ; preds = %54, %41
  ret void
}

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @finish_options(...) #1

declare dso_local i32 @pch_init(...) #1

declare dso_local i32 @push_file_scope(...) #1

declare dso_local i32 @c_parse_file(...) #1

declare dso_local i32 @finish_file(...) #1

declare dso_local i32 @pop_file_scope(...) #1

declare dso_local i32 @cpp_undef_all(i32) #1

declare dso_local i32 @cpp_read_main_file(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
