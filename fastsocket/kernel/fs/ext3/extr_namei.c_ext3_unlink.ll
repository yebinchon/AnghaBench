; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.dentry = type { %struct.inode*, i32 }
%struct.buffer_head = type { i32 }
%struct.ext3_dir_entry_2 = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ext3_unlink\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Deleting nonexistent file (%lu), %d\00", align 1
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ext3_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext3_dir_entry_2*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call i32 @trace_ext3_unlink_enter(%struct.inode* %11, %struct.dentry* %12)
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  %17 = call i32 @vfs_dq_init(%struct.inode* %16)
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EXT3_DELETE_TRANS_BLOCKS(i32 %21)
  %23 = call %struct.TYPE_9__* @ext3_journal_start(%struct.inode* %18, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = call i64 @IS_ERR(%struct.TYPE_9__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = call i32 @PTR_ERR(%struct.TYPE_9__* %28)
  store i32 %29, i32* %3, align 4
  br label %128

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i64 @IS_DIRSYNC(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 1
  %43 = call %struct.buffer_head* @ext3_find_entry(%struct.inode* %40, i32* %42, %struct.ext3_dir_entry_2** %9)
  store %struct.buffer_head* %43, %struct.buffer_head** %8, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %119

47:                                               ; preds = %37
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  store %struct.inode* %50, %struct.inode** %7, align 8
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %9, align 8
  %54 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %119

62:                                               ; preds = %47
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.inode*, %struct.inode** %7, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ext3_warning(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %73, i32 %76)
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %67, %62
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %9, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = call i32 @ext3_delete_entry(%struct.TYPE_9__* %81, %struct.inode* %82, %struct.ext3_dir_entry_2* %83, %struct.buffer_head* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %119

89:                                               ; preds = %80
  %90 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = call i32 @ext3_update_dx_flag(%struct.inode* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_9__* %97, %struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = call i32 @drop_nlink(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %89
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = call i32 @ext3_orphan_add(%struct.TYPE_9__* %107, %struct.inode* %108)
  br label %110

110:                                              ; preds = %106, %89
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = call i32 @ext3_mark_inode_dirty(%struct.TYPE_9__* %116, %struct.inode* %117)
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %110, %88, %61, %46
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = call i32 @ext3_journal_stop(%struct.TYPE_9__* %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  %124 = load %struct.dentry*, %struct.dentry** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @trace_ext3_unlink_exit(%struct.dentry* %124, i32 %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %119, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @trace_ext3_unlink_enter(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT3_DELETE_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext3_find_entry(%struct.inode*, i32*, %struct.ext3_dir_entry_2**) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext3_warning(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @ext3_delete_entry(%struct.TYPE_9__*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ext3_orphan_add(%struct.TYPE_9__*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @trace_ext3_unlink_exit(%struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
