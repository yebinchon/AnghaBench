; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_canonical_template_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_canonical_template_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_TYPE_PARM = common dso_local global i32 0, align 4
@TEMPLATE_TEMPLATE_PARM = common dso_local global i32 0, align 4
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"template-parameter-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_cxx_canonical_template_parameter(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TEMPLATE_TYPE_PARM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TEMPLATE_TEMPLATE_PARM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BOUND_TEMPLATE_TEMPLATE_PARM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TEMPLATE_TYPE_PARM_INDEX(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pp_cxx_begin_template_argument_list(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @pp_cxx_identifier(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TEMPLATE_PARM_LEVEL(i32 %28)
  %30 = call i32 @pp_wide_integer(i32* %27, i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pp_minus(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @TEMPLATE_PARM_IDX(i32 %34)
  %36 = add nsw i64 %35, 1
  %37 = call i32 @pp_wide_integer(i32* %33, i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_cxx_end_template_argument_list(i32* %38)
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TEMPLATE_TYPE_PARM_INDEX(i32) #1

declare dso_local i32 @pp_cxx_begin_template_argument_list(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_wide_integer(i32*, i64) #1

declare dso_local i64 @TEMPLATE_PARM_LEVEL(i32) #1

declare dso_local i32 @pp_minus(i32*) #1

declare dso_local i64 @TEMPLATE_PARM_IDX(i32) #1

declare dso_local i32 @pp_cxx_end_template_argument_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
