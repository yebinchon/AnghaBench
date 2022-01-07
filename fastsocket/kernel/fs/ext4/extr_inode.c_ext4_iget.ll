; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.super_block*, i32*, i32, i32*, i8*, i32 }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { i64, i32 }
%struct.ext4_inode = type { i64*, i64, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ext4_inode_info = type { i32, i32, i64*, i8*, i8*, i32, i32, i32, i64, i32, i8*, i8*, i64, i64 }
%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }

@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@EXT4_ORPHAN_FS = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i64 0, align 8
@EXT4_FEATURE_INCOMPAT_64BIT = common dso_local global i32 0, align 4
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@i_ctime = common dso_local global i32 0, align 4
@i_mtime = common dso_local global i32 0, align 4
@i_atime = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i32 0, align 4
@i_version_hi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"bad extended attribute block %llu inode #%lu\00", align 1
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@ext4_file_inode_operations = common dso_local global i32 0, align 4
@ext4_file_operations = common dso_local global i32 0, align 4
@ext4_dir_inode_operations = common dso_local global i32 0, align 4
@ext4_dir_operations = common dso_local global i32 0, align 4
@ext4_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_symlink_inode_operations = common dso_local global i32 0, align 4
@ext4_special_inode_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bogus i_mode (%o) for inode=%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext4_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_iloc, align 8
  %7 = alloca %struct.ext4_inode*, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.inode* @iget_locked(%struct.super_block* %20, i64 %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* @ENOMEM, align 8
  %27 = sub nsw i64 0, %26
  %28 = call %struct.inode* @ERR_PTR(i64 %27)
  store %struct.inode* %28, %struct.inode** %3, align 8
  br label %593

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I_NEW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %37, %struct.inode** %3, align 8
  br label %593

38:                                               ; preds = %29
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %39)
  store %struct.ext4_inode_info* %40, %struct.ext4_inode_info** %8, align 8
  %41 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call i64 @__ext4_get_inode_loc(%struct.inode* %42, %struct.ext4_iloc* %6, i32 0)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %585

47:                                               ; preds = %38
  %48 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %6)
  store %struct.ext4_inode* %48, %struct.ext4_inode** %7, align 8
  %49 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %50 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %56 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %62 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 7
  %69 = load %struct.super_block*, %struct.super_block** %68, align 8
  %70 = load i32, i32* @NO_UID32, align 4
  %71 = call i32 @test_opt(%struct.super_block* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %47
  %74 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %75 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = shl i32 %77, 16
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %84 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = shl i32 %86, 16
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %73, %47
  %93 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %94 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %100 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %99, i32 0, i32 13
  store i64 0, i64* %100, align 8
  %101 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %102 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %101, i32 0, i32 12
  store i64 0, i64* %102, align 8
  %103 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %104 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @le32_to_cpu(i64 %105)
  %107 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %108 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %107, i32 0, i32 11
  store i8* %106, i8** %108, align 8
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %92
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 7
  %121 = load %struct.super_block*, %struct.super_block** %120, align 8
  %122 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %121)
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @EXT4_ORPHAN_FS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %118, %113
  %129 = load i64, i64* @ESTALE, align 8
  %130 = sub nsw i64 0, %129
  store i64 %130, i64* %11, align 8
  br label %585

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %92
  %133 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %134 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @le32_to_cpu(i64 %135)
  %137 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %138 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %137, i32 0, i32 10
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %140 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %141 = call i32 @ext4_inode_blocks(%struct.ext4_inode* %139, %struct.ext4_inode_info* %140)
  %142 = load %struct.inode*, %struct.inode** %9, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 12
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %145 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = call i8* @le32_to_cpu(i64 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %150 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.super_block*, %struct.super_block** %4, align 8
  %152 = load i32, i32* @EXT4_FEATURE_INCOMPAT_64BIT, align 4
  %153 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %132
  %156 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %157 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @le16_to_cpu(i32 %158)
  %160 = shl i32 %159, 32
  %161 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %162 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %155, %132
  %166 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %167 = call i32 @ext4_isize(%struct.ext4_inode* %166)
  %168 = load %struct.inode*, %struct.inode** %9, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 8
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %174 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %176 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @le32_to_cpu(i64 %177)
  %179 = load %struct.inode*, %struct.inode** %9, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 11
  store i8* %178, i8** %180, align 8
  %181 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %184 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %186 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %185, i32 0, i32 6
  store i32 -1, i32* %186, align 4
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %205, %165
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %187
  %192 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %193 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %200 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %199, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %198, i64* %204, align 8
  br label %205

205:                                              ; preds = %191
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %187

208:                                              ; preds = %187
  %209 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %210 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %209, i32 0, i32 5
  %211 = call i32 @INIT_LIST_HEAD(i32* %210)
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %213 = icmp ne %struct.TYPE_6__* %212, null
  br i1 %213, label %214, label %251

214:                                              ; preds = %208
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = call i32 @spin_lock(i32* %216)
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = icmp ne %struct.TYPE_5__* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  store %struct.TYPE_5__* %225, %struct.TYPE_5__** %13, align 8
  br label %230

226:                                              ; preds = %214
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  store %struct.TYPE_5__* %229, %struct.TYPE_5__** %13, align 8
  br label %230

230:                                              ; preds = %226, %222
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %232 = icmp ne %struct.TYPE_5__* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  store i8* %236, i8** %14, align 8
  br label %241

237:                                              ; preds = %230
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %14, align 8
  br label %241

241:                                              ; preds = %237, %233
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = call i32 @spin_unlock(i32* %243)
  %245 = load i8*, i8** %14, align 8
  %246 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %247 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %246, i32 0, i32 4
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** %14, align 8
  %249 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %250 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %241, %208
  %252 = load %struct.inode*, %struct.inode** %9, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 7
  %254 = load %struct.super_block*, %struct.super_block** %253, align 8
  %255 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %254)
  %256 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %258, label %313

