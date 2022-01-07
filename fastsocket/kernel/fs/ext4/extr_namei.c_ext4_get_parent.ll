; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.buffer_head = type { i32 }

@ext4_get_parent.dotdot = internal constant %struct.qstr { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 2 }, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bad inode number: %u\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ext4_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_dir_entry_2*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.buffer_head* @ext4_find_entry(%struct.TYPE_2__* %10, %struct.qstr* @ext4_get_parent.dotdot, %struct.ext4_dir_entry_2** %6)
  store %struct.buffer_head* %11, %struct.buffer_head** %7, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %13 = icmp ne %struct.buffer_head* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %2, align 8
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %6, align 8
  %20 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = call i32 @brelse(%struct.buffer_head* %23)
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ext4_valid_inum(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %18
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ext4_error(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dentry* @ERR_PTR(i32 %42)
  store %struct.dentry* %43, %struct.dentry** %2, align 8
  br label %53

44:                                               ; preds = %18
  %45 = load %struct.dentry*, %struct.dentry** %3, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ext4_iget(i32 %49, i32 %50)
  %52 = call %struct.dentry* @d_obtain_alias(i32 %51)
  store %struct.dentry* %52, %struct.dentry** %2, align 8
  br label %53

53:                                               ; preds = %44, %33, %14
  %54 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %54
}

declare dso_local %struct.buffer_head* @ext4_find_entry(%struct.TYPE_2__*, %struct.qstr*, %struct.ext4_dir_entry_2**) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_valid_inum(i32, i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @ext4_iget(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
