; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_free_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_free_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { %struct.et_node*, i64, %struct.et_node* }

@et_occurrences = common dso_local global i32 0, align 4
@et_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et_free_tree(%struct.et_node* %0) #0 {
  %2 = alloca %struct.et_node*, align 8
  store %struct.et_node* %0, %struct.et_node** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.et_node*, %struct.et_node** %2, align 8
  %5 = getelementptr inbounds %struct.et_node, %struct.et_node* %4, i32 0, i32 2
  %6 = load %struct.et_node*, %struct.et_node** %5, align 8
  %7 = icmp ne %struct.et_node* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load %struct.et_node*, %struct.et_node** %2, align 8
  %10 = getelementptr inbounds %struct.et_node, %struct.et_node* %9, i32 0, i32 2
  %11 = load %struct.et_node*, %struct.et_node** %10, align 8
  %12 = call i32 @et_split(%struct.et_node* %11)
  br label %3

13:                                               ; preds = %3
  %14 = load %struct.et_node*, %struct.et_node** %2, align 8
  %15 = getelementptr inbounds %struct.et_node, %struct.et_node* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.et_node*, %struct.et_node** %2, align 8
  %20 = call i32 @et_split(%struct.et_node* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @et_occurrences, align 4
  %23 = load %struct.et_node*, %struct.et_node** %2, align 8
  %24 = getelementptr inbounds %struct.et_node, %struct.et_node* %23, i32 0, i32 0
  %25 = load %struct.et_node*, %struct.et_node** %24, align 8
  %26 = call i32 @pool_free(i32 %22, %struct.et_node* %25)
  %27 = load i32, i32* @et_nodes, align 4
  %28 = load %struct.et_node*, %struct.et_node** %2, align 8
  %29 = call i32 @pool_free(i32 %27, %struct.et_node* %28)
  ret void
}

declare dso_local i32 @et_split(%struct.et_node*) #1

declare dso_local i32 @pool_free(i32, %struct.et_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