258:                                              ; preds = %251
  %259 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %260 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @le16_to_cpu(i32 %261)
  %263 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %264 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %266 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %267 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %265, %268
  %270 = load %struct.inode*, %struct.inode** %9, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 7
  %272 = load %struct.super_block*, %struct.super_block** %271, align 8
  %273 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %272)
  %274 = icmp sgt i32 %269, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %258
  %276 = load i64, i64* @EIO, align 8
  %277 = sub nsw i64 0, %276
  store i64 %277, i64* %11, align 8
  br label %585

278:                                              ; preds = %258
  %279 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %280 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %285 = sext i32 %284 to i64
  %286 = sub i64 96, %285
  %287 = trunc i64 %286 to i32
  %288 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %289 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 4
  br label %312

290:                                              ; preds = %278
  %291 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %292 = bitcast %struct.ext4_inode* %291 to i8*
  %293 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr i8, i8* %292, i64 %294
  %296 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %297 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr i8, i8* %295, i64 %299
  %301 = bitcast i8* %300 to i64*
  store i64* %301, i64** %15, align 8
  %302 = load i64*, i64** %15, align 8
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %305 = call i64 @cpu_to_le32(i32 %304)
  %306 = icmp eq i64 %303, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %290
  %308 = load %struct.inode*, %struct.inode** %9, align 8
  %309 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %310 = call i32 @ext4_set_inode_state(%struct.inode* %308, i32 %309)
  br label %311

311:                                              ; preds = %307, %290
  br label %312

312:                                              ; preds = %311, %283
  br label %316

313:                                              ; preds = %251
  %314 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %315 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %314, i32 0, i32 1
  store i32 0, i32* %315, align 4
  br label %316

