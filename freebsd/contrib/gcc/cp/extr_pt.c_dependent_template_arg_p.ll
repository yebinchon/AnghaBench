; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_template_arg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_template_arg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dependent_template_arg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dependent_template_arg_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @processing_template_decl, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @TEMPLATE_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @TEMPLATE_TEMPLATE_PARM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %7
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @dependent_template_p(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %38

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TYPE_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @dependent_type_p(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @type_dependent_expression_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @value_dependent_expression_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %24, %17, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @dependent_template_p(i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @dependent_type_p(i32) #1

declare dso_local i64 @type_dependent_expression_p(i32) #1

declare dso_local i64 @value_dependent_expression_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
