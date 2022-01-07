; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_assemble_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_assemble_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { i32, i32 }

@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_varpool_node*)* @cgraph_varpool_assemble_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_varpool_assemble_decl(%struct.cgraph_varpool_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_varpool_node*, align 8
  %4 = alloca i32, align 4
  store %struct.cgraph_varpool_node* %0, %struct.cgraph_varpool_node** %3, align 8
  %5 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %6 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @TREE_ASM_WRITTEN(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %1
  %12 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %13 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DECL_EXTERNAL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @VAR_DECL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DECL_HAS_VALUE_EXPR_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @assemble_variable(i32 %30, i32 0, i32 1, i32 0)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @TREE_ASM_WRITTEN(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %25, %16, %11, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @TREE_ASM_WRITTEN(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_HAS_VALUE_EXPR_P(i32) #1

declare dso_local i32 @assemble_variable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
