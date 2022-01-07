; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_acl.c_jfs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @jfs_acl_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISLNK(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %19 = call %struct.posix_acl* @jfs_get_acl(%struct.inode* %17, i32 %18)
  store %struct.posix_acl* %19, %struct.posix_acl** %4, align 8
  %20 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %21 = call i64 @IS_ERR(%struct.posix_acl* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %28 = call i32 @PTR_ERR(%struct.posix_acl* %27)
  store i32 %28, i32* %2, align 4
  br label %78

29:                                               ; preds = %23
  %30 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %30, i32 %31)
  store %struct.posix_acl* %32, %struct.posix_acl** %5, align 8
  %33 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %34 = call i32 @posix_acl_release(%struct.posix_acl* %33)
  %35 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %36 = icmp ne %struct.posix_acl* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %78

40:                                               ; preds = %29
  %41 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @txBegin(i32 %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %60 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %61 = call i32 @jfs_set_acl(i32 %57, %struct.inode* %58, i32 %59, %struct.posix_acl* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @txCommit(i32 %65, i32 1, %struct.inode** %3, i32 0)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %48
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @txEnd(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %67, %40
  %75 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %76 = call i32 @posix_acl_release(%struct.posix_acl* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %37, %26, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @jfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @jfs_set_acl(i32, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
