; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_comp_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-ref.c_comp_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_node = type { i64, i64, i64, i64 }

@BTRFS_TREE_BLOCK_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_SHARED_BLOCK_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_EXTENT_DATA_REF_KEY = common dso_local global i64 0, align 8
@BTRFS_SHARED_DATA_REF_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node*)* @comp_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_entry(%struct.btrfs_delayed_ref_node* %0, %struct.btrfs_delayed_ref_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_delayed_ref_node*, align 8
  %5 = alloca %struct.btrfs_delayed_ref_node*, align 8
  store %struct.btrfs_delayed_ref_node* %0, %struct.btrfs_delayed_ref_node** %4, align 8
  store %struct.btrfs_delayed_ref_node* %1, %struct.btrfs_delayed_ref_node** %5, align 8
  %6 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %121

23:                                               ; preds = %14
  %24 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %121

34:                                               ; preds = %28, %23
  %35 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %121

40:                                               ; preds = %34
  %41 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %121

46:                                               ; preds = %40
  %47 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %51 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %121

55:                                               ; preds = %46
  %56 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %121

64:                                               ; preds = %55
  %65 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %66 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %69 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %121

73:                                               ; preds = %64
  %74 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %78 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %121

82:                                               ; preds = %73
  %83 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %84 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BTRFS_TREE_BLOCK_REF_KEY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %90 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BTRFS_SHARED_BLOCK_REF_KEY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88, %82
  %95 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %96 = call i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node* %95)
  %97 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %98 = call i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node* %97)
  %99 = call i32 @comp_tree_refs(i32 %96, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %121

100:                                              ; preds = %88
  %101 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %102 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BTRFS_EXTENT_DATA_REF_KEY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %108 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BTRFS_SHARED_DATA_REF_KEY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106, %100
  %113 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %4, align 8
  %114 = call i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node* %113)
  %115 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %5, align 8
  %116 = call i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node* %115)
  %117 = call i32 @comp_data_refs(i32 %114, i32 %116)
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118
  %120 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %112, %94, %81, %72, %63, %54, %45, %39, %33, %22, %13
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @comp_tree_refs(i32, i32) #1

declare dso_local i32 @btrfs_delayed_node_to_tree_ref(%struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @comp_data_refs(i32, i32) #1

declare dso_local i32 @btrfs_delayed_node_to_data_ref(%struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
