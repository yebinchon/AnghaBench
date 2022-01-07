; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_dir.c_bfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, %struct.TYPE_4__*, i32*, i32*, i64, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.TYPE_4__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.bfs_sb_info = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@bfs_file_inops = common dso_local global i32 0, align 4
@bfs_file_operations = common dso_local global i32 0, align 4
@bfs_aops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @bfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.bfs_sb_info*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 11
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %12, align 8
  %18 = load %struct.super_block*, %struct.super_block** %12, align 8
  %19 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %18)
  store %struct.bfs_sb_info* %19, %struct.bfs_sb_info** %13, align 8
  %20 = load %struct.super_block*, %struct.super_block** %12, align 8
  %21 = call %struct.inode* @new_inode(%struct.super_block* %20)
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %150

27:                                               ; preds = %4
  %28 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %29 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %32 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %35 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @find_first_zero_bit(i32 %33, i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %40 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %27
  %44 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %45 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call i32 @iput(%struct.inode* %47)
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %150

51:                                               ; preds = %27
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %54 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @set_bit(i64 %52, i32 %55)
  %57 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %58 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = call i32 (...) @current_fsuid()
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @S_ISGID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  br label %76

74:                                               ; preds = %51
  %75 = call i32 (...) @current_fsgid()
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %73, %70 ], [ %75, %74 ]
  %78 = load %struct.inode*, %struct.inode** %11, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 7
  store i32 %80, i32* %84, align 4
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 8
  store i32 %80, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %11, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %11, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 4
  store i32* @bfs_file_inops, i32** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %11, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  store i32* @bfs_file_operations, i32** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32* @bfs_aops, i32** %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.inode*, %struct.inode** %11, align 8
  %105 = call %struct.TYPE_6__* @BFS_I(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = call %struct.TYPE_6__* @BFS_I(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.inode*, %struct.inode** %11, align 8
  %111 = call %struct.TYPE_6__* @BFS_I(%struct.inode* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = call i32 @insert_inode_hash(%struct.inode* %113)
  %115 = load %struct.inode*, %struct.inode** %11, align 8
  %116 = call i32 @mark_inode_dirty(%struct.inode* %115)
  %117 = load %struct.super_block*, %struct.super_block** %12, align 8
  %118 = call i32 @dump_imap(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.super_block* %117)
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = load %struct.dentry*, %struct.dentry** %7, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dentry*, %struct.dentry** %7, align 8
  %125 = getelementptr inbounds %struct.dentry, %struct.dentry* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.inode*, %struct.inode** %11, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @bfs_add_entry(%struct.inode* %119, i32 %123, i32 %127, i64 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %76
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call i32 @inode_dec_link_count(%struct.inode* %135)
  %137 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %138 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %137, i32 0, i32 1
  %139 = call i32 @mutex_unlock(i32* %138)
  %140 = load %struct.inode*, %struct.inode** %11, align 8
  %141 = call i32 @iput(%struct.inode* %140)
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %5, align 4
  br label %150

143:                                              ; preds = %76
  %144 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %13, align 8
  %145 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load %struct.dentry*, %struct.dentry** %7, align 8
  %148 = load %struct.inode*, %struct.inode** %11, align 8
  %149 = call i32 @d_instantiate(%struct.dentry* %147, %struct.inode* %148)
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %143, %134, %43, %24
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local %struct.TYPE_6__* @BFS_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @dump_imap(i8*, %struct.super_block*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32, i32, i64) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
