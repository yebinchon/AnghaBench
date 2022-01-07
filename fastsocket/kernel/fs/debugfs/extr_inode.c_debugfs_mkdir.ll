; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

@S_IRWXUGO = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i8*, %struct.file_operations*)* @debugfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @S_IRWXUGO, align 4
  %14 = load i32, i32* @S_ISVTX, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %24 = call i32 @debugfs_mknod(%struct.inode* %19, %struct.dentry* %20, i32 %21, i32 0, i8* %22, %struct.file_operations* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @inc_nlink(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call i32 @fsnotify_mkdir(%struct.inode* %30, %struct.dentry* %31)
  br label %33

33:                                               ; preds = %27, %5
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local i32 @debugfs_mknod(%struct.inode*, %struct.dentry*, i32, i32, i8*, %struct.file_operations*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
