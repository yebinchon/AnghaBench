; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ecryptfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %10, align 8
  %15 = call %struct.dentry* @lock_parent(%struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %11, align 8
  %16 = load %struct.dentry*, %struct.dentry** %11, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @vfs_mknod(i32 %18, %struct.dentry* %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %4
  br label %52

31:                                               ; preds = %25
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ecryptfs_interpose(%struct.dentry* %32, %struct.dentry* %33, i32 %36, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %52

41:                                               ; preds = %31
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.dentry*, %struct.dentry** %11, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fsstack_copy_attr_times(%struct.inode* %42, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load %struct.dentry*, %struct.dentry** %11, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fsstack_copy_inode_size(%struct.inode* %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %40, %30
  %53 = load %struct.dentry*, %struct.dentry** %11, align 8
  %54 = call i32 @unlock_dir(%struct.dentry* %53)
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = call i32 @d_drop(%struct.dentry* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_mknod(i32, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, i32) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
