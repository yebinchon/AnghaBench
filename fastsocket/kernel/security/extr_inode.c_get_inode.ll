; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_inode.c_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i32, i32, i32 }
%struct.super_block = type { i32 }

@CURRENT_TIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@default_file_ops = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i32)* @get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_inode(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.inode* @new_inode(%struct.super_block* %8)
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @CURRENT_TIME, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  store i32 %16, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 5
  store i32 %16, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @S_IFMT, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %26 [
    i32 128, label %31
    i32 129, label %34
  ]

26:                                               ; preds = %12
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @init_special_inode(%struct.inode* %27, i32 %28, i32 %29)
  br label %41

31:                                               ; preds = %12
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  store i32* @default_file_ops, i32** %33, align 8
  br label %41

34:                                               ; preds = %12
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  store i32* @simple_dir_inode_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @inc_nlink(%struct.inode* %39)
  br label %41

41:                                               ; preds = %34, %31, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %43
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
