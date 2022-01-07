; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i8* }
%struct.buffer_head = type { i64 }
%struct.logicalVolIntegrityDesc = type { i64 }
%struct.logicalVolHeaderDesc = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.buffer_head* }
%struct.allocDescImpUse = type { i64 }

@EMLINK = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @udf_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_fileident_bh, align 8
  %10 = alloca %struct.fileIdentDesc, align 8
  %11 = alloca %struct.fileIdentDesc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.logicalVolIntegrityDesc*, align 8
  %15 = alloca %struct.logicalVolHeaderDesc*, align 8
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = call i32 (...) @lock_kernel()
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 4095
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = call i32 (...) @unlock_kernel()
  %27 = load i32, i32* @EMLINK, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %146

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %30, %struct.dentry* %31, %struct.udf_fileident_bh* %9, %struct.fileIdentDesc* %10, i32* %12)
  store %struct.fileIdentDesc* %32, %struct.fileIdentDesc** %11, align 8
  %33 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %34 = icmp ne %struct.fileIdentDesc* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = call i32 (...) @unlock_kernel()
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %146

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call %struct.TYPE_9__* @UDF_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cpu_to_lelb(i32 %50)
  %52 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call %struct.TYPE_8__* @UDF_SB(%struct.TYPE_7__* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %13, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %62, label %102

62:                                               ; preds = %38
  %63 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %66, %struct.logicalVolIntegrityDesc** %14, align 8
  %67 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %14, align 8
  %68 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.logicalVolHeaderDesc*
  store %struct.logicalVolHeaderDesc* %70, %struct.logicalVolHeaderDesc** %15, align 8
  %71 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %15, align 8
  %72 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le64_to_cpu(i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 4294967295
  %78 = trunc i64 %77 to i32
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.allocDescImpUse*
  %84 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8**
  store i8* %79, i8** %86, align 8
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, 4294967295
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %62
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 16
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %92, %62
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @cpu_to_le64(i32 %96)
  %98 = load %struct.logicalVolHeaderDesc*, %struct.logicalVolHeaderDesc** %15, align 8
  %99 = getelementptr inbounds %struct.logicalVolHeaderDesc, %struct.logicalVolHeaderDesc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %101 = call i32 @mark_buffer_dirty(%struct.buffer_head* %100)
  br label %102

102:                                              ; preds = %95, %38
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %11, align 8
  %105 = call i32 @udf_write_fi(%struct.inode* %103, %struct.fileIdentDesc* %10, %struct.fileIdentDesc* %104, %struct.udf_fileident_bh* %9, i32* null, i32* null)
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call %struct.TYPE_9__* @UDF_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = call i32 @mark_inode_dirty(%struct.inode* %113)
  br label %115

115:                                              ; preds = %112, %102
  %116 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @brelse(i64 %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %9, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @brelse(i64 %127)
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call i32 @inc_nlink(%struct.inode* %129)
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = call i32 @current_fs_time(%struct.TYPE_7__* %133)
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = call i32 @mark_inode_dirty(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = call i32 @atomic_inc(i32* %140)
  %142 = load %struct.dentry*, %struct.dentry** %7, align 8
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = call i32 @d_instantiate(%struct.dentry* %142, %struct.inode* %143)
  %145 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %125, %35, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local %struct.TYPE_9__* @UDF_I(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @UDF_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @current_fs_time(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
