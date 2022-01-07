; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.inode = type { i32 }
%struct.fileIdentDesc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.udf_fileident_bh = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@__const.udf_get_parent.dotdot = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 2 }, align 8
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @udf_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @udf_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kernel_lb_addr, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr, align 8
  %7 = alloca %struct.fileIdentDesc, align 4
  %8 = alloca %struct.udf_fileident_bh, align 8
  %9 = alloca %struct.kernel_lb_addr, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %10 = bitcast %struct.qstr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.qstr* @__const.udf_get_parent.dotdot to i8*), i64 16, i1 false)
  %11 = call i32 (...) @lock_kernel()
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @udf_find_entry(%struct.TYPE_4__* %14, %struct.qstr* %6, %struct.udf_fileident_bh* %8, %struct.fileIdentDesc* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %52

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @brelse(i64 %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @brelse(i64 %30)
  %32 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lelb_to_cpu(i32 %34)
  %36 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.kernel_lb_addr* %4 to i8*
  %38 = bitcast %struct.kernel_lb_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.inode* @udf_iget(i32 %43, %struct.kernel_lb_addr* %4)
  store %struct.inode* %44, %struct.inode** %5, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  br label %52

48:                                               ; preds = %28
  %49 = call i32 (...) @unlock_kernel()
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call %struct.dentry* @d_obtain_alias(%struct.inode* %50)
  store %struct.dentry* %51, %struct.dentry** %2, align 8
  br label %57

52:                                               ; preds = %47, %17
  %53 = call i32 (...) @unlock_kernel()
  %54 = load i32, i32* @EACCES, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.dentry* @ERR_PTR(i32 %55)
  store %struct.dentry* %56, %struct.dentry** %2, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lock_kernel(...) #2

declare dso_local i32 @udf_find_entry(%struct.TYPE_4__*, %struct.qstr*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*) #2

declare dso_local i32 @brelse(i64) #2

declare dso_local i32 @lelb_to_cpu(i32) #2

declare dso_local %struct.inode* @udf_iget(i32, %struct.kernel_lb_addr*) #2

declare dso_local i32 @unlock_kernel(...) #2

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #2

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
