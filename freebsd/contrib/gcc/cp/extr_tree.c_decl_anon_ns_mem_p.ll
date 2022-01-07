; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_decl_anon_ns_mem_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_decl_anon_ns_mem_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decl_anon_ns_mem_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  br label %4

4:                                                ; preds = %1, %49
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %4
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @NAMESPACE_DECL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_NAME(i64 %19)
  %21 = load i64, i64* @NULL_TREE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %50

24:                                               ; preds = %18, %13
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @TYPE_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @TYPE_NAME(i64 %29)
  %31 = call i64 @TREE_PUBLIC(i64 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %24
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @NAMESPACE_DECL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @TREE_PUBLIC(i64 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %34
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @DECL_CONTEXT(i64 %45)
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %4

50:                                               ; preds = %39, %28, %23, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TREE_PUBLIC(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
