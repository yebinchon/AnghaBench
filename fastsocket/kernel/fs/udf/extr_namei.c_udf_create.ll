; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__*, i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i8* }
%struct.udf_inode_info = type { i64, i32, i32 }
%struct.allocDescImpUse = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@udf_adinicb_aops = common dso_local global i32 0, align 4
@udf_aops = common dso_local global i32 0, align 4
@udf_file_inode_operations = common dso_local global i32 0, align 4
@udf_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @udf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.udf_fileident_bh, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.fileIdentDesc, align 8
  %13 = alloca %struct.fileIdentDesc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.inode* @udf_new_inode(%struct.inode* %17, i32 %18, i32* %14)
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = call i32 (...) @unlock_kernel()
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %26)
  store %struct.udf_inode_info* %27, %struct.udf_inode_info** %15, align 8
  %28 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %29 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* @udf_adinicb_aops, i32** %36, align 8
  br label %41

37:                                               ; preds = %25
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* @udf_aops, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  store i32* @udf_file_inode_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  store i32* @udf_file_operations, i32** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @mark_inode_dirty(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %51, %struct.dentry* %52, %struct.udf_fileident_bh* %10, %struct.fileIdentDesc* %12, i32* %14)
  store %struct.fileIdentDesc* %53, %struct.fileIdentDesc** %13, align 8
  %54 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %55 = icmp ne %struct.fileIdentDesc* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %41
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = call i32 @mark_inode_dirty(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call i32 @iput(%struct.inode* %63)
  %65 = call i32 (...) @unlock_kernel()
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %126

67:                                               ; preds = %41
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %77 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_lelb(i32 %78)
  %80 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %83 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = and i64 %85, 4294967295
  %87 = trunc i64 %86 to i32
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.allocDescImpUse*
  %93 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8**
  store i8* %88, i8** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %98 = call i32 @udf_write_fi(%struct.inode* %96, %struct.fileIdentDesc* %12, %struct.fileIdentDesc* %97, %struct.udf_fileident_bh* %10, i32* null, i32* null)
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %67
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call i32 @mark_inode_dirty(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %67
  %109 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @brelse(i64 %116)
  br label %118

118:                                              ; preds = %114, %108
  %119 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @brelse(i64 %120)
  %122 = call i32 (...) @unlock_kernel()
  %123 = load %struct.dentry*, %struct.dentry** %7, align 8
  %124 = load %struct.inode*, %struct.inode** %11, align 8
  %125 = call i32 @d_instantiate(%struct.dentry* %123, %struct.inode* %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %118, %56, %22
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
