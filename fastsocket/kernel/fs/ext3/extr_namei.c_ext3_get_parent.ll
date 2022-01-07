; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext3_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@__const.ext3_get_parent.dotdot = private unnamed_addr constant %struct.qstr { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 2 }, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ext3_get_parent\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bad inode number: %lu\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ext3_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qstr, align 8
  %6 = alloca %struct.ext3_dir_entry_2*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %8 = bitcast %struct.qstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.qstr* @__const.ext3_get_parent.dotdot to i8*), i64 16, i1 false)
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call %struct.buffer_head* @ext3_find_entry(%struct.TYPE_2__* %11, %struct.qstr* %5, %struct.ext3_dir_entry_2** %6)
  store %struct.buffer_head* %12, %struct.buffer_head** %7, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = icmp ne %struct.buffer_head* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dentry* @ERR_PTR(i32 %17)
  store %struct.dentry* %18, %struct.dentry** %2, align 8
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %6, align 8
  %21 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = call i32 @brelse(%struct.buffer_head* %24)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ext3_valid_inum(i32 %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %19
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ext3_error(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.dentry* @ERR_PTR(i32 %43)
  store %struct.dentry* %44, %struct.dentry** %2, align 8
  br label %54

45:                                               ; preds = %19
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @ext3_iget(i32 %50, i64 %51)
  %53 = call %struct.dentry* @d_obtain_alias(i32 %52)
  store %struct.dentry* %53, %struct.dentry** %2, align 8
  br label %54

54:                                               ; preds = %45, %34, %15
  %55 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.buffer_head* @ext3_find_entry(%struct.TYPE_2__*, %struct.qstr*, %struct.ext3_dir_entry_2**) #2

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local i64 @le32_to_cpu(i32) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @ext3_valid_inum(i32, i64) #2

declare dso_local i32 @ext3_error(i32, i8*, i8*, i64) #2

declare dso_local %struct.dentry* @d_obtain_alias(i32) #2

declare dso_local i32 @ext3_iget(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
