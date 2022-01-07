; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_find_compatible_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_find_compatible_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_compatible_field(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @TYPE_FIELDS(i64 %7)
  store i64 %8, i64* %6, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @FIELD_DECL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @fields_compatible_p(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %47

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_CHAIN(i64 %26)
  store i64 %27, i64* %6, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TYPE_VFIELD(i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @FIELD_DECL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @fields_compatible_p(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %47

45:                                               ; preds = %38, %33, %28
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %45, %43, %22
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @fields_compatible_p(i64, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_VFIELD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