316:                                              ; preds = %313, %312
  %317 = load i32, i32* @i_ctime, align 4
  %318 = load %struct.inode*, %struct.inode** %9, align 8
  %319 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %320 = call i32 @EXT4_INODE_GET_XTIME(i32 %317, %struct.inode* %318, %struct.ext4_inode* %319)
  %321 = load i32, i32* @i_mtime, align 4
  %322 = load %struct.inode*, %struct.inode** %9, align 8
  %323 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %324 = call i32 @EXT4_INODE_GET_XTIME(i32 %321, %struct.inode* %322, %struct.ext4_inode* %323)
  %325 = load i32, i32* @i_atime, align 4
  %326 = load %struct.inode*, %struct.inode** %9, align 8
  %327 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %328 = call i32 @EXT4_INODE_GET_XTIME(i32 %325, %struct.inode* %326, %struct.ext4_inode* %327)
  %329 = load i32, i32* @i_crtime, align 4
  %330 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %331 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %332 = call i32 @EXT4_EINODE_GET_XTIME(i32 %329, %struct.ext4_inode_info* %330, %struct.ext4_inode* %331)
  %333 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %334 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = call i8* @le32_to_cpu(i64 %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.inode*, %struct.inode** %9, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 5
  store i32 %337, i32* %339, align 4
  %340 = load %struct.inode*, %struct.inode** %9, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 7
  %342 = load %struct.super_block*, %struct.super_block** %341, align 8
  %343 = call i32 @EXT4_INODE_SIZE(%struct.super_block* %342)
  %344 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %364

346:                                              ; preds = %316
  %347 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %348 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %349 = load i32, i32* @i_version_hi, align 4
  %350 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %347, %struct.ext4_inode_info* %348, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %346
  %353 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %354 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = call i8* @le32_to_cpu(i64 %355)
  %357 = ptrtoint i8* %356 to i32
  %358 = shl i32 %357, 32
  %359 = load %struct.inode*, %struct.inode** %9, align 8
  %360 = getelementptr inbounds %struct.inode, %struct.inode* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %352, %346
  br label %364

364:                                              ; preds = %363, %316
  store i64 0, i64* %11, align 8
  %365 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %366 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %388

369:                                              ; preds = %364
  %370 = load %struct.super_block*, %struct.super_block** %4, align 8
  %371 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %370)
  %372 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %373 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @ext4_data_block_valid(%struct.TYPE_7__* %371, i32 %374, i32 1)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %388, label %377

377:                                              ; preds = %369
  %378 = load %struct.super_block*, %struct.super_block** %4, align 8
  %379 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %380 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.inode*, %struct.inode** %9, align 8
  %383 = getelementptr inbounds %struct.inode, %struct.inode* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @ext4_error(%struct.super_block* %378, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %381, i32 %384)
  %386 = load i64, i64* @EIO, align 8
  %387 = sub nsw i64 0, %386
  store i64 %387, i64* %11, align 8
  br label %585

