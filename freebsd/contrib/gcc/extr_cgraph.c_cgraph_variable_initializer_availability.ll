; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_variable_initializer_availability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_variable_initializer_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.cgraph_varpool_node = type { i32, i32 }

@cgraph_function_flags_ready = common dso_local global i32 0, align 4
@AVAIL_NOT_AVAILABLE = common dso_local global i32 0, align 4
@AVAIL_AVAILABLE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AVAIL_OVERWRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgraph_variable_initializer_availability(%struct.cgraph_varpool_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_varpool_node*, align 8
  store %struct.cgraph_varpool_node* %0, %struct.cgraph_varpool_node** %3, align 8
  %4 = load i32, i32* @cgraph_function_flags_ready, align 4
  %5 = call i32 @gcc_assert(i32 %4)
  %6 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %7 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AVAIL_NOT_AVAILABLE, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %14 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @TREE_PUBLIC(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @AVAIL_AVAILABLE, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %22 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %23 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %21(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %29 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DECL_COMDAT(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @AVAIL_OVERWRITABLE, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27, %20
  %36 = load i32, i32* @AVAIL_AVAILABLE, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %18, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_COMDAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
