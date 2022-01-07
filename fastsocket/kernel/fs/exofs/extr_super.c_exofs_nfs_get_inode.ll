; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64)* @exofs_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @exofs_nfs_get_inode(%struct.super_block* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.inode* @exofs_iget(%struct.super_block* %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = call i64 @IS_ERR(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.inode* @ERR_CAST(%struct.inode* %16)
  store %struct.inode* %17, %struct.inode** %4, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @iput(%struct.inode* %28)
  %30 = load i32, i32* @ESTALE, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.inode* @ERR_PTR(i32 %31)
  store %struct.inode* %32, %struct.inode** %4, align 8
  br label %35

33:                                               ; preds = %21, %18
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %34, %struct.inode** %4, align 8
  br label %35

35:                                               ; preds = %33, %27, %15
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %36
}

declare dso_local %struct.inode* @exofs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
