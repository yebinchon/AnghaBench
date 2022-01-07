; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@EROFS = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @btrfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %7, align 8
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %17 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = call i32 @inode_change_ok(%struct.inode* %23, %struct.iattr* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISREG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.iattr*, %struct.iattr** %5, align 8
  %38 = getelementptr inbounds %struct.iattr, %struct.iattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATTR_SIZE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.iattr*, %struct.iattr** %5, align 8
  %46 = call i32 @btrfs_setsize(%struct.inode* %44, %struct.iattr* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %84

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %36, %30
  %53 = load i32, i32* @ATTR_SIZE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.iattr*, %struct.iattr** %5, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call i32 @inode_inc_iversion(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load %struct.iattr*, %struct.iattr** %5, align 8
  %68 = call i32 @inode_setattr(%struct.inode* %66, %struct.iattr* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %52
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.iattr*, %struct.iattr** %5, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATTR_MODE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = call i32 @btrfs_acl_chmod(%struct.inode* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %72, %69
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %49, %28, %19
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @btrfs_setsize(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @btrfs_acl_chmod(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
