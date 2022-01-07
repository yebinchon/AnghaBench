; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for inode 0x%lx.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_FILE_NAME = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Inode 0x%lx does not have a file name attribute.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ntfs_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ntfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32* @NTFS_I(%struct.inode* %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @map_mft_record(i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %2, align 8
  br label %134

29:                                               ; preds = %1
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_11__* @ntfs_attr_get_search_ctx(i32* %30, i32* %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @unmap_mft_record(i32* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.dentry* @ERR_PTR(i32 %43)
  store %struct.dentry* %44, %struct.dentry** %2, align 8
  br label %134

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %118, %83, %45
  %47 = load i32, i32* @AT_FILE_NAME, align 4
  %48 = load i32, i32* @CASE_SENSITIVE, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i32 @ntfs_attr_lookup(i32 %47, i32* null, i32 0, i32 %48, i32 0, i32* null, i32 0, %struct.TYPE_11__* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @unmap_mft_record(i32* %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntfs_error(i32 %66, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %54
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.dentry* @ERR_PTR(i32 %72)
  store %struct.dentry* %73, %struct.dentry** %2, align 8
  br label %134

74:                                               ; preds = %46
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %8, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %46

84:                                               ; preds = %74
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = bitcast %struct.TYPE_13__* %85 to i32*
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %86, i64 %93
  %95 = bitcast i32* %94 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %9, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = bitcast %struct.TYPE_12__* %96 to i32*
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %97, i64 %104
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = bitcast %struct.TYPE_13__* %106 to i32*
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  %114 = icmp ugt i32* %105, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %84
  br label %46

119:                                              ; preds = %84
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @MREF_LE(i32 %122)
  store i64 %123, i64* %10, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @unmap_mft_record(i32* %126)
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @ntfs_iget(i32 %130, i64 %131)
  %133 = call %struct.dentry* @d_obtain_alias(i32 %132)
  store %struct.dentry* %133, %struct.dentry** %2, align 8
  br label %134

134:                                              ; preds = %119, %71, %39, %26
  %135 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %135
}

declare dso_local i32* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @ntfs_debug(i8*, i32) #1

declare dso_local i32* @map_mft_record(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local %struct.TYPE_11__* @ntfs_attr_get_search_ctx(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unmap_mft_record(i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_11__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @MREF_LE(i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @ntfs_iget(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
