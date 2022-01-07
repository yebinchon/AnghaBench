; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.qnx4_sb_info*, i32*, i32, i64, i32* }
%struct.qnx4_sb_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.qnx4_super_block*, %struct.buffer_head* }
%struct.qnx4_super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QNX4_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"qnx4: unable to read the superblock\0A\00", align 1
@QNX4_SUPER_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"qnx4: wrong fsid in superblock.\0A\00", align 1
@qnx4_sops = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"qnx4: %s\0A\00", align 1
@QNX4_ROOT_INO = common dso_local global i32 0, align 4
@QNX4_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"qnx4: get inode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @qnx4_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx4_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.qnx4_sb_info*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.qnx4_sb_info* @kzalloc(i32 4, i32 %15)
  store %struct.qnx4_sb_info* %16, %struct.qnx4_sb_info** %11, align 8
  %17 = load %struct.qnx4_sb_info*, %struct.qnx4_sb_info** %11, align 8
  %18 = icmp ne %struct.qnx4_sb_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %122

22:                                               ; preds = %3
  %23 = load %struct.qnx4_sb_info*, %struct.qnx4_sb_info** %11, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  store %struct.qnx4_sb_info* %23, %struct.qnx4_sb_info** %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* @QNX4_BLOCK_SIZE, align 4
  %28 = call i32 @sb_set_blocksize(%struct.super_block* %26, i32 %27)
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call %struct.buffer_head* @sb_bread(%struct.super_block* %29, i32 1)
  store %struct.buffer_head* %30, %struct.buffer_head** %8, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = icmp ne %struct.buffer_head* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %116

35:                                               ; preds = %22
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i64 @le32_to_cpup(i32* %39)
  %41 = load i64, i64* @QNX4_SUPER_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  br label %113

49:                                               ; preds = %35
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 4
  store i32* @qnx4_sops, i32** %51, align 8
  %52 = load i64, i64* @QNX4_SUPER_MAGIC, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @MS_RDONLY, align 4
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = call %struct.TYPE_2__* @qnx4_sb(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store %struct.buffer_head* %60, %struct.buffer_head** %63, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.qnx4_super_block*
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call %struct.TYPE_2__* @qnx4_sb(%struct.super_block* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.qnx4_super_block* %67, %struct.qnx4_super_block** %70, align 8
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i8* @qnx4_checkroot(%struct.super_block* %71)
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %49
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %113

82:                                               ; preds = %49
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = load i32, i32* @QNX4_ROOT_INO, align 4
  %85 = load i32, i32* @QNX4_INODES_PER_BLOCK, align 4
  %86 = mul nsw i32 %84, %85
  %87 = call %struct.inode* @qnx4_iget(%struct.super_block* %83, i32 %86)
  store %struct.inode* %87, %struct.inode** %9, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call i64 @IS_ERR(%struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call i32 @PTR_ERR(%struct.inode* %93)
  store i32 %94, i32* %12, align 4
  br label %113

95:                                               ; preds = %82
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = call i32* @d_alloc_root(%struct.inode* %98)
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 1
  store i32* %99, i32** %101, align 8
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = getelementptr inbounds %struct.super_block, %struct.super_block* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %110

107:                                              ; preds = %95
  %108 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  store i32 0, i32* %4, align 4
  br label %122

110:                                              ; preds = %106
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = call i32 @iput(%struct.inode* %111)
  br label %113

113:                                              ; preds = %110, %91, %81, %48
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %116

116:                                              ; preds = %113, %33
  %117 = load %struct.qnx4_sb_info*, %struct.qnx4_sb_info** %11, align 8
  %118 = call i32 @kfree(%struct.qnx4_sb_info* %117)
  %119 = load %struct.super_block*, %struct.super_block** %5, align 8
  %120 = getelementptr inbounds %struct.super_block, %struct.super_block* %119, i32 0, i32 0
  store %struct.qnx4_sb_info* null, %struct.qnx4_sb_info** %120, align 8
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %107, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.qnx4_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local %struct.TYPE_2__* @qnx4_sb(%struct.super_block*) #1

declare dso_local i8* @qnx4_checkroot(%struct.super_block*) #1

declare dso_local %struct.inode* @qnx4_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.qnx4_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
