; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_initial_elimination_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_initial_elimination_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@current_function_is_leaf = common dso_local global i32 0, align 4
@current_frame_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current_function_outgoing_args_size = common dso_local global i64 0, align 8
@current_function_pretend_args_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia64_initial_elimination_offset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_frame_size()
  %7 = call i32 @ia64_compute_frame_size(i32 %6)
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %48 [
    i32 130, label %9
    i32 131, label %35
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %32 [
    i32 129, label %11
    i32 128, label %24
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @current_function_is_leaf, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %23

17:                                               ; preds = %11
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %19 = load i64, i64* @current_function_outgoing_args_size, align 8
  %20 = sub nsw i64 %18, %19
  %21 = sub nsw i64 %20, 16
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %17, %14
  br label %34

24:                                               ; preds = %9
  %25 = load i32, i32* @current_function_is_leaf, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @current_function_outgoing_args_size, align 8
  %30 = add nsw i64 16, %29
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %28, %27
  br label %34

32:                                               ; preds = %9
  %33 = call i32 (...) @gcc_unreachable()
  br label %34

34:                                               ; preds = %32, %31, %23
  br label %50

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 128, label %40
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @current_function_pretend_args_size, align 8
  %39 = sub nsw i64 16, %38
  store i64 %39, i64* %5, align 8
  br label %47

40:                                               ; preds = %35
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_frame_info, i32 0, i32 0), align 8
  %42 = add nsw i64 %41, 16
  %43 = load i64, i64* @current_function_pretend_args_size, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %5, align 8
  br label %47

45:                                               ; preds = %35
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %45, %40, %37
  br label %50

48:                                               ; preds = %2
  %49 = call i32 (...) @gcc_unreachable()
  br label %50

50:                                               ; preds = %48, %47, %34
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @ia64_compute_frame_size(i32) #1

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
