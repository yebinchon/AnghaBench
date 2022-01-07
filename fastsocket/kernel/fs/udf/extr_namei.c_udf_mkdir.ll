; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.udf_inode_info = type { i32, i32 }
%struct.allocDescImpUse = type { i64 }

@EMLINK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@udf_dir_inode_operations = common dso_local global i32 0, align 4
@udf_dir_operations = common dso_local global i32 0, align 4
@FID_FILE_CHAR_DIRECTORY = common dso_local global i32 0, align 4
@FID_FILE_CHAR_PARENT = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @udf_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.udf_fileident_bh, align 8
  %9 = alloca %struct.fileIdentDesc, align 8
  %10 = alloca %struct.fileIdentDesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.udf_inode_info*, align 8
  %13 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %14)
  store %struct.udf_inode_info* %15, %struct.udf_inode_info** %12, align 8
  %16 = call i32 (...) @lock_kernel()
  %17 = load i32, i32* @EMLINK, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 4095
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %182

24:                                               ; preds = %3
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = call %struct.inode* @udf_new_inode(%struct.inode* %27, i32 %28, i32* %11)
  store %struct.inode* %29, %struct.inode** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %182

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %34)
  store %struct.udf_inode_info* %35, %struct.udf_inode_info** %13, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  store i32* @udf_dir_inode_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  store i32* @udf_dir_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %40, %struct.dentry* null, %struct.udf_fileident_bh* %8, %struct.fileIdentDesc* %9, i32* %11)
  store %struct.fileIdentDesc* %41, %struct.fileIdentDesc** %10, align 8
  %42 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %43 = icmp ne %struct.fileIdentDesc* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @mark_inode_dirty(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  br label %182

53:                                               ; preds = %33
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %65 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_lelb(i32 %66)
  %68 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %71 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 4294967295
  %75 = trunc i64 %74 to i32
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.allocDescImpUse*
  %81 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8**
  store i8* %76, i8** %83, align 8
  %84 = load i32, i32* @FID_FILE_CHAR_DIRECTORY, align 4
  %85 = load i32, i32* @FID_FILE_CHAR_PARENT, align 4
  %86 = or i32 %84, %85
  %87 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %90 = call i32 @udf_write_fi(%struct.inode* %88, %struct.fileIdentDesc* %9, %struct.fileIdentDesc* %89, %struct.udf_fileident_bh* %8, i32* null, i32* null)
  %91 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @brelse(i64 %92)
  %94 = load i32, i32* @S_IFDIR, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.inode*, %struct.inode** %7, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @S_ISGID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %53
  %106 = load i32, i32* @S_ISGID, align 4
  %107 = load %struct.inode*, %struct.inode** %7, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %53
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = call i32 @mark_inode_dirty(%struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = load %struct.dentry*, %struct.dentry** %5, align 8
  %116 = call %struct.fileIdentDesc* @udf_add_entry(%struct.inode* %114, %struct.dentry* %115, %struct.udf_fileident_bh* %8, %struct.fileIdentDesc* %9, i32* %11)
  store %struct.fileIdentDesc* %116, %struct.fileIdentDesc** %10, align 8
  %117 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %118 = icmp ne %struct.fileIdentDesc* %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %111
  %120 = load %struct.inode*, %struct.inode** %7, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = call i32 @mark_inode_dirty(%struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = call i32 @iput(%struct.inode* %124)
  br label %182

126:                                              ; preds = %111
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 2
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %136 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_lelb(i32 %137)
  %139 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.udf_inode_info*, %struct.udf_inode_info** %13, align 8
  %142 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 4294967295
  %146 = trunc i64 %145 to i32
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.allocDescImpUse*
  %152 = getelementptr inbounds %struct.allocDescImpUse, %struct.allocDescImpUse* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8**
  store i8* %147, i8** %154, align 8
  %155 = load i32, i32* @FID_FILE_CHAR_DIRECTORY, align 4
  %156 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 8
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %10, align 8
  %161 = call i32 @udf_write_fi(%struct.inode* %159, %struct.fileIdentDesc* %9, %struct.fileIdentDesc* %160, %struct.udf_fileident_bh* %8, i32* null, i32* null)
  %162 = load %struct.inode*, %struct.inode** %4, align 8
  %163 = call i32 @inc_nlink(%struct.inode* %162)
  %164 = load %struct.inode*, %struct.inode** %4, align 8
  %165 = call i32 @mark_inode_dirty(%struct.inode* %164)
  %166 = load %struct.dentry*, %struct.dentry** %5, align 8
  %167 = load %struct.inode*, %struct.inode** %7, align 8
  %168 = call i32 @d_instantiate(%struct.dentry* %166, %struct.inode* %167)
  %169 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %126
  %175 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @brelse(i64 %176)
  br label %178

178:                                              ; preds = %174, %126
  %179 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @brelse(i64 %180)
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %178, %119, %44, %32, %23
  %183 = call i32 (...) @unlock_kernel()
  %184 = load i32, i32* %11, align 4
  ret i32 %184
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.inode* @udf_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local %struct.fileIdentDesc* @udf_add_entry(%struct.inode*, %struct.dentry*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, i32*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_lelb(i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
