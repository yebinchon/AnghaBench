; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_add_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.omfs_inode = type { i8*, i8*, i64 }
%struct.buffer_head = type { i32* }

@OMFS_NAMELEN = common dso_local global i64 0, align 8
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*)* @omfs_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.omfs_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.buffer_head* @omfs_get_bucket(%struct.inode* %27, i8* %28, i32 %29, i32* %13)
  store %struct.buffer_head* %30, %struct.buffer_head** %10, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %32 = icmp ne %struct.buffer_head* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %112

34:                                               ; preds = %2
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to i8**
  store i8** %41, i8*** %12, align 8
  %42 = load i8**, i8*** %12, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @be64_to_cpu(i8* %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be64(i32 %47)
  %49 = load i8**, i8*** %12, align 8
  store i8* %48, i8** %49, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = call i32 @mark_buffer_dirty(%struct.buffer_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OMFS_SB(i32 %59)
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clus_to_blk(i32 %60, i32 %63)
  %65 = call %struct.buffer_head* @sb_bread(i32 %56, i32 %64)
  store %struct.buffer_head* %65, %struct.buffer_head** %10, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %67 = icmp ne %struct.buffer_head* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %34
  br label %112

69:                                               ; preds = %34
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to %struct.omfs_inode*
  store %struct.omfs_inode* %73, %struct.omfs_inode** %9, align 8
  %74 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %75 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @memcpy(i64 %76, i8* %77, i32 %78)
  %80 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %81 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i64, i64* @OMFS_NAMELEN, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = call i32 @memset(i64 %85, i32 0, i64 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @cpu_to_be64(i32 %91)
  %93 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %94 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_be64(i32 %97)
  %99 = load %struct.omfs_inode*, %struct.omfs_inode** %9, align 8
  %100 = getelementptr inbounds %struct.omfs_inode, %struct.omfs_inode* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %102 = call i32 @mark_buffer_dirty(%struct.buffer_head* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  %105 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call i32 @mark_inode_dirty(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = call i32 @mark_inode_dirty(%struct.inode* %110)
  store i32 0, i32* %3, align 4
  br label %115

112:                                              ; preds = %68, %33
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %69
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.buffer_head* @omfs_get_bucket(%struct.inode*, i8*, i32, i32*) #1

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i32 @clus_to_blk(i32, i32) #1

declare dso_local i32 @OMFS_SB(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
