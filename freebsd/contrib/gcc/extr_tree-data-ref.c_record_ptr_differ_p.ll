; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_record_ptr_differ_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_record_ptr_differ_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@COMPONENT_REF = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*, %struct.data_reference*)* @record_ptr_differ_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_ptr_differ_p(%struct.data_reference* %0, %struct.data_reference* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.data_reference*, align 8
  %5 = alloca %struct.data_reference*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.data_reference* %0, %struct.data_reference** %4, align 8
  store %struct.data_reference* %1, %struct.data_reference** %5, align 8
  %9 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %10 = call i32 @DR_BASE_OBJECT(%struct.data_reference* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %12 = call i32 @DR_BASE_OBJECT(%struct.data_reference* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @COMPONENT_REF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %24, %18
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @COMPONENT_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TREE_OPERAND(i32 %25, i32 0)
  store i32 %26, i32* %8, align 4
  br label %19

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @INDIRECT_REF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @VAR_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TREE_OPERAND(i32 %38, i32 0)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %42 = call i64 @ptr_decl_may_alias_p(i32 %39, i32 %40, %struct.data_reference* %41, i32* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44, %37, %32
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = load i64, i64* @INDIRECT_REF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 0)
  %57 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %58 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %59 = call i64 @ptr_ptr_may_alias_p(i32 %54, i32 %56, %struct.data_reference* %57, %struct.data_reference* %58, i32* %6)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %44
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %61, %52, %47, %27
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @DR_BASE_OBJECT(%struct.data_reference*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @ptr_decl_may_alias_p(i32, i32, %struct.data_reference*, i32*) #1

declare dso_local i64 @ptr_ptr_may_alias_p(i32, i32, %struct.data_reference*, %struct.data_reference*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
