; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32, %struct.nfs_open_dir_context*, %struct.TYPE_14__ }
%struct.nfs_open_dir_context = type { i64 }
%struct.TYPE_14__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_17__, %struct.TYPE_16__*, %struct.inode* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i64, i64*, i32, %struct.file* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NFS: readdir(%s/%s) starting at cookie %llu\0A\00", align 1
@NFSIOS_VFSGETDENTS = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@ETOOSMALL = common dso_local global i32 0, align 4
@NFS_INO_ADVISE_RDPLUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"NFS: readdir(%s/%s) returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @nfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.nfs_open_dir_context*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %10, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 2
  %22 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %21, align 8
  store %struct.nfs_open_dir_context* %22, %struct.nfs_open_dir_context** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @FILE, align 4
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dfprintk(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = load i32, i32* @NFSIOS_VFSGETDENTS, align 4
  %41 = call i32 @nfs_inc_stats(%struct.inode* %39, i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %43 = call i32 @memset(%struct.TYPE_18__* %42, i32 0, i32 48)
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 5
  store %struct.file* %44, %struct.file** %46, align 8
  %47 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %11, align 8
  %48 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  store i64* %48, i64** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call %struct.TYPE_12__* @NFS_PROTO(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = call i64 @nfs_use_readdirplus(%struct.inode* %57, %struct.file* %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dentry*, %struct.dentry** %7, align 8
  %66 = call i32 @nfs_block_sillyrename(%struct.dentry* %65)
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %3
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i64 @nfs_attribute_cache_expired(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %3
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nfs_revalidate_mapping(%struct.inode* %76, i32 %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %158

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %151, %85
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %88 = call i32 @readdir_search_pagecache(%struct.TYPE_18__* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @EBADCOOKIE, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @uncached_readdir(%struct.TYPE_18__* %105, i8* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %151

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %99, %93
  br label %157

114:                                              ; preds = %86
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @ETOOSMALL, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32, i32* @NFS_INO_ADVISE_RDPLUS, align 4
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call %struct.TYPE_13__* @NFS_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = call i32 @clear_bit(i32 %125, i32* %128)
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = call i32 @nfs_zap_caches(%struct.inode* %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  br label %151

138:                                              ; preds = %119, %114
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %157

142:                                              ; preds = %138
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @nfs_do_filldir(%struct.TYPE_18__* %143, i8* %144, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %157

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %124, %111
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = xor i1 %155, true
  br i1 %156, label %86, label %157

157:                                              ; preds = %151, %149, %141, %113
  br label %158

158:                                              ; preds = %157, %84
  %159 = load %struct.dentry*, %struct.dentry** %7, align 8
  %160 = call i32 @nfs_unblock_sillyrename(%struct.dentry* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i32, i32* @FILE, align 4
  %166 = load %struct.dentry*, %struct.dentry** %7, align 8
  %167 = getelementptr inbounds %struct.dentry, %struct.dentry* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dentry*, %struct.dentry** %7, align 8
  %173 = getelementptr inbounds %struct.dentry, %struct.dentry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @dfprintk(i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %171, i32 %175, i32 %176)
  %178 = load i32, i32* %12, align 4
  ret i32 %178
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i64 @nfs_use_readdirplus(%struct.inode*, %struct.file*) #1

declare dso_local i32 @nfs_block_sillyrename(%struct.dentry*) #1

declare dso_local i64 @nfs_attribute_cache_expired(%struct.inode*) #1

declare dso_local i32 @nfs_revalidate_mapping(%struct.inode*, i32) #1

declare dso_local i32 @readdir_search_pagecache(%struct.TYPE_18__*) #1

declare dso_local i32 @uncached_readdir(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @nfs_do_filldir(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @nfs_unblock_sillyrename(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
