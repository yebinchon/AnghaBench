; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ext4_symlink_inode_operations = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ext4_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %16, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENAMETOOLONG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %140

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %137, %26
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i64 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_5__* %31)
  %33 = load i64, i64* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 5
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_5__* %38)
  %40 = add nsw i64 %35, %39
  %41 = call %struct.inode* @ext4_journal_start(%struct.inode* %28, i64 %40)
  store %struct.inode* %41, %struct.inode** %8, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i64 @IS_ERR(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.inode* %46)
  store i32 %47, i32* %4, align 4
  br label %140

48:                                               ; preds = %27
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i64 @IS_DIRSYNC(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @ext4_handle_sync(%struct.inode* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load i32, i32* @S_IFLNK, align 4
  %59 = load i32, i32* @S_IRWXUGO, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = call %struct.inode* @ext4_new_inode(%struct.inode* %56, %struct.inode* %57, i32 %60, i32* %62, i32 0)
  store %struct.inode* %63, %struct.inode** %9, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i32 @PTR_ERR(%struct.inode* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = call i64 @IS_ERR(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %124

70:                                               ; preds = %55
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %72, 4
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  store i32* @ext4_symlink_inode_operations, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call i32 @ext4_set_aops(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @__page_symlink(%struct.inode* %79, i8* %80, i32 %81, i32 1)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %74
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @clear_nlink(%struct.inode* %86)
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call i32 @unlock_new_inode(%struct.inode* %88)
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call i32 @ext4_mark_inode_dirty(%struct.inode* %90, %struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call i32 @iput(%struct.inode* %93)
  br label %124

95:                                               ; preds = %74
  br label %113

96:                                               ; preds = %70
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %99 = call i32 @ext4_clear_inode_flag(%struct.inode* %97, i32 %98)
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  store i32* @ext4_fast_symlink_inode_operations, i32** %101, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = bitcast i32* %104 to i8*
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @memcpy(i8* %105, i8* %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %96, %95
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = load %struct.dentry*, %struct.dentry** %6, align 8
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @ext4_add_nondir(%struct.inode* %120, %struct.dentry* %121, %struct.inode* %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %113, %85, %69
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = call i32 @ext4_journal_stop(%struct.inode* %125)
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @ENOSPC, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = call i64 @ext4_should_retry_alloc(%struct.TYPE_5__* %134, i32* %12)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %27

138:                                              ; preds = %131, %124
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %45, %23
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_5__*) #1

declare dso_local i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_new_inode(%struct.inode*, %struct.inode*, i32, i32*, i32) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @__page_symlink(%struct.inode*, i8*, i32, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_add_nondir(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
