; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hfs_cat_key = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hfs_iget_data = type { %struct.TYPE_7__*, %struct.hfs_cat_key* }

@hfs_test_inode = common dso_local global i32 0, align 4
@hfs_read_inode = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @hfs_iget(%struct.super_block* %0, %struct.hfs_cat_key* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hfs_cat_key*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.hfs_iget_data, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hfs_cat_key* %1, %struct.hfs_cat_key** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %8, i32 0, i32 0
  %12 = load %struct.hfs_cat_key*, %struct.hfs_cat_key** %6, align 8
  %13 = bitcast %struct.hfs_cat_key* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %11, align 8
  %14 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %8, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.hfs_cat_key*
  store %struct.hfs_cat_key* %16, %struct.hfs_cat_key** %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %26
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %10, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %10, align 4
  br label %33

32:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %53

33:                                               ; preds = %26, %20
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @hfs_test_inode, align 4
  %37 = load i32, i32* @hfs_read_inode, align 4
  %38 = call %struct.inode* @iget5_locked(%struct.super_block* %34, i32 %35, i32 %36, i32 %37, %struct.hfs_iget_data* %8)
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I_NEW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i32 @unlock_new_inode(%struct.inode* %49)
  br label %51

51:                                               ; preds = %48, %41, %33
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %52, %struct.inode** %4, align 8
  br label %53

53:                                               ; preds = %51, %32
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %54
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.hfs_iget_data*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
