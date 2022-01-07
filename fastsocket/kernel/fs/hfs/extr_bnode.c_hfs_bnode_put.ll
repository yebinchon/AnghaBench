; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_bnode.c_hfs_bnode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32*, i32, i32, %struct.hfs_btree* }
%struct.hfs_btree = type { i32, i32, i32 }

@DBG_BNODE_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"put_node(%d:%d): %d\0A\00", align 1
@HFS_BNODE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_put(%struct.hfs_bnode* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  %3 = alloca %struct.hfs_btree*, align 8
  %4 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %2, align 8
  %5 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %6 = icmp ne %struct.hfs_bnode* %5, null
  br i1 %6, label %7, label %87

7:                                                ; preds = %1
  %8 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %9 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %8, i32 0, i32 4
  %10 = load %struct.hfs_btree*, %struct.hfs_btree** %9, align 8
  store %struct.hfs_btree* %10, %struct.hfs_btree** %3, align 8
  %11 = load i32, i32* @DBG_BNODE_REFS, align 4
  %12 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %13 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %12, i32 0, i32 4
  %14 = load %struct.hfs_btree*, %struct.hfs_btree** %13, align 8
  %15 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %18 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %21 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %20, i32 0, i32 2
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 @dprint(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %25 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %24, i32 0, i32 2
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %32 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %31, i32 0, i32 2
  %33 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %34 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %33, i32 0, i32 1
  %35 = call i32 @atomic_dec_and_lock(i32* %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  br label %87

38:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %42 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %47 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %57 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mark_page_accessed(i32 %62)
  br label %64

64:                                               ; preds = %55, %54
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %39

67:                                               ; preds = %39
  %68 = load i32, i32* @HFS_BNODE_DELETED, align 4
  %69 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %70 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %69, i32 0, i32 0
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %75 = call i32 @hfs_bnode_unhash(%struct.hfs_bnode* %74)
  %76 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %77 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %80 = call i32 @hfs_bmap_free(%struct.hfs_bnode* %79)
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %82 = call i32 @hfs_bnode_free(%struct.hfs_bnode* %81)
  br label %87

83:                                               ; preds = %67
  %84 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %85 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %37, %73, %83, %1
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @mark_page_accessed(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hfs_bnode_unhash(%struct.hfs_bnode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hfs_bmap_free(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_free(%struct.hfs_bnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
