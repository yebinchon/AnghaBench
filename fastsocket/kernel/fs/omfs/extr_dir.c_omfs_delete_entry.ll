; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_delete_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32* }
%struct.omfs_inode = type { i32 }
%struct.buffer_head = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @omfs_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_delete_entry(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omfs_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %3, align 8
  %21 = load %struct.dentry*, %struct.dentry** %2, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %2, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %15, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.inode* @omfs_get_bucket(%struct.inode* %31, i8* %32, i32 %33, i32* %14)
  %35 = bitcast %struct.inode* %34 to %struct.buffer_head*
  store %struct.buffer_head* %35, %struct.buffer_head** %8, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = icmp ne %struct.buffer_head* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %129

39:                                               ; preds = %1
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be64_to_cpu(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.inode* @omfs_scan_list(%struct.inode* %49, i32 %50, i8* %51, i32 %52, i32* %13)
  %54 = bitcast %struct.inode* %53 to %struct.buffer_head*
  store %struct.buffer_head* %54, %struct.buffer_head** %9, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = bitcast %struct.buffer_head* %55 to %struct.inode*
  %57 = call i64 @IS_ERR(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = bitcast %struct.buffer_head* %60 to %struct.inode*
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %15, align 4
  br label %125

63:                                               ; preds = %39
  %64 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.omfs_inode*
  store %struct.omfs_inode* %67, %struct.omfs_inode** %7, align 8
  %68 = load %struct.omfs_inode*, %struct.omfs_inode** %7, align 8
  %69 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = bitcast %struct.buffer_head* %71 to %struct.inode*
  %73 = call i32 @brelse(%struct.inode* %72)
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = bitcast %struct.buffer_head* %77 to %struct.inode*
  %79 = call i32 @brelse(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @OMFS_SB(i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @clus_to_blk(i32 %86, i32 %87)
  %89 = call %struct.inode* @sb_bread(i32 %82, i32 %88)
  %90 = bitcast %struct.inode* %89 to %struct.buffer_head*
  store %struct.buffer_head* %90, %struct.buffer_head** %8, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = icmp ne %struct.buffer_head* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %76
  br label %129

94:                                               ; preds = %76
  %95 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = bitcast i32* %97 to %struct.omfs_inode*
  store %struct.omfs_inode* %98, %struct.omfs_inode** %7, align 8
  %99 = load %struct.omfs_inode*, %struct.omfs_inode** %7, align 8
  %100 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %99, i32 0, i32 0
  store i32* %100, i32** %10, align 8
  br label %101

101:                                              ; preds = %94, %63
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %105 = bitcast %struct.buffer_head* %104 to %struct.inode*
  %106 = call i32 @mark_buffer_dirty(%struct.inode* %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %124

109:                                              ; preds = %101
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.inode* @omfs_iget(i32 %112, i32 %113)
  store %struct.inode* %114, %struct.inode** %4, align 8
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = call i64 @IS_ERR(%struct.inode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %109
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = call i32 @mark_inode_dirty(%struct.inode* %119)
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call i32 @iput(%struct.inode* %121)
  br label %123

123:                                              ; preds = %118, %109
  br label %124

124:                                              ; preds = %123, %101
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %124, %59
  %126 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %127 = bitcast %struct.buffer_head* %126 to %struct.inode*
  %128 = call i32 @brelse(%struct.inode* %127)
  br label %129

129:                                              ; preds = %125, %93, %38
  %130 = load i32, i32* %15, align 4
  ret i32 %130
}

declare dso_local %struct.inode* @omfs_get_bucket(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.inode* @omfs_scan_list(%struct.inode*, i32, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.inode*) #1

declare dso_local %struct.inode* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.inode*) #1

declare dso_local %struct.inode* @omfs_iget(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
