; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_unnest_nesting_tree_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-nested.c_unnest_nesting_tree_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nesting_info = type { i32 }
%struct.cgraph_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nesting_info*)* @unnest_nesting_tree_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unnest_nesting_tree_1(%struct.nesting_info* %0) #0 {
  %2 = alloca %struct.nesting_info*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  store %struct.nesting_info* %0, %struct.nesting_info** %2, align 8
  %4 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %5 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.cgraph_node* @cgraph_node(i32 %6)
  store %struct.cgraph_node* %7, %struct.cgraph_node** %3, align 8
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %14 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cgraph_node* @cgraph_node(i32 %15)
  %17 = call i32 @cgraph_unnest_node(%struct.cgraph_node* %16)
  %18 = load %struct.nesting_info*, %struct.nesting_info** %2, align 8
  %19 = getelementptr inbounds %struct.nesting_info, %struct.nesting_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cgraph_finalize_function(i32 %20, i32 1)
  br label %22

22:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.cgraph_node* @cgraph_node(i32) #1

declare dso_local i32 @cgraph_unnest_node(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_finalize_function(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
