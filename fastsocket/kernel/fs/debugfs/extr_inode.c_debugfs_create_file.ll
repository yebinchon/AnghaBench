; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"debugfs: creating file '%s'\0A\00", align 1
@debug_fs_type = common dso_local global i32 0, align 4
@debugfs_mount = common dso_local global i32 0, align 4
@debugfs_mount_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @simple_pin_fs(i32* @debug_fs_type, i32* @debugfs_mount, i32* @debugfs_mount_count)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %31

19:                                               ; preds = %5
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %25 = call i32 @debugfs_create_by_name(i8* %20, i32 %21, %struct.dentry* %22, %struct.dentry** %11, i8* %23, %struct.file_operations* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %29 = call i32 @simple_release_fs(i32* @debugfs_mount, i32* @debugfs_mount_count)
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %28, %18
  %32 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %32
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @simple_pin_fs(i32*, i32*, i32*) #1

declare dso_local i32 @debugfs_create_by_name(i8*, i32, %struct.dentry*, %struct.dentry**, i8*, %struct.file_operations*) #1

declare dso_local i32 @simple_release_fs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
