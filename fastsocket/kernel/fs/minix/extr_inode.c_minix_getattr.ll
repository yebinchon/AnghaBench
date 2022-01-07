; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstat = type { i32, i32, i32 }

@MINIX_V1 = common dso_local global i64 0, align 8
@BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kstat*, %struct.kstat** %6, align 8
  %21 = call i32 @generic_fillattr(i32 %19, %struct.kstat* %20)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @INODE_VERSION(i32 %24)
  %26 = load i64, i64* @MINIX_V1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @BLOCK_SIZE, align 4
  %30 = sdiv i32 %29, 512
  %31 = load %struct.kstat*, %struct.kstat** %6, align 8
  %32 = getelementptr inbounds %struct.kstat, %struct.kstat* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.super_block*, %struct.super_block** %8, align 8
  %35 = call i32 @V1_minix_blocks(i32 %33, %struct.super_block* %34)
  %36 = mul nsw i32 %30, %35
  %37 = load %struct.kstat*, %struct.kstat** %6, align 8
  %38 = getelementptr inbounds %struct.kstat, %struct.kstat* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %52

39:                                               ; preds = %3
  %40 = load %struct.super_block*, %struct.super_block** %8, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 512
  %44 = load %struct.kstat*, %struct.kstat** %6, align 8
  %45 = getelementptr inbounds %struct.kstat, %struct.kstat* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.super_block*, %struct.super_block** %8, align 8
  %48 = call i32 @V2_minix_blocks(i32 %46, %struct.super_block* %47)
  %49 = mul nsw i32 %43, %48
  %50 = load %struct.kstat*, %struct.kstat** %6, align 8
  %51 = getelementptr inbounds %struct.kstat, %struct.kstat* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %39, %28
  %53 = load %struct.super_block*, %struct.super_block** %8, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kstat*, %struct.kstat** %6, align 8
  %57 = getelementptr inbounds %struct.kstat, %struct.kstat* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret i32 0
}

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

declare dso_local i64 @INODE_VERSION(i32) #1

declare dso_local i32 @V1_minix_blocks(i32, %struct.super_block*) #1

declare dso_local i32 @V2_minix_blocks(i32, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
