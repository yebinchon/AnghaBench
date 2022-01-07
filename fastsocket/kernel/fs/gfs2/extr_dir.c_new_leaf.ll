; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_new_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32, i32 }
%struct.gfs2_leaf = type { i32, i64, i32, i64, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_dirent = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.new_leaf.name = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, align 8
@GFS2_METATYPE_LF = common dso_local global i32 0, align 4
@GFS2_FORMAT_LF = common dso_local global i32 0, align 4
@GFS2_FORMAT_DE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_leaf* (%struct.inode*, %struct.buffer_head**, i32)* @new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_leaf* @new_leaf(%struct.inode* %0, %struct.buffer_head** %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_leaf*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.gfs2_leaf*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.qstr, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %8, align 8
  store i32 1, i32* %9, align 4
  %18 = bitcast %struct.qstr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.qstr* @__const.new_leaf.name to i8*), i64 16, i1 false)
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %20 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %19, i32* %10, i32* %9, i32 0, i32* null)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.gfs2_leaf* null, %struct.gfs2_leaf** %4, align 8
  br label %79

24:                                               ; preds = %3
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.buffer_head* @gfs2_meta_new(i32 %27, i32 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %12, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store %struct.gfs2_leaf* null, %struct.gfs2_leaf** %4, align 8
  br label %79

33:                                               ; preds = %24
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @GFS2_SB(%struct.inode* %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @gfs2_trans_add_unrevoke(i32 %35, i32 %36, i32 1)
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %42 = call i32 @gfs2_trans_add_meta(i32 %40, %struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %44 = load i32, i32* @GFS2_METATYPE_LF, align 4
  %45 = load i32, i32* @GFS2_FORMAT_LF, align 4
  %46 = call i32 @gfs2_metatype_set(%struct.buffer_head* %43, i32 %44, i32 %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %50, %struct.gfs2_leaf** %13, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cpu_to_be16(i32 %51)
  %53 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %54 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %56 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @GFS2_FORMAT_DE, align 4
  %58 = call i32 @cpu_to_be32(i32 %57)
  %59 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %60 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %62 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %64 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memset(i32 %65, i32 0, i32 4)
  %67 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %68 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %67, i64 1
  %69 = bitcast %struct.gfs2_leaf* %68 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %69, %struct.gfs2_dirent** %14, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, 40
  %74 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %75 = call i32 @gfs2_qstr2dirent(%struct.qstr* %15, i64 %73, %struct.gfs2_dirent* %74)
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %76, %struct.buffer_head** %77, align 8
  %78 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  store %struct.gfs2_leaf* %78, %struct.gfs2_leaf** %4, align 8
  br label %79

79:                                               ; preds = %33, %32, %23
  %80 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %4, align 8
  ret %struct.gfs2_leaf* %80
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_add_unrevoke(i32, i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @gfs2_qstr2dirent(%struct.qstr*, i64, %struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
