; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i64, i64 }
%struct.iattr = type { i32, i64, i64 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = load %struct.iattr*, %struct.iattr** %5, align 8
  %13 = call i32 @inode_change_ok(%struct.inode* %11, %struct.iattr* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = load %struct.iattr*, %struct.iattr** %5, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_UID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.iattr*, %struct.iattr** %5, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %48, label %33

33:                                               ; preds = %25, %18
  %34 = load %struct.iattr*, %struct.iattr** %5, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATTR_GID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.iattr*, %struct.iattr** %5, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40, %25
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.iattr*, %struct.iattr** %5, align 8
  %51 = call i64 @vfs_dq_transfer(%struct.inode* %49, %struct.iattr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EDQUOT, align 4
  %55 = sub nsw i32 0, %54
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %82

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %40, %33
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.iattr*, %struct.iattr** %5, align 8
  %67 = call i32 @inode_setattr(%struct.inode* %65, %struct.iattr* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %64
  %71 = load %struct.iattr*, %struct.iattr** %5, align 8
  %72 = getelementptr inbounds %struct.iattr, %struct.iattr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATTR_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = call i32 @ext2_acl_chmod(%struct.inode* %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %70, %64
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %61, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @vfs_dq_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext2_acl_chmod(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
