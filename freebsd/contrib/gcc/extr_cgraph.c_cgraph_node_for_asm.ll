; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_node_for_asm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_node_for_asm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32, %struct.cgraph_node* }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgraph_node* @cgraph_node_for_asm(i32 %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgraph_node*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %5, %struct.cgraph_node** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %8 = icmp ne %struct.cgraph_node* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @decl_assembler_name_equal(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  store %struct.cgraph_node* %17, %struct.cgraph_node** %2, align 8
  br label %24

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 1
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %21, align 8
  store %struct.cgraph_node* %22, %struct.cgraph_node** %4, align 8
  br label %6

23:                                               ; preds = %6
  store %struct.cgraph_node* null, %struct.cgraph_node** %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  ret %struct.cgraph_node* %25
}

declare dso_local i64 @decl_assembler_name_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
