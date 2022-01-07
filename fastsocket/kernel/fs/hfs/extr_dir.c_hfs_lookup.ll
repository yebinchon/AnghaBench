; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_dir.c_hfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_dir.c_hfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i32* }
%struct.nameidata = type { i32 }
%struct.hfs_find_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@hfs_dentry_operations = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @hfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hfs_find_data, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  store i32* @hfs_dentry_operations, i32** %13, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_4__* @HFS_SB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hfs_find_init(i32 %19, %struct.hfs_find_data* %9)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = call i32 @hfs_cat_build_key(i32 %23, %struct.TYPE_3__* %25, i32 %28, i32* %30)
  %32 = call i32 @hfs_brec_read(%struct.hfs_find_data* %9, i32* %8, i32 4)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %3
  %36 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %61

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.dentry* @ERR_PTR(i32 %43)
  store %struct.dentry* %44, %struct.dentry** %4, align 8
  br label %65

45:                                               ; preds = %3
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %9, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call %struct.inode* @hfs_iget(i32 %48, i32* %51, i32* %8)
  store %struct.inode* %52, %struct.inode** %10, align 8
  %53 = call i32 @hfs_find_exit(%struct.hfs_find_data* %9)
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = icmp ne %struct.inode* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @EACCES, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.dentry* @ERR_PTR(i32 %58)
  store %struct.dentry* %59, %struct.dentry** %4, align 8
  br label %65

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @d_add(%struct.dentry* %62, %struct.inode* %63)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %65

65:                                               ; preds = %61, %56, %42
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %66
}

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(i32) #1

declare dso_local i32 @hfs_cat_build_key(i32, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @hfs_brec_read(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @hfs_iget(i32, i32*, i32*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
