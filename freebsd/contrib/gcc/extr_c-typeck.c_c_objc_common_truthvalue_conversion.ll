; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_objc_common_truthvalue_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_objc_common_truthvalue_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"used array that cannot be converted to pointer where scalar is required\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"used struct type value where scalar is required\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"used union type value where scalar is required\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_objc_common_truthvalue_conversion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  %6 = call i32 @TREE_CODE(i32 %5)
  switch i32 %6, label %18 [
    i32 131, label %7
    i32 129, label %10
    i32 128, label %13
    i32 130, label %16
  ]

7:                                                ; preds = %1
  %8 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @error_mark_node, align 4
  store i32 %9, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @error_mark_node, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @error_mark_node, align 4
  store i32 %15, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = call i32 (...) @gcc_unreachable()
  br label %18

18:                                               ; preds = %1, %16
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @c_common_truthvalue_conversion(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %13, %10, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @c_common_truthvalue_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
