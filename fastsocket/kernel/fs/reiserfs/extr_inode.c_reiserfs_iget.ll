; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.cpu_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_iget_args = type { i32, i32 }

@reiserfs_find_actor = common dso_local global i32 0, align 4
@reiserfs_init_locked_inode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @reiserfs_iget(%struct.super_block* %0, %struct.cpu_key* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.cpu_key*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.reiserfs_iget_args, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.cpu_key* %1, %struct.cpu_key** %5, align 8
  %8 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %9 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %14 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %20 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @reiserfs_find_actor, align 4
  %24 = load i32, i32* @reiserfs_init_locked_inode, align 4
  %25 = bitcast %struct.reiserfs_iget_args* %7 to i8*
  %26 = call %struct.inode* @iget5_locked(%struct.super_block* %18, i32 %22, i32 %23, i32 %24, i8* %25)
  store %struct.inode* %26, %struct.inode** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.inode* @ERR_PTR(i32 %31)
  store %struct.inode* %32, %struct.inode** %3, align 8
  br label %60

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I_NEW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @reiserfs_read_locked_inode(%struct.inode* %41, %struct.reiserfs_iget_args* %7)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i32 @unlock_new_inode(%struct.inode* %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i32 @INODE_PKEY(%struct.inode* %46)
  %48 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %49 = call i64 @comp_short_keys(i32 %47, %struct.cpu_key* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i64 @is_bad_inode(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %45
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @iput(%struct.inode* %56)
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %59, %struct.inode** %3, align 8
  br label %60

60:                                               ; preds = %58, %29
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %61
}

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, i8*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @reiserfs_read_locked_inode(%struct.inode*, %struct.reiserfs_iget_args*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @comp_short_keys(i32, %struct.cpu_key*) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
