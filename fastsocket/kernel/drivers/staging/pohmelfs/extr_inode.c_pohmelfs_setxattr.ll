; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.pohmelfs_inode = type { i32 }
%struct.pohmelfs_sb = type { i32 }

@POHMELFS_FLAGS_XATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETFS_XATTR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i8*, i64, i32)* @pohmelfs_setxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.pohmelfs_inode*, align 8
  %14 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %12, align 8
  %19 = call %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode* %18)
  store %struct.pohmelfs_inode* %19, %struct.pohmelfs_inode** %13, align 8
  %20 = load %struct.inode*, %struct.inode** %12, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pohmelfs_sb* @POHMELFS_SB(i32 %22)
  store %struct.pohmelfs_sb* %23, %struct.pohmelfs_sb** %14, align 8
  %24 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %14, align 8
  %25 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POHMELFS_FLAGS_XATTR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %42

33:                                               ; preds = %5
  %34 = load %struct.pohmelfs_inode*, %struct.pohmelfs_inode** %13, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @NETFS_XATTR_SET, align 4
  %41 = call i32 @pohmelfs_send_xattr_req(%struct.pohmelfs_inode* %34, i32 %35, i64 %36, i8* %37, i8* %38, i64 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.pohmelfs_inode* @POHMELFS_I(%struct.inode*) #1

declare dso_local %struct.pohmelfs_sb* @POHMELFS_SB(i32) #1

declare dso_local i32 @pohmelfs_send_xattr_req(%struct.pohmelfs_inode*, i32, i64, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
