; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_obj_coff_ln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_obj_coff_ln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@def_symbol_in_progress = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c".ln pseudo-op inside .def/.endef: ignored.\00", align 1
@current_lineno_sym = common dso_local global i32* null, align 8
@frag_now = common dso_local global i32 0, align 4
@listing = external dso_local global i32, align 4
@coff_line_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @obj_coff_ln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obj_coff_ln(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** @def_symbol_in_progress, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @as_warn(i32 %10)
  %12 = call i32 (...) @demand_empty_rest_of_line()
  br label %45

13:                                               ; preds = %6, %1
  %14 = call i32 (...) @get_absolute_expression()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** @current_lineno_sym, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @new_logical_line(i8* null, i32 %22)
  br label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @frag_now, align 4
  %26 = call i32 (...) @frag_now_fix()
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @add_lineno(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @listing, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @coff_line_base, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @listing_source_line(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = call i32 (...) @demand_empty_rest_of_line()
  br label %45

45:                                               ; preds = %43, %9
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @new_logical_line(i8*, i32) #1

declare dso_local i32 @add_lineno(i32, i32, i32) #1

declare dso_local i32 @frag_now_fix(...) #1

declare dso_local i32 @listing_source_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
