; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_eval_spec_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_eval_spec_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_function = type { i8* (i32, i8**)* }

@.str = private unnamed_addr constant [27 x i8] c"unknown spec function '%s'\00", align 1
@argbuf_index = common dso_local global i32 0, align 4
@argbuf_length = common dso_local global i32 0, align 4
@argbuf = common dso_local global i8** null, align 8
@arg_going = common dso_local global i32 0, align 4
@delete_this_arg = common dso_local global i32 0, align 4
@this_is_output_file = common dso_local global i32 0, align 4
@this_is_library_file = common dso_local global i32 0, align 4
@input_from_pipe = common dso_local global i32 0, align 4
@suffix_subst = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"error in args to spec function '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @eval_spec_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eval_spec_function(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spec_function*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.spec_function* @lookup_spec_function(i8* %16)
  store %struct.spec_function* %17, %struct.spec_function** %5, align 8
  %18 = load %struct.spec_function*, %struct.spec_function** %5, align 8
  %19 = icmp eq %struct.spec_function* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @argbuf_index, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @argbuf_length, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i8**, i8*** @argbuf, align 8
  store i8** %26, i8*** %9, align 8
  %27 = load i32, i32* @arg_going, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @delete_this_arg, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @this_is_output_file, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @this_is_library_file, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @input_from_pipe, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** @suffix_subst, align 8
  store i8* %32, i8** %15, align 8
  %33 = call i32 (...) @alloc_args()
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @do_spec_2(i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %23
  %41 = load %struct.spec_function*, %struct.spec_function** %5, align 8
  %42 = getelementptr inbounds %struct.spec_function, %struct.spec_function* %41, i32 0, i32 0
  %43 = load i8* (i32, i8**)*, i8* (i32, i8**)** %42, align 8
  %44 = load i32, i32* @argbuf_index, align 4
  %45 = load i8**, i8*** @argbuf, align 8
  %46 = call i8* %43(i32 %44, i8** %45)
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* @argbuf_index, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* @argbuf_length, align 4
  %49 = load i8**, i8*** @argbuf, align 8
  %50 = call i32 @free(i8** %49)
  %51 = load i8**, i8*** %9, align 8
  store i8** %51, i8*** @argbuf, align 8
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* @arg_going, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* @delete_this_arg, align 4
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* @this_is_output_file, align 4
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* @this_is_library_file, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* @input_from_pipe, align 4
  %57 = load i8*, i8** %15, align 8
  store i8* %57, i8** @suffix_subst, align 8
  %58 = load i8*, i8** %6, align 8
  ret i8* %58
}

declare dso_local %struct.spec_function* @lookup_spec_function(i8*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @alloc_args(...) #1

declare dso_local i64 @do_spec_2(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
