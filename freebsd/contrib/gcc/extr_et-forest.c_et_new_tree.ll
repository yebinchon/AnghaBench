; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_new_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_new_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { i32*, i32, i32*, i32*, i32*, i32*, i8* }

@et_nodes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"et_node pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.et_node* @et_new_tree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.et_node*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @et_nodes, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i64 @create_alloc_pool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 56, i32 300)
  store i64 %7, i64* @et_nodes, align 8
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i64, i64* @et_nodes, align 8
  %10 = call %struct.et_node* @pool_alloc(i64 %9)
  store %struct.et_node* %10, %struct.et_node** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.et_node*, %struct.et_node** %3, align 8
  %13 = getelementptr inbounds %struct.et_node, %struct.et_node* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.et_node*, %struct.et_node** %3, align 8
  %15 = getelementptr inbounds %struct.et_node, %struct.et_node* %14, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = load %struct.et_node*, %struct.et_node** %3, align 8
  %17 = getelementptr inbounds %struct.et_node, %struct.et_node* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.et_node*, %struct.et_node** %3, align 8
  %19 = getelementptr inbounds %struct.et_node, %struct.et_node* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.et_node*, %struct.et_node** %3, align 8
  %21 = getelementptr inbounds %struct.et_node, %struct.et_node* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.et_node*, %struct.et_node** %3, align 8
  %23 = call i32 @et_new_occ(%struct.et_node* %22)
  %24 = load %struct.et_node*, %struct.et_node** %3, align 8
  %25 = getelementptr inbounds %struct.et_node, %struct.et_node* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.et_node*, %struct.et_node** %3, align 8
  %27 = getelementptr inbounds %struct.et_node, %struct.et_node* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.et_node*, %struct.et_node** %3, align 8
  ret %struct.et_node* %28
}

declare dso_local i64 @create_alloc_pool(i8*, i32, i32) #1

declare dso_local %struct.et_node* @pool_alloc(i64) #1

declare dso_local i32 @et_new_occ(%struct.et_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
