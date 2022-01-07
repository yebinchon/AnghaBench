; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_is_leaf_removable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_is_leaf_removable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, i32, i32*, i32, %struct.virtual_node* }
%struct.virtual_node = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*)* @is_leaf_removable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_leaf_removable(%struct.tree_balance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree_balance*, align 8
  %4 = alloca %struct.virtual_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %3, align 8
  %9 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %10 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %9, i32 0, i32 4
  %11 = load %struct.virtual_node*, %struct.virtual_node** %10, align 8
  store %struct.virtual_node* %11, %struct.virtual_node** %4, align 8
  %12 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %13 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %18 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = sub nsw i32 %16, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %30 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, -1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = sub nsw i32 %28, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.virtual_node*, %struct.virtual_node** %4, align 8
  %37 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %1
  %47 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.virtual_node*, %struct.virtual_node** %4, align 8
  %50 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @set_parameters(%struct.tree_balance* %47, i32 0, i32 %48, i32 %53, i32 0, i32* null, i32 -1, i32 -1)
  store i32 1, i32* %2, align 4
  br label %97

55:                                               ; preds = %1
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %60 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %65 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58, %55
  store i32 0, i32* %2, align 4
  br label %97

69:                                               ; preds = %63
  %70 = load %struct.virtual_node*, %struct.virtual_node** %4, align 8
  %71 = getelementptr inbounds %struct.virtual_node, %struct.virtual_node* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @op_unit_num(i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %78 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %81 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %7, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %69
  %87 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = load %struct.tree_balance*, %struct.tree_balance** %3, align 8
  %93 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @set_parameters(%struct.tree_balance* %87, i32 0, i32 %89, i32 %91, i32 0, i32* null, i32 %94, i32 -1)
  store i32 1, i32* %2, align 4
  br label %97

96:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %86, %68, %46
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @set_parameters(%struct.tree_balance*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @op_unit_num(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
