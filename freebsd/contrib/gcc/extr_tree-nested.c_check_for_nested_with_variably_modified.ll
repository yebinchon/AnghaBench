; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_check_for_nested_with_variably_modified.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_check_for_nested_with_variably_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i64, %struct.cgraph_node*, %struct.cgraph_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @check_for_nested_with_variably_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_nested_with_variably_modified(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.cgraph_node* @cgraph_node(i64 %8)
  store %struct.cgraph_node* %9, %struct.cgraph_node** %6, align 8
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %10, i32 0, i32 2
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %11, align 8
  store %struct.cgraph_node* %12, %struct.cgraph_node** %6, align 8
  br label %13

13:                                               ; preds = %44, %2
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %15 = icmp ne %struct.cgraph_node* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %18 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @DECL_ARGUMENTS(i64 %19)
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %32, %16
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @TREE_TYPE(i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @variably_modified_type_p(i32 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %49

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TREE_CHAIN(i64 %33)
  store i64 %34, i64* %7, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @check_for_nested_with_variably_modified(i64 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %49

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %46 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %45, i32 0, i32 1
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %46, align 8
  store %struct.cgraph_node* %47, %struct.cgraph_node** %6, align 8
  br label %13

48:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cgraph_node* @cgraph_node(i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @variably_modified_type_p(i32, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
