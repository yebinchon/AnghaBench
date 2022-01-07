; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ecryptfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = call %struct.dentry* @lock_parent(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %9, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vfs_mkdir(%struct.TYPE_4__* %16, %struct.dentry* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %3
  br label %56

28:                                               ; preds = %22
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ecryptfs_interpose(%struct.dentry* %29, %struct.dentry* %30, i32 %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %56

38:                                               ; preds = %28
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @fsstack_copy_attr_times(%struct.inode* %39, %struct.TYPE_4__* %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @fsstack_copy_inode_size(%struct.inode* %44, %struct.TYPE_4__* %47)
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %38, %37, %27
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  %58 = call i32 @unlock_dir(%struct.dentry* %57)
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call i32 @d_drop(%struct.dentry* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_4__*, %struct.dentry*, i32) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, %struct.TYPE_4__*) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, %struct.TYPE_4__*) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
