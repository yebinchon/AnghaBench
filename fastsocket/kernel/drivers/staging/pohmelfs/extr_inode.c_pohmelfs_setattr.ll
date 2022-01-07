; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32 }
%struct.pohmelfs_inode = type { i32 }

@POHMELFS_WRITE_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pohmelfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.pohmelfs_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %12)
  store %struct.pohmelfs_inode* %13, %struct.pohmelfs_inode** %7, align 8
  %14 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %7, align 8
  %15 = load i32, i32* @POHMELFS_WRITE_LOCK, align 4
  %16 = call i32 @pohmelfs_data_lock(%struct.pohmelfs_inode* %14, i32 0, i32 -1, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.iattr*, %struct.iattr** %5, align 8
  %23 = call i32 @security_inode_setattr(%struct.dentry* %21, %struct.iattr* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.iattr*, %struct.iattr** %5, align 8
  %30 = call i32 @pohmelfs_setattr_raw(%struct.inode* %28, %struct.iattr* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %37

35:                                               ; preds = %33, %26, %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode*) #1

declare dso_local i32 @pohmelfs_data_lock(%struct.pohmelfs_inode*, i32, i32, i32) #1

declare dso_local i32 @security_inode_setattr(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @pohmelfs_setattr_raw(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
