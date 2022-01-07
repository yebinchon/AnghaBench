; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/debugfs/extr_inode.c_debugfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.inode = type { i32, i8*, %struct.file_operations*, i32*, i32, i32, i32 }
%struct.super_block = type { i32 }

@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@debugfs_file_operations = common dso_local global %struct.file_operations zeroinitializer, align 4
@debugfs_link_operations = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global %struct.file_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i32, i8*, %struct.file_operations*)* @debugfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @debugfs_get_inode(%struct.super_block* %0, i32 %1, i32 %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.file_operations* %4, %struct.file_operations** %10, align 8
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = call %struct.inode* @new_inode(%struct.super_block* %12)
  store %struct.inode* %13, %struct.inode** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %11, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %75

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @CURRENT_TIME, align 4
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 5
  store i32 %20, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 6
  store i32 %20, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @S_IFMT, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %30 [
    i32 128, label %35
    i32 129, label %48
    i32 130, label %57
  ]

30:                                               ; preds = %16
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @init_special_inode(%struct.inode* %31, i32 %32, i32 %33)
  br label %74

35:                                               ; preds = %16
  %36 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %37 = icmp ne %struct.file_operations* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi %struct.file_operations* [ %39, %38 ], [ @debugfs_file_operations, %40 ]
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  store %struct.file_operations* %42, %struct.file_operations** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %74

48:                                               ; preds = %16
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 3
  store i32* @debugfs_link_operations, i32** %50, align 8
  %51 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  store %struct.file_operations* %51, %struct.file_operations** %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  br label %74

57:                                               ; preds = %16
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  store i32* @simple_dir_inode_operations, i32** %59, align 8
  %60 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %61 = icmp ne %struct.file_operations* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi %struct.file_operations* [ %63, %62 ], [ @simple_dir_operations, %64 ]
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store %struct.file_operations* %66, %struct.file_operations** %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %11, align 8
  %73 = call i32 @inc_nlink(%struct.inode* %72)
  br label %74

74:                                               ; preds = %65, %48, %41, %30
  br label %75

75:                                               ; preds = %74, %5
  %76 = load %struct.inode*, %struct.inode** %11, align 8
  ret %struct.inode* %76
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
