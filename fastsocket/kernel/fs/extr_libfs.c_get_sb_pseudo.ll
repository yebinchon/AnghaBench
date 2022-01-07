; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_get_sb_pseudo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_libfs.c_get_sb_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_operations = type { i32 }
%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.super_block = type { i64, i32, i32, %struct.dentry*, %struct.super_operations*, i32, i32, i32 }
%struct.dentry = type { %struct.dentry*, %struct.super_block* }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.qstr = type { i8*, i32 }

@set_anon_super = common dso_local global i32 0, align 4
@MS_NOUSER = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@simple_super_operations = common dso_local global %struct.super_operations zeroinitializer, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_sb_pseudo(%struct.file_system_type* %0, i8* %1, %struct.super_operations* %2, i64 %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.super_operations*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.qstr, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.super_operations* %2, %struct.super_operations** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  %16 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %17 = load i32, i32* @set_anon_super, align 4
  %18 = call %struct.super_block* @sget(%struct.file_system_type* %16, i32* null, i32 %17, i32* null)
  store %struct.super_block* %18, %struct.super_block** %12, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %21, align 8
  %24 = load %struct.super_block*, %struct.super_block** %12, align 8
  %25 = call i64 @IS_ERR(%struct.super_block* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.super_block*, %struct.super_block** %12, align 8
  %29 = call i32 @PTR_ERR(%struct.super_block* %28)
  store i32 %29, i32* %6, align 4
  br label %111

30:                                               ; preds = %5
  %31 = load i32, i32* @MS_NOUSER, align 4
  %32 = load %struct.super_block*, %struct.super_block** %12, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %35 = load %struct.super_block*, %struct.super_block** %12, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load %struct.super_block*, %struct.super_block** %12, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = load %struct.super_block*, %struct.super_block** %12, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.super_block*, %struct.super_block** %12, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.super_operations*, %struct.super_operations** %9, align 8
  %47 = icmp ne %struct.super_operations* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load %struct.super_operations*, %struct.super_operations** %9, align 8
  br label %51

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi %struct.super_operations* [ %49, %48 ], [ @simple_super_operations, %50 ]
  %53 = load %struct.super_block*, %struct.super_block** %12, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 4
  store %struct.super_operations* %52, %struct.super_operations** %54, align 8
  %55 = load %struct.super_block*, %struct.super_block** %12, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %12, align 8
  %58 = call %struct.inode* @new_inode(%struct.super_block* %57)
  store %struct.inode* %58, %struct.inode** %14, align 8
  %59 = load %struct.inode*, %struct.inode** %14, align 8
  %60 = icmp ne %struct.inode* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %106

62:                                               ; preds = %51
  %63 = load %struct.inode*, %struct.inode** %14, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @S_IFDIR, align 4
  %66 = load i32, i32* @S_IRUSR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @S_IWUSR, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.inode*, %struct.inode** %14, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @CURRENT_TIME, align 4
  %73 = load %struct.inode*, %struct.inode** %14, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %14, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 3
  store i32 %72, i32* %76, align 4
  %77 = load %struct.inode*, %struct.inode** %14, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 4
  store i32 %72, i32* %78, align 4
  %79 = call %struct.dentry* @d_alloc(i32* null, %struct.qstr* %15)
  store %struct.dentry* %79, %struct.dentry** %13, align 8
  %80 = load %struct.dentry*, %struct.dentry** %13, align 8
  %81 = icmp ne %struct.dentry* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %62
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = call i32 @iput(%struct.inode* %83)
  br label %106

85:                                               ; preds = %62
  %86 = load %struct.super_block*, %struct.super_block** %12, align 8
  %87 = load %struct.dentry*, %struct.dentry** %13, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 1
  store %struct.super_block* %86, %struct.super_block** %88, align 8
  %89 = load %struct.dentry*, %struct.dentry** %13, align 8
  %90 = load %struct.dentry*, %struct.dentry** %13, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  store %struct.dentry* %89, %struct.dentry** %91, align 8
  %92 = load %struct.dentry*, %struct.dentry** %13, align 8
  %93 = load %struct.inode*, %struct.inode** %14, align 8
  %94 = call i32 @d_instantiate(%struct.dentry* %92, %struct.inode* %93)
  %95 = load %struct.dentry*, %struct.dentry** %13, align 8
  %96 = load %struct.super_block*, %struct.super_block** %12, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 3
  store %struct.dentry* %95, %struct.dentry** %97, align 8
  %98 = load i32, i32* @MS_ACTIVE, align 4
  %99 = load %struct.super_block*, %struct.super_block** %12, align 8
  %100 = getelementptr inbounds %struct.super_block, %struct.super_block* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %104 = load %struct.super_block*, %struct.super_block** %12, align 8
  %105 = call i32 @simple_set_mnt(%struct.vfsmount* %103, %struct.super_block* %104)
  store i32 0, i32* %6, align 4
  br label %111

106:                                              ; preds = %82, %61
  %107 = load %struct.super_block*, %struct.super_block** %12, align 8
  %108 = call i32 @deactivate_locked_super(%struct.super_block* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %106, %85, %27
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.dentry* @d_alloc(i32*, %struct.qstr*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
