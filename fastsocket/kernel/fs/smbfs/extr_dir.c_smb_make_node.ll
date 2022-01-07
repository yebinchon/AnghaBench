; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_make_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_dir.c_smb_make_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @smb_make_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_make_node(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ATTR_MODE, align 4
  %13 = load i32, i32* @ATTR_UID, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ATTR_GID, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 3
  %21 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 2
  %22 = call i32 @current_euid_egid(i32* %20, i32* %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @new_valid_dev(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i32 @smb_invalid_dir_cache(%struct.inode* %30)
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MAJOR(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @MINOR(i32 %35)
  %37 = call i32 @smb_proc_setattr_unix(%struct.dentry* %32, %struct.iattr* %11, i32 %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i32 @smb_instantiate(%struct.dentry* %41, i32 0, i32 0)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %26
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @current_euid_egid(i32*, i32*) #1

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local i32 @smb_invalid_dir_cache(%struct.inode*) #1

declare dso_local i32 @smb_proc_setattr_unix(%struct.dentry*, %struct.iattr*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @smb_instantiate(%struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
