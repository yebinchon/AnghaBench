; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_pty_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_pty_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.tty_struct*, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.inode*, %struct.tty_driver* }
%struct.tty_driver = type { i64, i64, i64, i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.super_block = type { %struct.dentry* }
%struct.pts_fs_info = type { %struct.pts_mount_opts }
%struct.pts_mount_opts = type { i32, i32, i64, i32, i64 }

@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_SLAVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devpts_pty_new(%struct.inode* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.pts_fs_info*, align 8
  %14 = alloca %struct.pts_mount_opts*, align 8
  %15 = alloca [12 x i8], align 1
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 2
  %21 = load %struct.tty_driver*, %struct.tty_driver** %20, align 8
  store %struct.tty_driver* %21, %struct.tty_driver** %7, align 8
  %22 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %23 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %26 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @MKDEV(i32 %24, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call %struct.super_block* @pts_sb_from_inode(%struct.inode* %32)
  store %struct.super_block* %33, %struct.super_block** %10, align 8
  %34 = load %struct.super_block*, %struct.super_block** %10, align 8
  %35 = call %struct.inode* @new_inode(%struct.super_block* %34)
  store %struct.inode* %35, %struct.inode** %11, align 8
  %36 = load %struct.super_block*, %struct.super_block** %10, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load %struct.dentry*, %struct.dentry** %37, align 8
  store %struct.dentry* %38, %struct.dentry** %12, align 8
  %39 = load %struct.super_block*, %struct.super_block** %10, align 8
  %40 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* %39)
  store %struct.pts_fs_info* %40, %struct.pts_fs_info** %13, align 8
  %41 = load %struct.pts_fs_info*, %struct.pts_fs_info** %13, align 8
  %42 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %41, i32 0, i32 0
  store %struct.pts_mount_opts* %42, %struct.pts_mount_opts** %14, align 8
  %43 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %44 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.tty_driver*, %struct.tty_driver** %7, align 8
  %51 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PTY_TYPE_SLAVE, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = icmp ne %struct.inode* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %2
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %145

62:                                               ; preds = %2
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 3
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %14, align 8
  %68 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %14, align 8
  %73 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  br label %77

75:                                               ; preds = %62
  %76 = call i32 (...) @current_fsuid()
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi i32 [ %74, %71 ], [ %76, %75 ]
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %14, align 8
  %82 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %14, align 8
  %87 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  br label %91

89:                                               ; preds = %77
  %90 = call i32 (...) @current_fsgid()
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %88, %85 ], [ %90, %89 ]
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @CURRENT_TIME, align 4
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 3
  store i32 %95, i32* %99, align 4
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 4
  store i32 %95, i32* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = load i32, i32* @S_IFCHR, align 4
  %104 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %14, align 8
  %105 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %103, %106
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @init_special_inode(%struct.inode* %102, i32 %107, i32 %108)
  %110 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %111 = load %struct.inode*, %struct.inode** %11, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  store %struct.tty_struct* %110, %struct.tty_struct** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %115 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %114, i32 0, i32 1
  store %struct.inode* %113, %struct.inode** %115, align 8
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.dentry*, %struct.dentry** %12, align 8
  %120 = getelementptr inbounds %struct.dentry, %struct.dentry* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = call i32 @mutex_lock(i32* %122)
  %124 = load %struct.dentry*, %struct.dentry** %12, align 8
  %125 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %126 = call %struct.dentry* @d_alloc_name(%struct.dentry* %124, i8* %125)
  store %struct.dentry* %126, %struct.dentry** %9, align 8
  %127 = load %struct.dentry*, %struct.dentry** %9, align 8
  %128 = call i32 @IS_ERR(%struct.dentry* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %91
  %131 = load %struct.dentry*, %struct.dentry** %9, align 8
  %132 = load %struct.inode*, %struct.inode** %11, align 8
  %133 = call i32 @d_add(%struct.dentry* %131, %struct.inode* %132)
  %134 = load %struct.dentry*, %struct.dentry** %12, align 8
  %135 = getelementptr inbounds %struct.dentry, %struct.dentry* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load %struct.dentry*, %struct.dentry** %9, align 8
  %138 = call i32 @fsnotify_create(%struct.TYPE_2__* %136, %struct.dentry* %137)
  br label %139

139:                                              ; preds = %130, %91
  %140 = load %struct.dentry*, %struct.dentry** %12, align 8
  %141 = getelementptr inbounds %struct.dentry, %struct.dentry* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %139, %59
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local %struct.super_block* @pts_sb_from_inode(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(%struct.TYPE_2__*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
