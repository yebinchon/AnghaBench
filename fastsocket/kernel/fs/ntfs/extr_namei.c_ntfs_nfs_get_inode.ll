; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64)* @ntfs_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ntfs_nfs_get_inode(%struct.super_block* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.inode* @ntfs_iget(%struct.super_block* %8, i32 %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @IS_ERR(%struct.inode* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i64 @is_bad_inode(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %14
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @iput(%struct.inode* %25)
  %27 = load i32, i32* @ESTALE, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.inode* @ERR_PTR(i32 %28)
  store %struct.inode* %29, %struct.inode** %7, align 8
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %32
}

declare dso_local %struct.inode* @ntfs_iget(%struct.super_block*, i32) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
