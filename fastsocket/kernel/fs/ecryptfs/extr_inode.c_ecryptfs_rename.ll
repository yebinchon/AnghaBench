; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.dentry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @ecryptfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %16)
  store %struct.dentry* %17, %struct.dentry** %11, align 8
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = call i32 @dget(%struct.dentry* %18)
  %20 = load %struct.dentry*, %struct.dentry** %11, align 8
  %21 = call i32 @dget(%struct.dentry* %20)
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = call %struct.dentry* @dget_parent(%struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %12, align 8
  %24 = load %struct.dentry*, %struct.dentry** %11, align 8
  %25 = call %struct.dentry* @dget_parent(%struct.dentry* %24)
  store %struct.dentry* %25, %struct.dentry** %13, align 8
  %26 = load %struct.dentry*, %struct.dentry** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %13, align 8
  %28 = call i32 @lock_rename(%struct.dentry* %26, %struct.dentry* %27)
  %29 = load %struct.dentry*, %struct.dentry** %12, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = load %struct.dentry*, %struct.dentry** %13, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = call i32 @vfs_rename(i32 %31, %struct.dentry* %32, i32 %35, %struct.dentry* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %57

41:                                               ; preds = %4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = load %struct.dentry*, %struct.dentry** %13, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @fsstack_copy_attr_all(%struct.inode* %42, i32 %45, i32* null)
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = icmp ne %struct.inode* %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.dentry*, %struct.dentry** %12, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fsstack_copy_attr_all(%struct.inode* %51, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %50, %41
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.dentry*, %struct.dentry** %12, align 8
  %59 = load %struct.dentry*, %struct.dentry** %13, align 8
  %60 = call i32 @unlock_rename(%struct.dentry* %58, %struct.dentry* %59)
  %61 = load %struct.dentry*, %struct.dentry** %11, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.dentry*, %struct.dentry** %62, align 8
  %64 = call i32 @dput(%struct.dentry* %63)
  %65 = load %struct.dentry*, %struct.dentry** %10, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.dentry*, %struct.dentry** %66, align 8
  %68 = call i32 @dput(%struct.dentry* %67)
  %69 = load %struct.dentry*, %struct.dentry** %11, align 8
  %70 = call i32 @dput(%struct.dentry* %69)
  %71 = load %struct.dentry*, %struct.dentry** %10, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @vfs_rename(i32, %struct.dentry*, i32, %struct.dentry*) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, i32, i32*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
