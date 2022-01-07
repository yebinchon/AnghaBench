; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_more_specialized_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_more_specialized_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @more_specialized_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @more_specialized_class(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @TREE_TYPE(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_TYPE(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @processing_template_decl, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @processing_template_decl, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @TREE_VALUE(i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @CLASSTYPE_TI_ARGS(i64 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @CLASSTYPE_TI_ARGS(i64 %19)
  %21 = call i64 @get_class_bindings(i32 %16, i32 %18, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @TREE_VALUE(i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @CLASSTYPE_TI_ARGS(i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @CLASSTYPE_TI_ARGS(i64 %32)
  %34 = call i64 @get_class_bindings(i32 %29, i32 %31, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* @processing_template_decl, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @processing_template_decl, align 4
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @get_class_bindings(i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
