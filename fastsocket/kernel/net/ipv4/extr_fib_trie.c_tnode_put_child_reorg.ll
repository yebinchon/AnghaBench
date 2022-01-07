; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_tnode_put_child_reorg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_tnode_put_child_reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, %struct.node**, i32, i32 }
%struct.node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tnode*, i32, %struct.node*, i32)* @tnode_put_child_reorg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnode_put_child_reorg(%struct.tnode* %0, i32 %1, %struct.node* %2, i32 %3) #0 {
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  store %struct.tnode* %0, %struct.tnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.node* %2, %struct.node** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tnode*, %struct.tnode** %5, align 8
  %12 = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 1
  %13 = load %struct.node**, %struct.node*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.node*, %struct.node** %13, i64 %15
  %17 = load %struct.node*, %struct.node** %16, align 8
  store %struct.node* %17, %struct.node** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tnode*, %struct.tnode** %5, align 8
  %20 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = icmp sge i32 %18, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.node*, %struct.node** %7, align 8
  %27 = icmp eq %struct.node* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.node*, %struct.node** %9, align 8
  %30 = icmp ne %struct.node* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.tnode*, %struct.tnode** %5, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %48

36:                                               ; preds = %28, %4
  %37 = load %struct.node*, %struct.node** %7, align 8
  %38 = icmp ne %struct.node* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.node*, %struct.node** %9, align 8
  %41 = icmp eq %struct.node* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.tnode*, %struct.tnode** %5, align 8
  %44 = getelementptr inbounds %struct.tnode, %struct.tnode* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %39, %36
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.tnode*, %struct.tnode** %5, align 8
  %53 = load %struct.node*, %struct.node** %9, align 8
  %54 = call i32 @tnode_full(%struct.tnode* %52, %struct.node* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.tnode*, %struct.tnode** %5, align 8
  %57 = load %struct.node*, %struct.node** %7, align 8
  %58 = call i32 @tnode_full(%struct.tnode* %56, %struct.node* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.tnode*, %struct.tnode** %5, align 8
  %66 = getelementptr inbounds %struct.tnode, %struct.tnode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  br label %81

69:                                               ; preds = %61, %55
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.tnode*, %struct.tnode** %5, align 8
  %77 = getelementptr inbounds %struct.tnode, %struct.tnode* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %72, %69
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.node*, %struct.node** %7, align 8
  %83 = icmp ne %struct.node* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.node*, %struct.node** %7, align 8
  %86 = load %struct.tnode*, %struct.tnode** %5, align 8
  %87 = call i32 @node_set_parent(%struct.node* %85, %struct.tnode* %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.tnode*, %struct.tnode** %5, align 8
  %90 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 1
  %91 = load %struct.node**, %struct.node*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.node*, %struct.node** %91, i64 %93
  %95 = load %struct.node*, %struct.node** %94, align 8
  %96 = load %struct.node*, %struct.node** %7, align 8
  %97 = call i32 @rcu_assign_pointer(%struct.node* %95, %struct.node* %96)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tnode_full(%struct.tnode*, %struct.node*) #1

declare dso_local i32 @node_set_parent(%struct.node*, %struct.tnode*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.node*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
