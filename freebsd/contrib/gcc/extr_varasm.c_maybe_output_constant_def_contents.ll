; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_maybe_output_constant_def_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_maybe_output_constant_def_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_descriptor_tree = type { i32, i32 }

@flag_syntax_only = common dso_local global i64 0, align 8
@cfun = common dso_local global i64 0, align 8
@n_deferred_constants = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_descriptor_tree*, i32)* @maybe_output_constant_def_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_output_constant_def_contents(%struct.constant_descriptor_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.constant_descriptor_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.constant_descriptor_tree* %0, %struct.constant_descriptor_tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.constant_descriptor_tree*, %struct.constant_descriptor_tree** %3, align 8
  %8 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @XEXP(i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.constant_descriptor_tree*, %struct.constant_descriptor_tree** %3, align 8
  %12 = getelementptr inbounds %struct.constant_descriptor_tree, %struct.constant_descriptor_tree* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @flag_syntax_only, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @TREE_ASM_WRITTEN(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* @cfun, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @n_deferred_constants, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @n_deferred_constants, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @output_constant_def_contents(i32 %33)
  br label %35

35:                                               ; preds = %32, %31, %21, %16
  ret void
}

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @TREE_ASM_WRITTEN(i32) #1

declare dso_local i32 @output_constant_def_contents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
