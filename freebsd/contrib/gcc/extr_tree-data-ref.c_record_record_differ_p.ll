; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_record_record_differ_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_record_record_differ_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_reference = type { i32 }

@COMPONENT_REF = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_reference*, %struct.data_reference*)* @record_record_differ_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_record_differ_p(%struct.data_reference* %0, %struct.data_reference* %1) #0 {
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
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @COMPONENT_REF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @COMPONENT_REF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  br label %24

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %38, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @COMPONENT_REF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  br label %33

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @TREE_CODE(i32 %42)
  %44 = load i64, i64* @INDIRECT_REF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @INDIRECT_REF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 0)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @TREE_OPERAND(i32 %54, i32 0)
  %56 = load %struct.data_reference*, %struct.data_reference** %4, align 8
  %57 = load %struct.data_reference*, %struct.data_reference** %5, align 8
  %58 = call i64 @ptr_ptr_may_alias_p(i32 %53, i32 %55, %struct.data_reference* %56, %struct.data_reference* %57, i32* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %60, %51, %46, %41
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DR_BASE_OBJECT(%struct.data_reference*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @ptr_ptr_may_alias_p(i32, i32, %struct.data_reference*, %struct.data_reference*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
