; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.udf_fileident_bh = type { i64, i64 }
%struct.fileIdentDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Deleting nonexistent file (%lu), %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @udf_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
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
  br label %98

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
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @udf_get_lb_pblock(i32 %37, %struct.kernel_lb_addr* %10, i32 0)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %84

44:                                               ; preds = %25
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @udf_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %62 = call i32 @udf_delete_entry(%struct.inode* %60, %struct.fileIdentDesc* %61, %struct.udf_fileident_bh* %7, %struct.fileIdentDesc* %9)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %84

66:                                               ; preds = %59
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @current_fs_time(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i32 @mark_inode_dirty(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @inode_dec_link_count(%struct.inode* %77)
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %66, %65, %43
  %85 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @brelse(i64 %92)
  br label %94

94:                                               ; preds = %90, %84
  %95 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %7, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @brelse(i64 %96)
  br label %98

98:                                               ; preds = %94, %24
  %99 = call i32 (...) @unlock_kernel()
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.fileIdentDesc* @udf_find_entry(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @udf_get_lb_pblock(i32, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @udf_debug(i8*, i64, i32) #1

declare dso_local i32 @udf_delete_entry(%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
