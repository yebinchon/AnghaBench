; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ecryptfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i32 @i_size_read(%struct.TYPE_8__* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %16)
  store %struct.dentry* %17, %struct.dentry** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = call i32 @dget(%struct.dentry* %20)
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call i32 @dget(%struct.dentry* %22)
  %24 = load %struct.dentry*, %struct.dentry** %8, align 8
  %25 = call %struct.dentry* @lock_parent(%struct.dentry* %24)
  store %struct.dentry* %25, %struct.dentry** %9, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = call i32 @vfs_link(%struct.dentry* %26, %struct.TYPE_8__* %29, %struct.dentry* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %3
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ecryptfs_interpose(%struct.dentry* %41, %struct.dentry* %42, i32 %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %76

50:                                               ; preds = %40
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @fsstack_copy_attr_times(%struct.inode* %51, %struct.TYPE_8__* %54)
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @fsstack_copy_inode_size(%struct.inode* %56, %struct.TYPE_8__* %59)
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call %struct.TYPE_9__* @ecryptfs_inode_to_lower(%struct.TYPE_8__* %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @i_size_write(%struct.TYPE_8__* %73, i32 %74)
  br label %76

76:                                               ; preds = %50, %49, %39
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = call i32 @unlock_dir(%struct.dentry* %77)
  %79 = load %struct.dentry*, %struct.dentry** %8, align 8
  %80 = call i32 @dput(%struct.dentry* %79)
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = call i32 @dput(%struct.dentry* %81)
  %83 = load %struct.dentry*, %struct.dentry** %7, align 8
  %84 = call i32 @d_drop(%struct.dentry* %83)
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = call i32 @d_drop(%struct.dentry* %85)
  %87 = load %struct.dentry*, %struct.dentry** %4, align 8
  %88 = call i32 @d_drop(%struct.dentry* %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @i_size_read(%struct.TYPE_8__*) #1

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_link(%struct.dentry*, %struct.TYPE_8__*, %struct.dentry*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, %struct.TYPE_8__*) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @ecryptfs_inode_to_lower(%struct.TYPE_8__*) #1

declare dso_local i32 @i_size_write(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
