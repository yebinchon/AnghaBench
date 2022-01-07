; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openprom_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/openpromfs/extr_inode.c_openprom_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.inode = type { i32 }
%struct.op_inode_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MS_NOATIME = common dso_local global i32 0, align 4
@OPENPROM_SUPER_MAGIC = common dso_local global i32 0, align 4
@openprom_sops = common dso_local global i32 0, align 4
@OPENPROM_ROOT_INO = common dso_local global i32 0, align 4
@op_inode_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"openprom_fill_super: get root inode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @openprom_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openprom_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.op_inode_info*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MS_NOATIME, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  store i32 1024, i32* %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 1
  store i32 10, i32* %19, align 4
  %20 = load i32, i32* @OPENPROM_SUPER_MAGIC, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 4
  store i32* @openprom_sops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load i32, i32* @OPENPROM_ROOT_INO, align 4
  %29 = call %struct.inode* @openprom_iget(%struct.super_block* %27, i32 %28)
  store %struct.inode* %29, %struct.inode** %8, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i64 @IS_ERR(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @PTR_ERR(%struct.inode* %34)
  store i32 %35, i32* %10, align 4
  br label %61

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call %struct.op_inode_info* @OP_I(%struct.inode* %37)
  store %struct.op_inode_info* %38, %struct.op_inode_info** %9, align 8
  %39 = load i32, i32* @op_inode_node, align 4
  %40 = load %struct.op_inode_info*, %struct.op_inode_info** %9, align 8
  %41 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.op_inode_info*, %struct.op_inode_info** %9, align 8
  %44 = getelementptr inbounds %struct.op_inode_info, %struct.op_inode_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @d_alloc_root(%struct.inode* %46)
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %36
  br label %56

55:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %64

56:                                               ; preds = %54
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @iput(%struct.inode* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %33
  %62 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.inode* @openprom_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.op_inode_info* @OP_I(%struct.inode*) #1

declare dso_local i32 @of_find_node_by_path(i8*) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
