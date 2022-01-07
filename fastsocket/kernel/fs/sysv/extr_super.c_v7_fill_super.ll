; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_v7_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_v7_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.sysv_sb_info* }
%struct.sysv_sb_info = type { %struct.buffer_head*, %struct.buffer_head*, i32, i32, i64, %struct.super_block* }
%struct.buffer_head = type { i64 }
%struct.v7_super_block = type { i32, i32, i32 }
%struct.sysv_inode = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"V7 FS: bad super-block size\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sysv fs: bad i-node size\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSTYPE_V7 = common dso_local global i32 0, align 4
@BYTESEX_PDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"VFS: unable to read V7 FS superblock on device %s.\0A\00", align 1
@V7_NICFREE = common dso_local global i32 0, align 4
@V7_NICINOD = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @v7_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v7_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysv_sb_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.v7_super_block*, align 8
  %12 = alloca %struct.sysv_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %13 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sysv_sb_info* @kzalloc(i32 40, i32 %15)
  store %struct.sysv_sb_info* %16, %struct.sysv_sb_info** %8, align 8
  %17 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %18 = icmp ne %struct.sysv_sb_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %138

22:                                               ; preds = %3
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %24, i32 0, i32 5
  store %struct.super_block* %23, %struct.super_block** %25, align 8
  %26 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %27 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @FSTYPE_V7, align 4
  %29 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %30 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BYTESEX_PDP, align 4
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  store %struct.sysv_sb_info* %34, %struct.sysv_sb_info** %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call i32 @sb_set_blocksize(%struct.super_block* %37, i32 512)
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call %struct.buffer_head* @sb_bread(%struct.super_block* %39, i32 1)
  store %struct.buffer_head* %40, %struct.buffer_head** %9, align 8
  %41 = icmp eq %struct.buffer_head* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %129

51:                                               ; preds = %22
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.v7_super_block*
  store %struct.v7_super_block* %55, %struct.v7_super_block** %11, align 8
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %57 = load %struct.v7_super_block*, %struct.v7_super_block** %11, align 8
  %58 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %56, i32 %59)
  %61 = load i32, i32* @V7_NICFREE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %51
  %64 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %65 = load %struct.v7_super_block*, %struct.v7_super_block** %11, align 8
  %66 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %64, i32 %67)
  %69 = load i32, i32* @V7_NICINOD, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %73 = load %struct.v7_super_block*, %struct.v7_super_block** %11, align 8
  %74 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %72, i32 %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %63, %51
  br label %129

79:                                               ; preds = %71
  %80 = load %struct.super_block*, %struct.super_block** %5, align 8
  %81 = call %struct.buffer_head* @sb_bread(%struct.super_block* %80, i32 2)
  store %struct.buffer_head* %81, %struct.buffer_head** %10, align 8
  %82 = icmp eq %struct.buffer_head* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %129

84:                                               ; preds = %79
  %85 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 64
  %89 = inttoptr i64 %88 to %struct.sysv_inode*
  store %struct.sysv_inode* %89, %struct.sysv_inode** %12, align 8
  %90 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %91 = load %struct.sysv_inode*, %struct.sysv_inode** %12, align 8
  %92 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %90, i32 %93)
  %95 = and i32 %94, -512
  %96 = load i32, i32* @S_IFDIR, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %113, label %98

98:                                               ; preds = %84
  %99 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %100 = load %struct.sysv_inode*, %struct.sysv_inode** %12, align 8
  %101 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %99, i32 %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %98
  %106 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %107 = load %struct.sysv_inode*, %struct.sysv_inode** %12, align 8
  %108 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %106, i32 %109)
  %111 = and i32 %110, 15
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %98, %84
  br label %129

114:                                              ; preds = %105
  %115 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %116 = call i32 @brelse(%struct.buffer_head* %115)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %119 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %118, i32 0, i32 1
  store %struct.buffer_head* %117, %struct.buffer_head** %119, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %121 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %122 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %121, i32 0, i32 0
  store %struct.buffer_head* %120, %struct.buffer_head** %122, align 8
  %123 = load %struct.super_block*, %struct.super_block** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @complete_read_super(%struct.super_block* %123, i32 %124, i32 1)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %138

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %113, %83, %78, %50
  %130 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %135 = call i32 @kfree(%struct.sysv_sb_info* %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %129, %127, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.sysv_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @complete_read_super(%struct.super_block*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sysv_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
