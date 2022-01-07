; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c___nfs3_forget_cached_acls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c___nfs3_forget_cached_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { i8*, i8* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_inode*)* @__nfs3_forget_cached_acls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nfs3_forget_cached_acls(%struct.nfs_inode* %0) #0 {
  %2 = alloca %struct.nfs_inode*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %2, align 8
  %3 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %4 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @IS_ERR(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @posix_acl_release(i8* %11)
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  %16 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @IS_ERR(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @posix_acl_release(i8* %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @ERR_PTR(i32 %30)
  %32 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @posix_acl_release(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
