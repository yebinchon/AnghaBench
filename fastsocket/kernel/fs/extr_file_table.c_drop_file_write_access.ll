; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_drop_file_write_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_drop_file_write_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry*, %struct.vfsmount* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.vfsmount = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drop_file_write_access(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  store %struct.vfsmount* %9, %struct.vfsmount** %3, align 8
  %10 = load %struct.file*, %struct.file** %2, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @put_write_access(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @special_file(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.file*, %struct.file** %2, align 8
  %27 = call i64 @file_check_writeable(%struct.file* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %35

30:                                               ; preds = %25
  %31 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %32 = call i32 @__mnt_drop_write(%struct.vfsmount* %31)
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = call i32 @file_release_write(%struct.file* %33)
  br label %35

35:                                               ; preds = %30, %29, %24
  ret void
}

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i64 @special_file(i32) #1

declare dso_local i64 @file_check_writeable(%struct.file*) #1

declare dso_local i32 @__mnt_drop_write(%struct.vfsmount*) #1

declare dso_local i32 @file_release_write(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