388:                                              ; preds = %369, %364
  %389 = load %struct.inode*, %struct.inode** %9, align 8
  %390 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %391 = call i64 @ext4_test_inode_flag(%struct.inode* %389, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %419

393:                                              ; preds = %388
  %394 = load %struct.inode*, %struct.inode** %9, align 8
  %395 = getelementptr inbounds %struct.inode, %struct.inode* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = call i64 @S_ISREG(i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %415, label %399

399:                                              ; preds = %393
  %400 = load %struct.inode*, %struct.inode** %9, align 8
  %401 = getelementptr inbounds %struct.inode, %struct.inode* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i64 @S_ISDIR(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %415, label %405

405:                                              ; preds = %399
  %406 = load %struct.inode*, %struct.inode** %9, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = call i64 @S_ISLNK(i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %418

411:                                              ; preds = %405
  %412 = load %struct.inode*, %struct.inode** %9, align 8
  %413 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %411, %399, %393
  %416 = load %struct.inode*, %struct.inode** %9, align 8
  %417 = call i64 @ext4_ext_check_inode(%struct.inode* %416)
  store i64 %417, i64* %11, align 8
  br label %418

418:                                              ; preds = %415, %411, %405
  br label %445

419:                                              ; preds = %388
  %420 = load %struct.inode*, %struct.inode** %9, align 8
  %421 = getelementptr inbounds %struct.inode, %struct.inode* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i64 @S_ISREG(i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %441, label %425

425:                                              ; preds = %419
  %426 = load %struct.inode*, %struct.inode** %9, align 8
  %427 = getelementptr inbounds %struct.inode, %struct.inode* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i64 @S_ISDIR(i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %441, label %431

431:                                              ; preds = %425
  %432 = load %struct.inode*, %struct.inode** %9, align 8
  %433 = getelementptr inbounds %struct.inode, %struct.inode* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = call i64 @S_ISLNK(i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %431
  %438 = load %struct.inode*, %struct.inode** %9, align 8
  %439 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %437, %425, %419
  %442 = load %struct.inode*, %struct.inode** %9, align 8
  %443 = call i64 @ext4_check_inode_blockref(%struct.inode* %442)
  store i64 %443, i64* %11, align 8
  br label %444

444:                                              ; preds = %441, %437, %431
  br label %445

445:                                              ; preds = %444, %418
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %11, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  br label %585

450:                                              ; preds = %446
  %451 = load %struct.inode*, %struct.inode** %9, align 8
  %452 = getelementptr inbounds %struct.inode, %struct.inode* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = call i64 @S_ISREG(i32 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %450
  %457 = load %struct.inode*, %struct.inode** %9, align 8
  %458 = getelementptr inbounds %struct.inode, %struct.inode* %457, i32 0, i32 8
  store i32* @ext4_file_inode_operations, i32** %458, align 8
  %459 = load %struct.inode*, %struct.inode** %9, align 8
  %460 = getelementptr inbounds %struct.inode, %struct.inode* %459, i32 0, i32 10
  store i32* @ext4_file_operations, i32** %460, align 8
  %461 = load %struct.inode*, %struct.inode** %9, align 8
  %462 = call i32 @ext4_set_aops(%struct.inode* %461)
  br label %576

463:                                              ; preds = %450
  %464 = load %struct.inode*, %struct.inode** %9, align 8
  %465 = getelementptr inbounds %struct.inode, %struct.inode* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = call i64 @S_ISDIR(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %474

469:                                              ; preds = %463
  %470 = load %struct.inode*, %struct.inode** %9, align 8
  %471 = getelementptr inbounds %struct.inode, %struct.inode* %470, i32 0, i32 8
  store i32* @ext4_dir_inode_operations, i32** %471, align 8
  %472 = load %struct.inode*, %struct.inode** %9, align 8
  %473 = getelementptr inbounds %struct.inode, %struct.inode* %472, i32 0, i32 10
  store i32* @ext4_dir_operations, i32** %473, align 8
  br label %575

474:                                              ; preds = %463
  %475 = load %struct.inode*, %struct.inode** %9, align 8
  %476 = getelementptr inbounds %struct.inode, %struct.inode* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i64 @S_ISLNK(i32 %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %500

480:                                              ; preds = %474
  %481 = load %struct.inode*, %struct.inode** %9, align 8
  %482 = call i64 @ext4_inode_is_fast_symlink(%struct.inode* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %494

484:                                              ; preds = %480
  %485 = load %struct.inode*, %struct.inode** %9, align 8
  %486 = getelementptr inbounds %struct.inode, %struct.inode* %485, i32 0, i32 8
  store i32* @ext4_fast_symlink_inode_operations, i32** %486, align 8
  %487 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %488 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %487, i32 0, i32 2
  %489 = load i64*, i64** %488, align 8
  %490 = load %struct.inode*, %struct.inode** %9, align 8
  %491 = getelementptr inbounds %struct.inode, %struct.inode* %490, i32 0, i32 9
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @nd_terminate_link(i64* %489, i32 %492, i32 7)
  br label %499

494:                                              ; preds = %480
  %495 = load %struct.inode*, %struct.inode** %9, align 8
  %496 = getelementptr inbounds %struct.inode, %struct.inode* %495, i32 0, i32 8
  store i32* @ext4_symlink_inode_operations, i32** %496, align 8
  %497 = load %struct.inode*, %struct.inode** %9, align 8
  %498 = call i32 @ext4_set_aops(%struct.inode* %497)
  br label %499

499:                                              ; preds = %494, %484
  br label %574

500:                                              ; preds = %474
  %501 = load %struct.inode*, %struct.inode** %9, align 8
  %502 = getelementptr inbounds %struct.inode, %struct.inode* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = call i64 @S_ISCHR(i32 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %524, label %506

506:                                              ; preds = %500
  %507 = load %struct.inode*, %struct.inode** %9, align 8
  %508 = getelementptr inbounds %struct.inode, %struct.inode* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = call i64 @S_ISBLK(i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %524, label %512

512:                                              ; preds = %506
  %513 = load %struct.inode*, %struct.inode** %9, align 8
  %514 = getelementptr inbounds %struct.inode, %struct.inode* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = call i64 @S_ISFIFO(i32 %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %524, label %518

518:                                              ; preds = %512
  %519 = load %struct.inode*, %struct.inode** %9, align 8
  %520 = getelementptr inbounds %struct.inode, %struct.inode* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = call i64 @S_ISSOCK(i32 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %560

524:                                              ; preds = %518, %512, %506, %500
  %525 = load %struct.inode*, %struct.inode** %9, align 8
  %526 = getelementptr inbounds %struct.inode, %struct.inode* %525, i32 0, i32 8
  store i32* @ext4_special_inode_operations, i32** %526, align 8
  %527 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %528 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %527, i32 0, i32 0
  %529 = load i64*, i64** %528, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 0
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %546

533:                                              ; preds = %524
  %534 = load %struct.inode*, %struct.inode** %9, align 8
  %535 = load %struct.inode*, %struct.inode** %9, align 8
  %536 = getelementptr inbounds %struct.inode, %struct.inode* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %539 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %538, i32 0, i32 0
  %540 = load i64*, i64** %539, align 8
  %541 = getelementptr inbounds i64, i64* %540, i64 0
  %542 = load i64, i64* %541, align 8
  %543 = call i8* @le32_to_cpu(i64 %542)
  %544 = call i32 @old_decode_dev(i8* %543)
  %545 = call i32 @init_special_inode(%struct.inode* %534, i32 %537, i32 %544)
  br label %559

546:                                              ; preds = %524
  %547 = load %struct.inode*, %struct.inode** %9, align 8
  %548 = load %struct.inode*, %struct.inode** %9, align 8
  %549 = getelementptr inbounds %struct.inode, %struct.inode* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %552 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %551, i32 0, i32 0
  %553 = load i64*, i64** %552, align 8
  %554 = getelementptr inbounds i64, i64* %553, i64 1
  %555 = load i64, i64* %554, align 8
  %556 = call i8* @le32_to_cpu(i64 %555)
  %557 = call i32 @new_decode_dev(i8* %556)
  %558 = call i32 @init_special_inode(%struct.inode* %547, i32 %550, i32 %557)
  br label %559

559:                                              ; preds = %546, %533
  br label %573

560:                                              ; preds = %518
  %561 = load i64, i64* @EIO, align 8
  %562 = sub nsw i64 0, %561
  store i64 %562, i64* %11, align 8
  %563 = load %struct.inode*, %struct.inode** %9, align 8
  %564 = getelementptr inbounds %struct.inode, %struct.inode* %563, i32 0, i32 7
  %565 = load %struct.super_block*, %struct.super_block** %564, align 8
  %566 = load %struct.inode*, %struct.inode** %9, align 8
  %567 = getelementptr inbounds %struct.inode, %struct.inode* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.inode*, %struct.inode** %9, align 8
  %570 = getelementptr inbounds %struct.inode, %struct.inode* %569, i32 0, i32 6
  %571 = load i32, i32* %570, align 8
  %572 = call i32 @ext4_error(%struct.super_block* %565, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %568, i32 %571)
  br label %585

573:                                              ; preds = %559
  br label %574

574:                                              ; preds = %573, %499
  br label %575

575:                                              ; preds = %574, %469
  br label %576

576:                                              ; preds = %575, %456
  %577 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = call i32 @brelse(i64 %578)
  %580 = load %struct.inode*, %struct.inode** %9, align 8
  %581 = call i32 @ext4_set_inode_flags(%struct.inode* %580)
  %582 = load %struct.inode*, %struct.inode** %9, align 8
  %583 = call i32 @unlock_new_inode(%struct.inode* %582)
  %584 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %584, %struct.inode** %3, align 8
  br label %593

585:                                              ; preds = %560, %449, %377, %275, %128, %46
  %586 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %6, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = call i32 @brelse(i64 %587)
  %589 = load %struct.inode*, %struct.inode** %9, align 8
  %590 = call i32 @iget_failed(%struct.inode* %589)
  %591 = load i64, i64* %11, align 8
  %592 = call %struct.inode* @ERR_PTR(i64 %591)
  store %struct.inode* %592, %struct.inode** %3, align 8
  br label %593

593:                                              ; preds = %585, %576, %36, %25
  %594 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %594
}

declare dso_local %struct.TYPE_7__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @__ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*, i32) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_inode_blocks(%struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_isize(%struct.ext4_inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @EXT4_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_INODE_GET_XTIME(i32, %struct.inode*, %struct.ext4_inode*) #1

declare dso_local i32 @EXT4_EINODE_GET_XTIME(i32, %struct.ext4_inode_info*, %struct.ext4_inode*) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

declare dso_local i32 @ext4_data_block_valid(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext4_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i64 @ext4_ext_check_inode(%struct.inode*) #1

declare dso_local i64 @ext4_check_inode_blockref(%struct.inode*) #1

declare dso_local i32 @ext4_set_aops(%struct.inode*) #1

declare dso_local i32 @nd_terminate_link(i64*, i32, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @old_decode_dev(i8*) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @ext4_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
