; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_dentry.c_ecryptfs_d_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_dentry.c_ecryptfs_d_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.nameidata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @ecryptfs_d_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_d_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = call %struct.vfsmount* @ecryptfs_dentry_to_lower_mnt(%struct.dentry* %13)
  store %struct.vfsmount* %14, %struct.vfsmount** %6, align 8
  store i32 1, i32* %9, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.dentry*, %struct.nameidata*)**
  %25 = load i32 (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.dentry*, %struct.nameidata*)** %24, align 8
  %26 = icmp ne i32 (%struct.dentry*, %struct.nameidata*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19, %2
  br label %77

28:                                               ; preds = %19
  %29 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  store %struct.dentry* %32, %struct.dentry** %7, align 8
  %33 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.vfsmount*, %struct.vfsmount** %35, align 8
  store %struct.vfsmount* %36, %struct.vfsmount** %8, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store %struct.dentry* %37, %struct.dentry** %40, align 8
  %41 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %42 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.vfsmount* %41, %struct.vfsmount** %44, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.dentry*, %struct.nameidata*)**
  %50 = load i32 (%struct.dentry*, %struct.nameidata*)*, i32 (%struct.dentry*, %struct.nameidata*)** %49, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %53 = call i32 %50(%struct.dentry* %51, %struct.nameidata* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store %struct.dentry* %54, %struct.dentry** %57, align 8
  %58 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %59 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.vfsmount* %58, %struct.vfsmount** %61, align 8
  %62 = load %struct.dentry*, %struct.dentry** %3, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %28
  %67 = load %struct.dentry*, %struct.dentry** %3, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.inode* @ecryptfs_inode_to_lower(i64 %69)
  store %struct.inode* %70, %struct.inode** %10, align 8
  %71 = load %struct.dentry*, %struct.dentry** %3, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call i32 @fsstack_copy_attr_all(i64 %73, %struct.inode* %74, i32* null)
  br label %76

76:                                               ; preds = %66, %28
  br label %77

77:                                               ; preds = %76, %27
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.vfsmount* @ecryptfs_dentry_to_lower_mnt(%struct.dentry*) #1

declare dso_local %struct.inode* @ecryptfs_inode_to_lower(i64) #1

declare dso_local i32 @fsstack_copy_attr_all(i64, %struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
