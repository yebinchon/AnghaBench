; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_redirect_edge_callee.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_redirect_edge_callee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge* }
%struct.cgraph_node = type { %struct.cgraph_edge* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %0, %struct.cgraph_node* %1) #0 {
  %3 = alloca %struct.cgraph_edge*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %3, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %4, align 8
  %5 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %6 = call i32 @cgraph_edge_remove_callee(%struct.cgraph_edge* %5)
  %7 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %7, i32 0, i32 2
  store %struct.cgraph_edge* null, %struct.cgraph_edge** %8, align 8
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %10 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i32 0, i32 0
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %10, align 8
  %12 = icmp ne %struct.cgraph_edge* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %15, i32 0, i32 0
  %17 = load %struct.cgraph_edge*, %struct.cgraph_edge** %16, align 8
  %18 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %17, i32 0, i32 2
  store %struct.cgraph_edge* %14, %struct.cgraph_edge** %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i32 0, i32 0
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %21, align 8
  %23 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %24 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %23, i32 0, i32 1
  store %struct.cgraph_edge* %22, %struct.cgraph_edge** %24, align 8
  %25 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %27 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %26, i32 0, i32 0
  store %struct.cgraph_edge* %25, %struct.cgraph_edge** %27, align 8
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %29 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %30 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %29, i32 0, i32 0
  store %struct.cgraph_node* %28, %struct.cgraph_node** %30, align 8
  ret void
}

declare dso_local i32 @cgraph_edge_remove_callee(%struct.cgraph_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
