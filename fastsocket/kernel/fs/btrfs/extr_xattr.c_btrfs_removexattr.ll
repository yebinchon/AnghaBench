; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_btrfs_removexattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_btrfs_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@EROFS = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* @BTRFS_I(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %11, align 8
  store %struct.btrfs_root* %12, %struct.btrfs_root** %6, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %14 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EROFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %22 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %23 = call i32 @strncmp(i8* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @generic_removexattr(%struct.dentry* %26, i8* %27)
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @btrfs_is_valid_xattr(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %29
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @XATTR_REPLACE, align 4
  %42 = call i32 @__btrfs_setxattr(i32* null, i32 %39, i8* %40, i32* null, i32 0, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %33, %25, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(i32) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @generic_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @btrfs_is_valid_xattr(i8*) #1

declare dso_local i32 @__btrfs_setxattr(i32*, i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
