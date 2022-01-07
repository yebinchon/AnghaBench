; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"can't convert between vector values of different size\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@VIEW_CONVERT_EXPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't convert value to a vector\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_to_vector(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @TREE_TYPE(i32 %6)
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TYPE_SIZE(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  %14 = call i32 @TYPE_SIZE(i32 %13)
  %15 = call i32 @tree_int_cst_equal(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @error_mark_node, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %9
  %21 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @build1(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2
  %26 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @error_mark_node, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %20, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
