; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.inode* }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"udf_rmdir\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"empty directory has nlink != 2 (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @udf_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.udf_fileident_bh, align 8
  %8 = alloca %struct.fileIdentDesc*, align 8
  %9 = alloca %struct.fileIdentDesc, align 4
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @lock_kernel()
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = call %struct.fileIdentDesc* @udf_find_entry(%struct.inode* %18, i32* %20, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store %struct.fileIdentDesc* %21, %struct.fileIdentDesc** %8, align 8
  %22 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %23 = icmp ne %struct.fileIdentDesc* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %104

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lelb_to_cpu(i32 %30)
  %32 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.kernel_lb_addr* %10 to i8*
  %34 = bitcast %struct.kernel_lb_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @udf_get_lb_pblock(i32 %37, %struct.kernel_lb_addr* %10, i32 0)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %90

44:                                               ; preds = %25
  %45 = load i32, i32* @ENOTEMPTY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @empty_dir(%struct.inode* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %90

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %54 = call i32 @udf_delete_entry(%struct.inode* %52, %struct.fileIdentDesc* %53, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %90

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @udf_warning(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @clear_nlink(%struct.inode* %72)
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call i32 @inode_dec_link_count(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @current_fs_time(i32 %80)
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 4
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 4
  store i32 %81, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = call i32 @mark_inode_dirty(%struct.inode* %88)
  br label %90

90:                                               ; preds = %71, %57, %50, %43
  %91 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @brelse(i64 %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @brelse(i64 %102)
  br label %104

104:                                              ; preds = %100, %24
  %105 = call i32 (...) @unlock_kernel()
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @empty_dir(%struct.inode*) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @udf_warning(i32, i8*, i8*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
