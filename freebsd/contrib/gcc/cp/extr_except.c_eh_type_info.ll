; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_eh_type_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_eh_type_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eh_type_info(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %2, align 8
  br label %27

14:                                               ; preds = %8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @decl_is_java_type(i64 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @TREE_TYPE(i64 %19)
  %21 = call i64 @build_java_class_ref(i32 %20)
  store i64 %21, i64* %4, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @get_tinfo_decl(i64 %23)
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i64 @decl_is_java_type(i64, i32) #1

declare dso_local i64 @build_java_class_ref(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @get_tinfo_decl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
