; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_get_cramfs_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_get_cramfs_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32*, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.cramfs_inode = type { i32, i32, i32, i32 }

@cramfs_iget5_test = common dso_local global i32 0, align 4
@cramfs_iget5_set = common dso_local global i32 0, align 4
@get_cramfs_inode.zerotime = internal global %struct.timespec zeroinitializer, align 4
@I_NEW = common dso_local global i32 0, align 4
@generic_ro_fops = common dso_local global i32 0, align 4
@cramfs_aops = common dso_local global i32 0, align 4
@cramfs_dir_inode_operations = common dso_local global i32 0, align 4
@cramfs_directory_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.cramfs_inode*)* @get_cramfs_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_cramfs_inode(%struct.super_block* %0, %struct.cramfs_inode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cramfs_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.cramfs_inode* %1, %struct.cramfs_inode** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %8 = call i32 @CRAMINO(%struct.cramfs_inode* %7)
  %9 = load i32, i32* @cramfs_iget5_test, align 4
  %10 = load i32, i32* @cramfs_iget5_set, align 4
  %11 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %12 = call %struct.inode* @iget5_locked(%struct.super_block* %6, i32 %8, i32 %9, i32 %10, %struct.cramfs_inode* %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %15, label %111

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I_NEW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %15
  %23 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %24 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %29 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %34 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %39 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sdiv i32 %41, 512
  %43 = add nsw i32 %42, 1
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %47 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 9
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 7
  %57 = bitcast %struct.timespec* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 4 bitcast (%struct.timespec* @get_cramfs_inode.zerotime to i8*), i64 4, i1 false)
  %58 = bitcast %struct.timespec* %54 to i8*
  %59 = bitcast %struct.timespec* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 8 %59, i64 4, i1 false)
  %60 = bitcast %struct.timespec* %52 to i8*
  %61 = bitcast %struct.timespec* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @S_ISREG(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %22
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 6
  store i32* @generic_ro_fops, i32** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* @cramfs_aops, i32** %72, align 8
  br label %108

73:                                               ; preds = %22
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 5
  store i32* @cramfs_dir_inode_operations, i32** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 6
  store i32* @cramfs_directory_operations, i32** %83, align 8
  br label %107

84:                                               ; preds = %73
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @S_ISLNK(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 5
  store i32* @page_symlink_inode_operations, i32** %92, align 8
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32* @cramfs_aops, i32** %95, align 8
  br label %106

96:                                               ; preds = %84
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %102 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @old_decode_dev(i32 %103)
  %105 = call i32 @init_special_inode(%struct.inode* %97, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %96, %90
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %67
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = call i32 @unlock_new_inode(%struct.inode* %109)
  br label %111

111:                                              ; preds = %108, %15, %2
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %112
}

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.cramfs_inode*) #1

declare dso_local i32 @CRAMINO(%struct.cramfs_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
