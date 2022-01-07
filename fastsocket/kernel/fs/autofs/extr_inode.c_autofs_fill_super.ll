; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_autofs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_inode.c_autofs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, %struct.autofs_sb_info*, %struct.dentry*, i32*, i32 }
%struct.autofs_sb_info = type { i32, i32, %struct.file*, %struct.super_block*, i32, i32, i32*, i32, i64, i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"autofs: starting up, sbi = %p\0A\00", align 1
@AUTOFS_SBI_MAGIC = common dso_local global i32 0, align 4
@AUTOFS_SYMLINK_BITMAP_LEN = common dso_local global i32 0, align 4
@AUTOFS_FIRST_DIR_INO = common dso_local global i32 0, align 4
@AUTOFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@autofs_sops = common dso_local global i32 0, align 4
@AUTOFS_ROOT_INO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"autofs: called with bogus options\0A\00", align 1
@AUTOFS_PROTO_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"autofs: kernel does not match daemon version\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"autofs: pipe fd = %d, pgrp = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"autofs: could not find process group %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"autofs: could not open pipe file descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"autofs: pipe file descriptor does not contain proper ops\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"autofs: get root dentry failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.autofs_sb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @save_mount_options(%struct.super_block* %16, i8* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.autofs_sb_info* @kzalloc(i32 64, i32 %19)
  store %struct.autofs_sb_info* %20, %struct.autofs_sb_info** %12, align 8
  %21 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %22 = icmp ne %struct.autofs_sb_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %170

24:                                               ; preds = %3
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %26 = bitcast %struct.autofs_sb_info* %25 to i8*
  %27 = call i32 @DPRINTK(i8* %26)
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 3
  store %struct.autofs_sb_info* %28, %struct.autofs_sb_info** %30, align 8
  %31 = load i32, i32* @AUTOFS_SBI_MAGIC, align 4
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 8
  %34 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %35 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %34, i32 0, i32 2
  store %struct.file* null, %struct.file** %35, align 8
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %37 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %39 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %41 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %40, i32 0, i32 7
  %42 = call i32 @autofs_initialize_hash(i32* %41)
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 6
  store i32* null, i32** %44, align 8
  %45 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %46 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AUTOFS_SYMLINK_BITMAP_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32 %47, i32 0, i32 %51)
  %53 = load i32, i32* @AUTOFS_FIRST_DIR_INO, align 4
  %54 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %55 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 0
  store i32 1024, i32* %57, align 8
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 1
  store i32 10, i32* %59, align 4
  %60 = load i32, i32* @AUTOFS_SUPER_MAGIC, align 4
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 5
  store i32* @autofs_sops, i32** %64, align 8
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 3
  store %struct.super_block* %67, %struct.super_block** %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load i32, i32* @AUTOFS_ROOT_INO, align 4
  %72 = call %struct.inode* @autofs_iget(%struct.super_block* %70, i32 %71)
  store %struct.inode* %72, %struct.inode** %8, align 8
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i64 @IS_ERR(%struct.inode* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %24
  br label %165

77:                                               ; preds = %24
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call %struct.dentry* @d_alloc_root(%struct.inode* %78)
  store %struct.dentry* %79, %struct.dentry** %9, align 8
  store %struct.file* null, %struct.file** %10, align 8
  %80 = load %struct.dentry*, %struct.dentry** %9, align 8
  %81 = icmp ne %struct.dentry* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %161

83:                                               ; preds = %77
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = call i64 @parse_options(i8* %84, i32* %11, i32* %86, i32* %88, i32* %15, i32* %13, i32* %14)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %158

93:                                               ; preds = %83
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @AUTOFS_PROTO_VERSION, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @AUTOFS_PROTO_VERSION, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %93
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %158

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @DPRINTK(i8* %107)
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @find_get_pid(i32 %109)
  %111 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %112 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %114 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %15, align 4
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %158

120:                                              ; preds = %103
  %121 = load i32, i32* %11, align 4
  %122 = call %struct.file* @fget(i32 %121)
  store %struct.file* %122, %struct.file** %10, align 8
  %123 = load %struct.file*, %struct.file** %10, align 8
  %124 = icmp ne %struct.file* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %153

127:                                              ; preds = %120
  %128 = load %struct.file*, %struct.file** %10, align 8
  %129 = getelementptr inbounds %struct.file, %struct.file* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = icmp ne %struct.TYPE_2__* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.file*, %struct.file** %10, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132, %127
  br label %149

140:                                              ; preds = %132
  %141 = load %struct.file*, %struct.file** %10, align 8
  %142 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %143 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %142, i32 0, i32 2
  store %struct.file* %141, %struct.file** %143, align 8
  %144 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %145 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.dentry*, %struct.dentry** %9, align 8
  %147 = load %struct.super_block*, %struct.super_block** %5, align 8
  %148 = getelementptr inbounds %struct.super_block, %struct.super_block* %147, i32 0, i32 4
  store %struct.dentry* %146, %struct.dentry** %148, align 8
  store i32 0, i32* %4, align 4
  br label %173

149:                                              ; preds = %139
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %151 = load %struct.file*, %struct.file** %10, align 8
  %152 = call i32 @fput(%struct.file* %151)
  br label %153

153:                                              ; preds = %149, %125
  %154 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %155 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @put_pid(i32 %156)
  br label %158

158:                                              ; preds = %153, %117, %101, %91
  %159 = load %struct.dentry*, %struct.dentry** %9, align 8
  %160 = call i32 @dput(%struct.dentry* %159)
  br label %165

161:                                              ; preds = %82
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = call i32 @iput(%struct.inode* %163)
  br label %165

165:                                              ; preds = %161, %158, %76
  %166 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %167 = call i32 @kfree(%struct.autofs_sb_info* %166)
  %168 = load %struct.super_block*, %struct.super_block** %5, align 8
  %169 = getelementptr inbounds %struct.super_block, %struct.super_block* %168, i32 0, i32 3
  store %struct.autofs_sb_info* null, %struct.autofs_sb_info** %169, align 8
  br label %170

170:                                              ; preds = %165, %23
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %170, %140
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local %struct.autofs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @autofs_initialize_hash(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.inode* @autofs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i64 @parse_options(i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @find_get_pid(i32) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.autofs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
