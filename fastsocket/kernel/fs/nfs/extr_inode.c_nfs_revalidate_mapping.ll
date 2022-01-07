; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_revalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_revalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.nfs_inode = type { i32 }

@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_revalidate_mapping(%struct.inode* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @nfs_mapping_need_revalidate_inode(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @NFS_SERVER(%struct.inode* %13)
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @__nfs_revalidate_inode(i32 %14, %struct.inode* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %33

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = call i32 @nfs_invalidate_mapping(%struct.inode* %29, %struct.address_space* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_mapping_need_revalidate_inode(%struct.inode*) #1

declare dso_local i32 @__nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_mapping(%struct.inode*, %struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
