; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_shrink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, %struct.radix_tree_node* }
%struct.radix_tree_node = type { i32, i8** }

@RADIX_TREE_INDIRECT_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_tree_root*)* @radix_tree_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radix_tree_shrink(%struct.radix_tree_root* %0) #0 {
  %2 = alloca %struct.radix_tree_root*, align 8
  %3 = alloca %struct.radix_tree_node*, align 8
  %4 = alloca i8*, align 8
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %2, align 8
  br label %5

5:                                                ; preds = %70, %1
  %6 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %7 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %5
  %11 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %12 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %11, i32 0, i32 1
  %13 = load %struct.radix_tree_node*, %struct.radix_tree_node** %12, align 8
  store %struct.radix_tree_node* %13, %struct.radix_tree_node** %3, align 8
  %14 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %15 = call i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %21 = call %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node* %20)
  store %struct.radix_tree_node* %21, %struct.radix_tree_node** %3, align 8
  %22 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %23 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  br label %73

27:                                               ; preds = %10
  %28 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %29 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %73

35:                                               ; preds = %27
  %36 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %37 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  %41 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %42 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %4, align 8
  %47 = call i8* @ptr_to_indirect(i8* %46)
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast i8* %49 to %struct.radix_tree_node*
  %51 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %52 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %51, i32 0, i32 1
  store %struct.radix_tree_node* %50, %struct.radix_tree_node** %52, align 8
  %53 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %54 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.radix_tree_root*, %struct.radix_tree_root** %2, align 8
  %58 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load i64, i64* @RADIX_TREE_INDIRECT_PTR, align 8
  %63 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %64 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = bitcast i8** %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %62
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %61, %48
  %71 = load %struct.radix_tree_node*, %struct.radix_tree_node** %3, align 8
  %72 = call i32 @radix_tree_node_free(%struct.radix_tree_node* %71)
  br label %5

73:                                               ; preds = %34, %26, %5
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radix_tree_is_indirect_ptr(%struct.radix_tree_node*) #1

declare dso_local %struct.radix_tree_node* @indirect_to_ptr(%struct.radix_tree_node*) #1

declare dso_local i8* @ptr_to_indirect(i8*) #1

declare dso_local i32 @radix_tree_node_free(%struct.radix_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
