; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.inode* @iget_locked(%struct.super_block* %8, i64 %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.inode* @ERR_PTR(i32 %19)
  store %struct.inode* %20, %struct.inode** %3, align 8
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I_NEW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %29, %struct.inode** %3, align 8
  br label %47

30:                                               ; preds = %21
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @__nilfs_read_inode(%struct.super_block* %31, i64 %32, %struct.inode* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @iget_failed(%struct.inode* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.inode* @ERR_PTR(i32 %41)
  store %struct.inode* %42, %struct.inode** %3, align 8
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @unlock_new_inode(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %46, %struct.inode** %3, align 8
  br label %47

47:                                               ; preds = %43, %38, %28, %17
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %48
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @__nilfs_read_inode(%struct.super_block*, i64, %struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
