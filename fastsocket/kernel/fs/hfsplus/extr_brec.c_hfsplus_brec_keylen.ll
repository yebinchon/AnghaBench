; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_brec.c_hfsplus_brec_keylen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_brec.c_hfsplus_brec_keylen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HFS_NODE_INDEX = common dso_local global i64 0, align 8
@HFS_NODE_LEAF = common dso_local global i64 0, align 8
@HFS_TREE_VARIDXKEYS = common dso_local global i32 0, align 4
@HFS_TREE_BIGKEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_brec_keylen(%struct.hfs_bnode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %9 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HFS_NODE_INDEX, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %15 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HFS_NODE_LEAF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %80

20:                                               ; preds = %13, %2
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %22 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HFS_NODE_INDEX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %28 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %26
  %36 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %37 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %6, align 4
  br label %78

42:                                               ; preds = %26, %20
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %44 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %45 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %50, 2
  %52 = sub nsw i32 %48, %51
  %53 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %43, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %80

57:                                               ; preds = %42
  %58 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %59 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HFS_TREE_BIGKEYS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %67, i32 %68)
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %57
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @hfs_bnode_read_u8(%struct.hfs_bnode* %72, i32 %73)
  %75 = or i32 %74, 1
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77, %35
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %56, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_read_u8(%struct.hfs_bnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
