; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_type_to_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_type_to_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@void_type_class = common dso_local global i32 0, align 4
@integer_type_class = common dso_local global i32 0, align 4
@enumeral_type_class = common dso_local global i32 0, align 4
@boolean_type_class = common dso_local global i32 0, align 4
@pointer_type_class = common dso_local global i32 0, align 4
@reference_type_class = common dso_local global i32 0, align 4
@offset_type_class = common dso_local global i32 0, align 4
@real_type_class = common dso_local global i32 0, align 4
@complex_type_class = common dso_local global i32 0, align 4
@function_type_class = common dso_local global i32 0, align 4
@method_type_class = common dso_local global i32 0, align 4
@record_type_class = common dso_local global i32 0, align 4
@union_type_class = common dso_local global i32 0, align 4
@string_type_class = common dso_local global i32 0, align 4
@array_type_class = common dso_local global i32 0, align 4
@lang_type_class = common dso_local global i32 0, align 4
@no_type_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @type_to_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_to_class(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  switch i32 %5, label %44 [
    i32 128, label %6
    i32 138, label %8
    i32 140, label %10
    i32 142, label %12
    i32 134, label %14
    i32 130, label %16
    i32 135, label %18
    i32 132, label %20
    i32 141, label %22
    i32 139, label %24
    i32 136, label %26
    i32 131, label %28
    i32 129, label %30
    i32 133, label %30
    i32 143, label %32
    i32 137, label %42
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @void_type_class, align 4
  store i32 %7, i32* %2, align 4
  br label %46

8:                                                ; preds = %1
  %9 = load i32, i32* @integer_type_class, align 4
  store i32 %9, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load i32, i32* @enumeral_type_class, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i32, i32* @boolean_type_class, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* @pointer_type_class, align 4
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* @reference_type_class, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load i32, i32* @offset_type_class, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* @real_type_class, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load i32, i32* @complex_type_class, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load i32, i32* @function_type_class, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load i32, i32* @method_type_class, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %1
  %29 = load i32, i32* @record_type_class, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %1, %1
  %31 = load i32, i32* @union_type_class, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TYPE_STRING_FLAG(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @string_type_class, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @array_type_class, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load i32, i32* @lang_type_class, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @no_type_class, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %40, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_STRING_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
