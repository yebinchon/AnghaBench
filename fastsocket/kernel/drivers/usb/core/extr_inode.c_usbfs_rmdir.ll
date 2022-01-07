; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_usbfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_inode.c_usbfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.inode* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @usbfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load i32, i32* @ENOTEMPTY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i32 @dentry_unhash(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i64 @usbfs_empty(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  %24 = call i32 @drop_nlink(%struct.inode* %23)
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  %28 = call i32 @drop_nlink(%struct.inode* %27)
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call i32 @dput(%struct.dentry* %29)
  %31 = load i32, i32* @S_DEAD, align 4
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call i32 @drop_nlink(%struct.inode* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %20, %2
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call i32 @d_delete(%struct.dentry* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = call i32 @dput(%struct.dentry* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dentry_unhash(%struct.dentry*) #1

declare dso_local i64 @usbfs_empty(%struct.dentry*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
