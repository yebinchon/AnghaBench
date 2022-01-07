; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i8* }
%struct.udf_inode_info = type { i32, i64, i32 }
%struct.allocDescImpUse = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @udf_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.udf_fileident_bh, align 8
  %12 = alloca %struct.fileIdentDesc, align 8
  %13 = alloca %struct.fileIdentDesc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @old_valid_dev(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %121

22:                                               ; preds = %4
  %23 = call i32 (...) @lock_kernel()
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.inode* @udf_new_inode(%struct.inode* %26, i32 %27, i32* %14)
  store %struct.inode* %28, %struct.inode** %10, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %118

32:                                               ; preds = %22
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %33)
  store %struct.udf_inode_info* %34, %struct.udf_inode_info** %15, align 8
  %35 = call i32 (...) @current_fsuid()
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @init_special_inode(%struct.inode* %38, i32 %39, i32 %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %42, %struct.dentry* %43, %struct.udf_fileident_bh* %11, %struct.fileIdentDesc* %12, i32* %14)
  store %struct.fileIdentDesc* %44, %struct.fileIdentDesc** %13, align 8
  %45 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %46 = icmp ne %struct.fileIdentDesc* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %32
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = call i32 @mark_inode_dirty(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = call i32 @iput(%struct.inode* %54)
  %56 = call i32 (...) @unlock_kernel()
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %121

58:                                               ; preds = %32
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %68 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cpu_to_lelb(i32 %69)
  %71 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %74 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 4294967295
  %78 = trunc i64 %77 to i32
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %12, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.allocDescImpUse*
  %84 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8**
  store i8* %79, i8** %86, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %89 = call i32 @udf_write_fi(%struct.inode* %87, %struct.fileIdentDesc* %12, %struct.fileIdentDesc* %88, %struct.udf_fileident_bh* %11, i32* null, i32* null)
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %58
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call i32 @mark_inode_dirty(%struct.inode* %97)
  br label %99

99:                                               ; preds = %96, %58
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call i32 @mark_inode_dirty(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @brelse(i64 %109)
  br label %111

111:                                              ; preds = %107, %99
  %112 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %11, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @brelse(i64 %113)
  %115 = load %struct.dentry*, %struct.dentry** %7, align 8
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @d_instantiate(%struct.dentry* %115, %struct.inode* %116)
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %111, %31
  %119 = call i32 (...) @unlock_kernel()
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %47, %19
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

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
