; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_add_to_template_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_add_to_template_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @add_to_template_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_template_args(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TMPL_ARGS_DEPTH(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TMPL_ARGS_DEPTH(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %12, %13
  %15 = call i32 @make_tree_vec(i32 %14)
  store i32 %15, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TMPL_ARGS_DEPTH(i32 %18)
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @TMPL_ARGS_LEVEL(i32 %24, i32 %25)
  %27 = call i32 @SET_TMPL_ARGS_LEVEL(i32 %22, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %16

31:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @TMPL_ARGS_LEVEL(i32 %39, i32 %40)
  %42 = call i32 @SET_TMPL_ARGS_LEVEL(i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @TMPL_ARGS_DEPTH(i32) #1

declare dso_local i32 @make_tree_vec(i32) #1

declare dso_local i32 @SET_TMPL_ARGS_LEVEL(i32, i32, i32) #1

declare dso_local i32 @TMPL_ARGS_LEVEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
