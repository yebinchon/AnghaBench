; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_namei.c_minix_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @minix_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @old_valid_dev(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %37

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.inode* @minix_new_inode(%struct.inode* %19, i32* %10)
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @minix_set_inode(%struct.inode* %27, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %11, align 8
  %31 = call i32 @mark_inode_dirty(%struct.inode* %30)
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = call i32 @add_nondir(%struct.dentry* %32, %struct.inode* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %23, %18
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @old_valid_dev(i32) #1

declare dso_local %struct.inode* @minix_new_inode(%struct.inode*, i32*) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
