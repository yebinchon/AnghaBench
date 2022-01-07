; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_type_no_quals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_build_type_no_quals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_type_no_quals(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @TREE_CODE(i8* %4)
  switch i32 %5, label %24 [
    i32 129, label %6
    i32 128, label %15
  ]

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @TREE_TYPE(i8* %7)
  %9 = call i8* @build_type_no_quals(i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @TYPE_MODE(i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i8* %12)
  %14 = call i8* @build_pointer_type_for_mode(i8* %9, i32 %11, i32 %13)
  store i8* %14, i8** %2, align 8
  br label %27

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @TREE_TYPE(i8* %16)
  %18 = call i8* @build_type_no_quals(i8* %17)
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @TYPE_MODE(i8* %19)
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i8* %21)
  %23 = call i8* @build_reference_type_for_mode(i8* %18, i32 %20, i32 %22)
  store i8* %23, i8** %2, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @TYPE_MAIN_VARIANT(i8* %25)
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %15, %6
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i8* @build_pointer_type_for_mode(i8*, i32, i32) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @TYPE_MODE(i8*) #1

declare dso_local i32 @TYPE_REF_CAN_ALIAS_ALL(i8*) #1

declare dso_local i8* @build_reference_type_for_mode(i8*, i32, i32) #1

declare dso_local i8* @TYPE_MAIN_VARIANT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
