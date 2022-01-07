; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i64, i32, i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.super_block*, i32, i64, i64, i32, i32, i32, i8*, i8* }
%struct.super_block = type { i32 }
%struct.reiserfs_security_handle = type { i64 }
%struct.reiserfs_iget_args = type { i8*, i8* }
%struct.cpu_key = type { i32 }
%struct.item_head = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.stat_data = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32*, i64, i64, i64, i64, i32 }

@path_to_key = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@SD_OFFSET = common dso_local global i32 0, align 4
@TYPE_STAT_DATA = common dso_local global i32 0, align 4
@SD_V1_SIZE = common dso_local global i32 0, align 4
@MAX_US_INT = common dso_local global i32 0, align 4
@KEY_FORMAT_3_6 = common dso_local global i32 0, align 4
@SD_SIZE = common dso_local global i32 0, align 4
@KEY_SIZE = common dso_local global i32 0, align 4
@reiserfs_find_actor = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@event = common dso_local global i8* null, align 8
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@REISERFS_INHERIT_MASK = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i32 0, align 4
@STAT_DATA_V2 = common dso_local global i32 0, align 4
@MS_POSIXACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"jdm-13090\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ACLs aren't enabled in the fs, but vfs thinks they are!\00", align 1
@S_PRIVATE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_new_inode(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2, i8* %3, i32 %4, %struct.dentry* %5, %struct.inode* %6, %struct.reiserfs_security_handle* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_transaction_handle*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.reiserfs_security_handle*, align 8
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca %struct.reiserfs_iget_args, align 8
  %20 = alloca %struct.cpu_key, align 4
  %21 = alloca %struct.item_head, align 8
  %22 = alloca %struct.stat_data, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.dentry* %5, %struct.dentry** %15, align 8
  store %struct.inode* %6, %struct.inode** %16, align 8
  store %struct.reiserfs_security_handle* %7, %struct.reiserfs_security_handle** %17, align 8
  %25 = load i32, i32* @path_to_key, align 4
  %26 = call i32 @INITIALIZE_PATH(i32 %25)
  %27 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %28 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = call i64 @vfs_dq_alloc_inode(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %8
  %38 = load i32, i32* @EDQUOT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %24, align 4
  br label %452

40:                                               ; preds = %8
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EPERM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %24, align 4
  br label %446

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 5
  %51 = load %struct.super_block*, %struct.super_block** %50, align 8
  store %struct.super_block* %51, %struct.super_block** %18, align 8
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = call i64 @reiserfs_choose_packing(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %57 = call i32 @reiserfs_get_unused_objectid(%struct.reiserfs_transaction_handle* %56)
  %58 = call i64 @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %24, align 4
  br label %446

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @le32_to_cpu(i64 %71)
  %73 = load %struct.inode*, %struct.inode** %16, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.super_block*, %struct.super_block** %18, align 8
  %77 = call i64 @old_format_only(%struct.super_block* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %81 = load i32, i32* @SD_OFFSET, align 4
  %82 = load i32, i32* @TYPE_STAT_DATA, align 4
  %83 = load i32, i32* @SD_V1_SIZE, align 4
  %84 = load i32, i32* @MAX_US_INT, align 4
  %85 = call i32 @make_le_item_head(%struct.item_head* %21, i32* null, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  br label %93

86:                                               ; preds = %68
  %87 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %88 = load i32, i32* @SD_OFFSET, align 4
  %89 = load i32, i32* @TYPE_STAT_DATA, align 4
  %90 = load i32, i32* @SD_SIZE, align 4
  %91 = load i32, i32* @MAX_US_INT, align 4
  %92 = call i32 @make_le_item_head(%struct.item_head* %21, i32* null, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.inode*, %struct.inode** %16, align 8
  %95 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %97 = load i32, i32* @KEY_SIZE, align 4
  %98 = call i32 @memcpy(%struct.TYPE_8__* %95, %struct.TYPE_9__* %96, i32 %97)
  %99 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @le32_to_cpu(i64 %101)
  %103 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = load %struct.inode*, %struct.inode** %16, align 8
  %105 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %19, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @reiserfs_find_actor, align 4
  %108 = call i64 @insert_inode_locked4(%struct.inode* %104, i8* %106, i32 %107, %struct.reiserfs_iget_args* %19)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %24, align 4
  br label %446

113:                                              ; preds = %93
  %114 = load %struct.super_block*, %struct.super_block** %18, align 8
  %115 = call i64 @old_format_only(%struct.super_block* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.inode*, %struct.inode** %11, align 8
  %119 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @le32_to_cpu(i64 %121)
  %123 = load %struct.inode*, %struct.inode** %16, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 12
  store i8* %122, i8** %124, align 8
  br label %130

125:                                              ; preds = %113
  %126 = load i8*, i8** @event, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** @event, align 8
  %128 = load %struct.inode*, %struct.inode** %16, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 12
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %117
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @S_ISDIR(i32 %131)
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 2, i32 1
  %136 = load %struct.inode*, %struct.inode** %16, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.inode*, %struct.inode** %16, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @S_ISLNK(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %130
  %144 = load i32, i32* @S_IMMUTABLE, align 4
  %145 = load i32, i32* @S_APPEND, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load %struct.inode*, %struct.inode** %16, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %143, %130
  %153 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %154 = load %struct.inode*, %struct.inode** %16, align 8
  %155 = getelementptr inbounds %struct.inode, %struct.inode* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  %156 = load %struct.inode*, %struct.inode** %16, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 10
  store i32 %153, i32* %157, align 4
  %158 = load %struct.inode*, %struct.inode** %16, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 11
  store i32 %153, i32* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.inode*, %struct.inode** %16, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.inode*, %struct.inode** %16, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 8
  store i64 0, i64* %164, align 8
  %165 = load %struct.inode*, %struct.inode** %16, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 7
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i64 @S_ISLNK(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %152
  br label %173

171:                                              ; preds = %152
  %172 = load i32, i32* @U32_MAX, align 4
  br label %173

173:                                              ; preds = %171, %170
  %174 = phi i32 [ 1, %170 ], [ %172, %171 ]
  %175 = load %struct.inode*, %struct.inode** %16, align 8
  %176 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %175)
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load %struct.inode*, %struct.inode** %16, align 8
  %179 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %178)
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 9
  %181 = call i32 @INIT_LIST_HEAD(i32* %180)
  %182 = load %struct.inode*, %struct.inode** %16, align 8
  %183 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %182)
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 8
  store i64 0, i64* %184, align 8
  %185 = load %struct.inode*, %struct.inode** %16, align 8
  %186 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %185)
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 7
  store i64 0, i64* %187, align 8
  %188 = load %struct.inode*, %struct.inode** %16, align 8
  %189 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %188)
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 6
  store i64 0, i64* %190, align 8
  %191 = load %struct.inode*, %struct.inode** %16, align 8
  %192 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %191)
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  store i64 0, i64* %193, align 8
  %194 = load %struct.inode*, %struct.inode** %16, align 8
  %195 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %194)
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 4
  store i32* null, i32** %196, align 8
  %197 = load %struct.inode*, %struct.inode** %11, align 8
  %198 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %197)
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @REISERFS_INHERIT_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load %struct.inode*, %struct.inode** %16, align 8
  %204 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %203)
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 4
  %206 = load %struct.inode*, %struct.inode** %16, align 8
  %207 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %206)
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.inode*, %struct.inode** %16, align 8
  %211 = call i32 @sd_attrs_to_i_attrs(i32 %209, %struct.inode* %210)
  %212 = load %struct.inode*, %struct.inode** %16, align 8
  %213 = call %struct.TYPE_11__* @REISERFS_I(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = call i32 @mutex_init(i32* %214)
  %216 = load %struct.inode*, %struct.inode** %16, align 8
  %217 = call i32 @reiserfs_init_xattr_rwsem(%struct.inode* %216)
  %218 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %219 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @le32_to_cpu(i64 %221)
  %223 = getelementptr inbounds %struct.item_head, %struct.item_head* %21, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i8* @le32_to_cpu(i64 %225)
  %227 = load i32, i32* @SD_OFFSET, align 4
  %228 = load i32, i32* @TYPE_STAT_DATA, align 4
  %229 = call i32 @_make_cpu_key(%struct.cpu_key* %20, i32 %218, i8* %222, i8* %226, i32 %227, i32 %228, i32 3)
  %230 = load %struct.super_block*, %struct.super_block** %18, align 8
  %231 = call i32 @search_item(%struct.super_block* %230, %struct.cpu_key* %20, i32* @path_to_key)
  store i32 %231, i32* %23, align 4
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* @IO_ERROR, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %173
  %236 = load i32, i32* @EIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %24, align 4
  br label %446

238:                                              ; preds = %173
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* @ITEM_FOUND, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = call i32 @pathrelse(i32* @path_to_key)
  %244 = load i32, i32* @EEXIST, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %24, align 4
  br label %446

246:                                              ; preds = %238
  %247 = load %struct.super_block*, %struct.super_block** %18, align 8
  %248 = call i64 @old_format_only(%struct.super_block* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %272

250:                                              ; preds = %246
  %251 = load %struct.inode*, %struct.inode** %16, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, -65536
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %250
  %257 = load %struct.inode*, %struct.inode** %16, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, -65536
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %256, %250
  %263 = call i32 @pathrelse(i32* @path_to_key)
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %24, align 4
  br label %446

266:                                              ; preds = %256
  %267 = load %struct.inode*, %struct.inode** %16, align 8
  %268 = load %struct.inode*, %struct.inode** %16, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @inode2sd_v1(%struct.stat_data* %22, %struct.inode* %267, i32 %270)
  br label %278

272:                                              ; preds = %246
  %273 = load %struct.inode*, %struct.inode** %16, align 8
  %274 = load %struct.inode*, %struct.inode** %16, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @inode2sd(%struct.stat_data* %22, %struct.inode* %273, i32 %276)
  br label %278

278:                                              ; preds = %272, %266
  %279 = load %struct.super_block*, %struct.super_block** %18, align 8
  %280 = call i64 @old_format_only(%struct.super_block* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %278
  %283 = load i32, i32* %12, align 4
  %284 = call i64 @S_ISDIR(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* %12, align 4
  %288 = call i64 @S_ISLNK(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %286, %282, %278
  %291 = load %struct.inode*, %struct.inode** %16, align 8
  %292 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %293 = call i32 @set_inode_item_key_version(%struct.inode* %291, i32 %292)
  br label %298

294:                                              ; preds = %286
  %295 = load %struct.inode*, %struct.inode** %16, align 8
  %296 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %297 = call i32 @set_inode_item_key_version(%struct.inode* %295, i32 %296)
  br label %298

298:                                              ; preds = %294, %290
  %299 = load %struct.super_block*, %struct.super_block** %18, align 8
  %300 = call i64 @old_format_only(%struct.super_block* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = load %struct.inode*, %struct.inode** %16, align 8
  %304 = load i32, i32* @STAT_DATA_V1, align 4
  %305 = call i32 @set_inode_sd_version(%struct.inode* %303, i32 %304)
  br label %310

306:                                              ; preds = %298
  %307 = load %struct.inode*, %struct.inode** %16, align 8
  %308 = load i32, i32* @STAT_DATA_V2, align 4
  %309 = call i32 @set_inode_sd_version(%struct.inode* %307, i32 %308)
  br label %310

310:                                              ; preds = %306, %302
  %311 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %312 = load %struct.inode*, %struct.inode** %16, align 8
  %313 = bitcast %struct.stat_data* %22 to i8*
  %314 = call i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %311, i32* @path_to_key, %struct.cpu_key* %20, %struct.item_head* %21, %struct.inode* %312, i8* %313)
  store i32 %314, i32* %23, align 4
  %315 = load i32, i32* %23, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %310
  %318 = load i32, i32* %23, align 4
  store i32 %318, i32* %24, align 4
  %319 = call i32 @reiserfs_check_path(i32* @path_to_key)
  br label %446

320:                                              ; preds = %310
  %321 = load i32, i32* %12, align 4
  %322 = call i64 @S_ISDIR(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %326 = load %struct.inode*, %struct.inode** %16, align 8
  %327 = load %struct.inode*, %struct.inode** %11, align 8
  %328 = call i32 @reiserfs_new_directory(%struct.reiserfs_transaction_handle* %325, %struct.inode* %326, %struct.item_head* %21, i32* @path_to_key, %struct.inode* %327)
  store i32 %328, i32* %23, align 4
  br label %329

329:                                              ; preds = %324, %320
  %330 = load i32, i32* %12, align 4
  %331 = call i64 @S_ISLNK(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %329
  %334 = load %struct.super_block*, %struct.super_block** %18, align 8
  %335 = call i64 @old_format_only(%struct.super_block* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %14, align 4
  %339 = call i32 @ROUND_UP(i32 %338)
  store i32 %339, i32* %14, align 4
  br label %340

340:                                              ; preds = %337, %333
  %341 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %342 = load %struct.inode*, %struct.inode** %16, align 8
  %343 = load i8*, i8** %13, align 8
  %344 = load i32, i32* %14, align 4
  %345 = call i32 @reiserfs_new_symlink(%struct.reiserfs_transaction_handle* %341, %struct.inode* %342, %struct.item_head* %21, i32* @path_to_key, i8* %343, i32 %344)
  store i32 %345, i32* %23, align 4
  br label %346

346:                                              ; preds = %340, %329
  %347 = load i32, i32* %23, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %346
  %350 = load i32, i32* %23, align 4
  store i32 %350, i32* %24, align 4
  %351 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %352 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %353 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %354 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %357 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %352, i32 %355, i32 %358)
  br label %470

360:                                              ; preds = %346
  %361 = load %struct.inode*, %struct.inode** %16, align 8
  %362 = getelementptr inbounds %struct.inode, %struct.inode* %361, i32 0, i32 5
  %363 = load %struct.super_block*, %struct.super_block** %362, align 8
  %364 = call i64 @reiserfs_posixacl(%struct.super_block* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %386

366:                                              ; preds = %360
  %367 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %368 = load %struct.inode*, %struct.inode** %11, align 8
  %369 = load %struct.dentry*, %struct.dentry** %15, align 8
  %370 = load %struct.inode*, %struct.inode** %16, align 8
  %371 = call i32 @reiserfs_inherit_default_acl(%struct.reiserfs_transaction_handle* %367, %struct.inode* %368, %struct.dentry* %369, %struct.inode* %370)
  store i32 %371, i32* %23, align 4
  %372 = load i32, i32* %23, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %385

374:                                              ; preds = %366
  %375 = load i32, i32* %23, align 4
  store i32 %375, i32* %24, align 4
  %376 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %377 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %378 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %379 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %382 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %377, i32 %380, i32 %383)
  br label %470

385:                                              ; preds = %366
  br label %412

386:                                              ; preds = %360
  %387 = load %struct.inode*, %struct.inode** %16, align 8
  %388 = getelementptr inbounds %struct.inode, %struct.inode* %387, i32 0, i32 5
  %389 = load %struct.super_block*, %struct.super_block** %388, align 8
  %390 = getelementptr inbounds %struct.super_block, %struct.super_block* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @MS_POSIXACL, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %386
  %396 = load %struct.inode*, %struct.inode** %16, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 5
  %398 = load %struct.super_block*, %struct.super_block** %397, align 8
  %399 = call i32 @reiserfs_warning(%struct.super_block* %398, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %411

400:                                              ; preds = %386
  %401 = load %struct.inode*, %struct.inode** %11, align 8
  %402 = call i64 @IS_PRIVATE(%struct.inode* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %400
  %405 = load i32, i32* @S_PRIVATE, align 4
  %406 = load %struct.inode*, %struct.inode** %16, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = or i32 %408, %405
  store i32 %409, i32* %407, align 8
  br label %410

410:                                              ; preds = %404, %400
  br label %411

411:                                              ; preds = %410, %395
  br label %412

412:                                              ; preds = %411, %385
  %413 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %17, align 8
  %414 = getelementptr inbounds %struct.reiserfs_security_handle, %struct.reiserfs_security_handle* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %441

417:                                              ; preds = %412
  %418 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %419 = load %struct.inode*, %struct.inode** %16, align 8
  %420 = load %struct.reiserfs_security_handle*, %struct.reiserfs_security_handle** %17, align 8
  %421 = call i32 @reiserfs_security_write(%struct.reiserfs_transaction_handle* %418, %struct.inode* %419, %struct.reiserfs_security_handle* %420)
  store i32 %421, i32* %23, align 4
  %422 = load i32, i32* %23, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %440

424:                                              ; preds = %417
  %425 = load i32, i32* %23, align 4
  store i32 %425, i32* %24, align 4
  %426 = call i32 @reiserfs_check_path(i32* @path_to_key)
  %427 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %428 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %429 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %432 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %427, i32 %430, i32 %433)
  store i32 %434, i32* %23, align 4
  %435 = load i32, i32* %23, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %424
  %438 = load i32, i32* %23, align 4
  store i32 %438, i32* %24, align 4
  br label %439

439:                                              ; preds = %437, %424
  br label %470

440:                                              ; preds = %417
  br label %441

441:                                              ; preds = %440, %412
  %442 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %443 = load %struct.inode*, %struct.inode** %16, align 8
  %444 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %442, %struct.inode* %443)
  %445 = call i32 @reiserfs_check_path(i32* @path_to_key)
  store i32 0, i32* %9, align 4
  br label %480

446:                                              ; preds = %317, %262, %242, %235, %110, %65, %45
  %447 = load %struct.inode*, %struct.inode** %16, align 8
  %448 = call %struct.TYPE_8__* @INODE_PKEY(%struct.inode* %447)
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 0
  store i64 0, i64* %449, align 8
  %450 = load %struct.inode*, %struct.inode** %16, align 8
  %451 = call i32 @vfs_dq_free_inode(%struct.inode* %450)
  br label %452

452:                                              ; preds = %446, %37
  %453 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %454 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %455 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %458 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %453, i32 %456, i32 %459)
  %461 = load %struct.inode*, %struct.inode** %16, align 8
  %462 = call i32 @vfs_dq_drop(%struct.inode* %461)
  %463 = load i32, i32* @S_NOQUOTA, align 4
  %464 = load %struct.inode*, %struct.inode** %16, align 8
  %465 = getelementptr inbounds %struct.inode, %struct.inode* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %463
  store i32 %467, i32* %465, align 8
  %468 = load %struct.inode*, %struct.inode** %16, align 8
  %469 = call i32 @make_bad_inode(%struct.inode* %468)
  br label %470

470:                                              ; preds = %452, %439, %374, %349
  %471 = load %struct.inode*, %struct.inode** %16, align 8
  %472 = getelementptr inbounds %struct.inode, %struct.inode* %471, i32 0, i32 0
  store i32 0, i32* %472, align 8
  %473 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %10, align 8
  %474 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %473, i32 0, i32 1
  store i64 0, i64* %474, align 8
  %475 = load %struct.inode*, %struct.inode** %16, align 8
  %476 = call i32 @unlock_new_inode(%struct.inode* %475)
  %477 = load %struct.inode*, %struct.inode** %16, align 8
  %478 = call i32 @iput(%struct.inode* %477)
  %479 = load i32, i32* %24, align 4
  store i32 %479, i32* %9, align 4
  br label %480

480:                                              ; preds = %470, %441
  %481 = load i32, i32* %9, align 4
  ret i32 %481
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @vfs_dq_alloc_inode(%struct.inode*) #1

declare dso_local i64 @reiserfs_choose_packing(%struct.inode*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @reiserfs_get_unused_objectid(%struct.reiserfs_transaction_handle*) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i64 @old_format_only(%struct.super_block*) #1

declare dso_local i32 @make_le_item_head(%struct.item_head*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_8__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i64 @insert_inode_locked4(%struct.inode*, i8*, i32, %struct.reiserfs_iget_args*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_11__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sd_attrs_to_i_attrs(i32, %struct.inode*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @reiserfs_init_xattr_rwsem(%struct.inode*) #1

declare dso_local i32 @_make_cpu_key(%struct.cpu_key*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @search_item(%struct.super_block*, %struct.cpu_key*, i32*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @inode2sd_v1(%struct.stat_data*, %struct.inode*, i32) #1

declare dso_local i32 @inode2sd(%struct.stat_data*, %struct.inode*, i32) #1

declare dso_local i32 @set_inode_item_key_version(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_sd_version(%struct.inode*, i32) #1

declare dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle*, i32*, %struct.cpu_key*, %struct.item_head*, %struct.inode*, i8*) #1

declare dso_local i32 @reiserfs_check_path(i32*) #1

declare dso_local i32 @reiserfs_new_directory(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, i32*, %struct.inode*) #1

declare dso_local i32 @ROUND_UP(i32) #1

declare dso_local i32 @reiserfs_new_symlink(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.item_head*, i32*, i8*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i64 @reiserfs_posixacl(%struct.super_block*) #1

declare dso_local i32 @reiserfs_inherit_default_acl(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @reiserfs_security_write(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.reiserfs_security_handle*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
