; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_refresh_inode_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_refresh_inode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*)* @nfs_refresh_inode_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_refresh_inode_locked(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %8 = call i64 @nfs_inode_attrs_need_update(%struct.inode* %6, %struct.nfs_fattr* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %13 = call i32 @nfs_update_inode(%struct.inode* %11, %struct.nfs_fattr* %12)
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %17 = call i32 @nfs_check_inode_attributes(%struct.inode* %15, %struct.nfs_fattr* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @nfs_inode_attrs_need_update(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_update_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_check_inode_attributes(%struct.inode*, %struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
