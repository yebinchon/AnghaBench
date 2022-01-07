; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32*, i32*, i32, i32, i32, i64, i64 }

@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@pstore_file_operations = common dso_local global i32 0, align 4
@pstore_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.inode*, i32, i32)* @pstore_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @pstore_get_inode(%struct.super_block* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.inode* @new_inode(%struct.super_block* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %9, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @CURRENT_TIME, align 4
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  store i32 %22, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 5
  store i32 %22, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @S_IFMT, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 129, label %35
  ]

32:                                               ; preds = %14
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  store i32* @pstore_file_operations, i32** %34, align 8
  br label %42

35:                                               ; preds = %14
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  store i32* @pstore_dir_inode_operations, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call i32 @inc_nlink(%struct.inode* %40)
  br label %42

42:                                               ; preds = %14, %35, %32
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  ret %struct.inode* %44
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
