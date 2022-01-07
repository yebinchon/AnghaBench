; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_update_inlined_to_pointers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-optimize.c_update_inlined_to_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__, %struct.cgraph_edge* }
%struct.TYPE_2__ = type { %struct.cgraph_node* }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, %struct.cgraph_node*)* @update_inlined_to_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_inlined_to_pointers(%struct.cgraph_node* %0, %struct.cgraph_node* %1) #0 {
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %4, align 8
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i32 0, i32 1
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  store %struct.cgraph_edge* %8, %struct.cgraph_edge** %5, align 8
  br label %9

9:                                                ; preds = %32, %2
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %11 = icmp ne %struct.cgraph_edge* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %14 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %13, i32 0, i32 0
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %14, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %17, align 8
  %19 = icmp ne %struct.cgraph_node* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %23 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %22, i32 0, i32 0
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %23, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.cgraph_node* %21, %struct.cgraph_node** %26, align 8
  %27 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %28 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %27, i32 0, i32 0
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %28, align 8
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  call void @update_inlined_to_pointers(%struct.cgraph_node* %29, %struct.cgraph_node* %30)
  br label %31

31:                                               ; preds = %20, %12
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %34 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %33, i32 0, i32 1
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %34, align 8
  store %struct.cgraph_edge* %35, %struct.cgraph_edge** %5, align 8
  br label %9

36:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
