; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_inode.c_autofs4_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, %struct.autofs_sb_info*, %struct.dentry*, i32*, i32 }
%struct.autofs_sb_info = type { i32, i32, i64, i64, i64, %struct.file*, i32, i64, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.super_block*, i64, i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { %struct.autofs_sb_info*, i32* }
%struct.inode = type { i32*, i32*, i32, i32 }
%struct.autofs_info = type { i32, i32, i64, i64, i64, %struct.file*, i32, i64, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.super_block*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"starting up, sbi = %p\00", align 1
@AUTOFS_SBI_MAGIC = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@AUTOFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@autofs4_sops = common dso_local global i32 0, align 4
@autofs4_dentry_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"autofs: called with bogus options\0A\00", align 1
@autofs4_root_operations = common dso_local global i32 0, align 4
@autofs4_dir_inode_operations = common dso_local global i32 0, align 4
@AUTOFS_MIN_PROTO_VERSION = common dso_local global i64 0, align 8
@AUTOFS_MAX_PROTO_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"autofs: kernel does not match daemon version daemon (%d, %d) kernel (%d, %d)\0A\00", align 1
@AUTOFS_PROTO_SUBVERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"pipe fd = %d, pgrp = %u\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"autofs: could not open pipe file descriptor\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"autofs: pipe file descriptor does not contain proper ops\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"autofs: get root dentry failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs4_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.autofs_sb_info*, align 8
  %13 = alloca %struct.autofs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.autofs_sb_info* @kzalloc(i32 120, i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %12, align 8
  %16 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %17 = icmp ne %struct.autofs_sb_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %240

19:                                               ; preds = %3
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %21 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.autofs_sb_info* %20)
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 3
  store %struct.autofs_sb_info* %22, %struct.autofs_sb_info** %24, align 8
  %25 = load i32, i32* @AUTOFS_SBI_MAGIC, align 4
  %26 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %27 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %26, i32 0, i32 18
  store i32 %25, i32* %27, align 8
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %29 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %31 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %30, i32 0, i32 5
  store %struct.file* null, %struct.file** %31, align 8
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %35 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %34, i32 0, i32 17
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @current, align 4
  %37 = call i32 @task_pgrp_nr(i32 %36)
  %38 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %39 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 16
  store %struct.super_block* %40, %struct.super_block** %42, align 8
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %46 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %48 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %47, i32 0, i32 8
  %49 = call i32 @set_autofs_type_indirect(i32* %48)
  %50 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %51 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %55 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %54, i32 0, i32 15
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %58 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %57, i32 0, i32 14
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %61 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %60, i32 0, i32 13
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %64 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %63, i32 0, i32 12
  store i32* null, i32** %64, align 8
  %65 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %66 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %65, i32 0, i32 11
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 10
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %72 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %71, i32 0, i32 9
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 0
  store i32 1024, i32* %75, align 8
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 1
  store i32 10, i32* %77, align 4
  %78 = load i32, i32* @AUTOFS_SUPER_MAGIC, align 4
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = getelementptr inbounds %struct.super_block, %struct.super_block* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 5
  store i32* @autofs4_sops, i32** %82, align 8
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %86 = call %struct.autofs_sb_info* @autofs4_mkroot(%struct.autofs_sb_info* %85)
  %87 = bitcast %struct.autofs_sb_info* %86 to %struct.autofs_info*
  store %struct.autofs_info* %87, %struct.autofs_info** %13, align 8
  %88 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %89 = icmp ne %struct.autofs_info* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %19
  br label %235

91:                                               ; preds = %19
  %92 = load %struct.super_block*, %struct.super_block** %5, align 8
  %93 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %94 = bitcast %struct.autofs_info* %93 to %struct.autofs_sb_info*
  %95 = call %struct.inode* @autofs4_get_inode(%struct.super_block* %92, %struct.autofs_sb_info* %94)
  store %struct.inode* %95, %struct.inode** %8, align 8
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %231

99:                                               ; preds = %91
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call %struct.dentry* @d_alloc_root(%struct.inode* %100)
  store %struct.dentry* %101, %struct.dentry** %9, align 8
  %102 = load %struct.dentry*, %struct.dentry** %9, align 8
  %103 = icmp ne %struct.dentry* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %227

105:                                              ; preds = %99
  store %struct.file* null, %struct.file** %10, align 8
  %106 = load %struct.dentry*, %struct.dentry** %9, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 1
  store i32* @autofs4_dentry_operations, i32** %107, align 8
  %108 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %109 = bitcast %struct.autofs_info* %108 to %struct.autofs_sb_info*
  %110 = load %struct.dentry*, %struct.dentry** %9, align 8
  %111 = getelementptr inbounds %struct.dentry, %struct.dentry* %110, i32 0, i32 0
  store %struct.autofs_sb_info* %109, %struct.autofs_sb_info** %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 3
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 2
  %117 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %118 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %117, i32 0, i32 6
  %119 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %120 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %119, i32 0, i32 8
  %121 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %122 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %121, i32 0, i32 3
  %123 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %124 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %123, i32 0, i32 4
  %125 = call i64 @parse_options(i8* %112, i32* %11, i32* %114, i32* %116, i32* %118, i32* %120, i64* %122, i64* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %105
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %224

129:                                              ; preds = %105
  %130 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %131 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @autofs_type_trigger(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.dentry*, %struct.dentry** %9, align 8
  %137 = call i32 @__managed_dentry_set_managed(%struct.dentry* %136)
  br label %138

138:                                              ; preds = %135, %129
  %139 = load %struct.inode*, %struct.inode** %8, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  store i32* @autofs4_root_operations, i32** %140, align 8
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  store i32* @autofs4_dir_inode_operations, i32** %142, align 8
  %143 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %144 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AUTOFS_MIN_PROTO_VERSION, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %138
  %149 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %150 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %148, %138
  %155 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %156 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %159 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AUTOFS_MIN_PROTO_VERSION, align 8
  %162 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i64 %157, i64 %160, i64 %161, i64 %162)
  br label %224

164:                                              ; preds = %148
  %165 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %166 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %172 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %173 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  br label %180

174:                                              ; preds = %164
  %175 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %176 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %179 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %174, %170
  %181 = load i64, i64* @AUTOFS_PROTO_SUBVERSION, align 8
  %182 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %183 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %182, i32 0, i32 7
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %186 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %184, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = call %struct.file* @fget(i32 %189)
  store %struct.file* %190, %struct.file** %10, align 8
  %191 = load %struct.file*, %struct.file** %10, align 8
  %192 = icmp ne %struct.file* %191, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %180
  %194 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %224

195:                                              ; preds = %180
  %196 = load %struct.file*, %struct.file** %10, align 8
  %197 = getelementptr inbounds %struct.file, %struct.file* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = icmp ne %struct.TYPE_2__* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.file*, %struct.file** %10, align 8
  %202 = getelementptr inbounds %struct.file, %struct.file* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %200, %195
  br label %220

208:                                              ; preds = %200
  %209 = load %struct.file*, %struct.file** %10, align 8
  %210 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %211 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %210, i32 0, i32 5
  store %struct.file* %209, %struct.file** %211, align 8
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %214 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %216 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = load %struct.dentry*, %struct.dentry** %9, align 8
  %218 = load %struct.super_block*, %struct.super_block** %5, align 8
  %219 = getelementptr inbounds %struct.super_block, %struct.super_block* %218, i32 0, i32 4
  store %struct.dentry* %217, %struct.dentry** %219, align 8
  store i32 0, i32* %4, align 4
  br label %243

220:                                              ; preds = %207
  %221 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %222 = load %struct.file*, %struct.file** %10, align 8
  %223 = call i32 @fput(%struct.file* %222)
  br label %224

224:                                              ; preds = %220, %193, %154, %127
  %225 = load %struct.dentry*, %struct.dentry** %9, align 8
  %226 = call i32 @dput(%struct.dentry* %225)
  br label %235

227:                                              ; preds = %104
  %228 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %229 = load %struct.inode*, %struct.inode** %8, align 8
  %230 = call i32 @iput(%struct.inode* %229)
  br label %231

231:                                              ; preds = %227, %98
  %232 = load %struct.autofs_info*, %struct.autofs_info** %13, align 8
  %233 = bitcast %struct.autofs_info* %232 to %struct.autofs_sb_info*
  %234 = call i32 @kfree(%struct.autofs_sb_info* %233)
  br label %235

235:                                              ; preds = %231, %224, %90
  %236 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %12, align 8
  %237 = call i32 @kfree(%struct.autofs_sb_info* %236)
  %238 = load %struct.super_block*, %struct.super_block** %5, align 8
  %239 = getelementptr inbounds %struct.super_block, %struct.super_block* %238, i32 0, i32 3
  store %struct.autofs_sb_info* null, %struct.autofs_sb_info** %239, align 8
  br label %240

240:                                              ; preds = %235, %18
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %240, %208
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local %struct.autofs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @task_pgrp_nr(i32) #1

declare dso_local i32 @set_autofs_type_indirect(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.autofs_sb_info* @autofs4_mkroot(%struct.autofs_sb_info*) #1

declare dso_local %struct.inode* @autofs4_get_inode(%struct.super_block*, %struct.autofs_sb_info*) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i64 @parse_options(i8*, i32*, i32*, i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @autofs_type_trigger(i32) #1

declare dso_local i32 @__managed_dentry_set_managed(%struct.dentry*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.autofs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
