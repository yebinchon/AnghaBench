; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_do_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_do_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.super_block*, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.ext4_inode = type { i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ext4_inode_info = type { i32, i32, i32, i32, i32, i8** }
%struct.TYPE_4__ = type { %struct.buffer_head*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@EXT4_STATE_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@i_ctime = common dso_local global i32 0, align 4
@i_mtime = common dso_local global i32 0, align 4
@i_atime = common dso_local global i32 0, align 4
@i_crtime = common dso_local global i32 0, align 4
@EXT4_OS_HURD = common dso_local global i32 0, align 4
@EXT4_FEATURE_RO_COMPAT_LARGE_FILE = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_REV = common dso_local global i32 0, align 4
@EXT4_N_BLOCKS = common dso_local global i32 0, align 4
@i_version_hi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_iloc*)* @ext4_do_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_do_update_inode(i32* %0, %struct.inode* %1, %struct.ext4_iloc* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_iloc*, align 8
  %7 = alloca %struct.ext4_inode*, align 8
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ext4_iloc* %2, %struct.ext4_iloc** %6, align 8
  %15 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %16 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %15)
  store %struct.ext4_inode* %16, %struct.ext4_inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %17)
  store %struct.ext4_inode_info* %18, %struct.ext4_inode_info** %8, align 8
  %19 = load %struct.ext4_iloc*, %struct.ext4_iloc** %6, align 8
  %20 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %19, i32 0, i32 0
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  store %struct.buffer_head* %21, %struct.buffer_head** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* @EXT4_STATE_NEW, align 4
  %24 = call i64 @ext4_test_inode_state(%struct.inode* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  %31 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memset(%struct.ext4_inode* %27, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %26, %3
  %36 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %37 = call i32 @ext4_get_inode_flags(%struct.ext4_inode_info* %36)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %43 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 4
  %46 = load %struct.super_block*, %struct.super_block** %45, align 8
  %47 = load i32, i32* @NO_UID32, align 4
  %48 = call i32 @test_opt(%struct.super_block* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %90, label %50

50:                                               ; preds = %35
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @low_16_bits(i32 %53)
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %57 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %56, i32 0, i32 13
  store i8* %55, i8** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @low_16_bits(i32 %60)
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %64 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %66 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %50
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @high_16_bits(i32 %72)
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %76 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %75, i32 0, i32 11
  store i8* %74, i8** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @high_16_bits(i32 %79)
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %83 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  br label %89

84:                                               ; preds = %50
  %85 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %86 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %85, i32 0, i32 11
  store i8* null, i8** %86, align 8
  %87 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %88 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %87, i32 0, i32 10
  store i8* null, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %69
  br label %109

90:                                               ; preds = %35
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @fs_high2lowuid(i32 %93)
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %97 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %96, i32 0, i32 13
  store i8* %95, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @fs_high2lowgid(i32 %100)
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %104 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %103, i32 0, i32 12
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %106 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %105, i32 0, i32 11
  store i8* null, i8** %106, align 8
  %107 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %108 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %107, i32 0, i32 10
  store i8* null, i8** %108, align 8
  br label %109

109:                                              ; preds = %90, %89
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %115 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %114, i32 0, i32 9
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @i_ctime, align 4
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %119 = call i32 @EXT4_INODE_SET_XTIME(i32 %116, %struct.inode* %117, %struct.ext4_inode* %118)
  %120 = load i32, i32* @i_mtime, align 4
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %123 = call i32 @EXT4_INODE_SET_XTIME(i32 %120, %struct.inode* %121, %struct.ext4_inode* %122)
  %124 = load i32, i32* @i_atime, align 4
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %127 = call i32 @EXT4_INODE_SET_XTIME(i32 %124, %struct.inode* %125, %struct.ext4_inode* %126)
  %128 = load i32, i32* @i_crtime, align 4
  %129 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %130 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %131 = call i32 @EXT4_EINODE_SET_XTIME(i32 %128, %struct.ext4_inode_info* %129, %struct.ext4_inode* %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %134 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %135 = call i64 @ext4_inode_blocks_set(i32* %132, %struct.ext4_inode* %133, %struct.ext4_inode_info* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %109
  br label %370

138:                                              ; preds = %109
  %139 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %140 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %144 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %143, i32 0, i32 8
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %146 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %150 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %5, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 4
  %153 = load %struct.super_block*, %struct.super_block** %152, align 8
  %154 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* @EXT4_OS_HURD, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = icmp ne i8* %158, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %138
  %163 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %164 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = ashr i32 %165, 32
  %167 = call i8* @cpu_to_le16(i32 %166)
  %168 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %169 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %162, %138
  %171 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %172 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %176 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %175, i32 0, i32 5
  store i8* %174, i8** %176, align 8
  %177 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %178 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %181 = call i32 @ext4_isize(%struct.ext4_inode* %180)
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %170
  %184 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %185 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %186 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ext4_isize_set(%struct.ext4_inode* %184, i32 %187)
  store i32 1, i32* %13, align 4
  br label %189

189:                                              ; preds = %183, %170
  %190 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %191 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ugt i64 %193, 2147483647
  br i1 %194, label %195, label %240

195:                                              ; preds = %189
  %196 = load %struct.inode*, %struct.inode** %5, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 4
  %198 = load %struct.super_block*, %struct.super_block** %197, align 8
  store %struct.super_block* %198, %struct.super_block** %14, align 8
  %199 = load %struct.super_block*, %struct.super_block** %14, align 8
  %200 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %201 = call i32 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %195
  %204 = load %struct.super_block*, %struct.super_block** %14, align 8
  %205 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %204)
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* @EXT4_GOOD_OLD_REV, align 4
  %211 = call i8* @cpu_to_le32(i32 %210)
  %212 = icmp eq i8* %209, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %203, %195
  %214 = load i32*, i32** %4, align 8
  %215 = load %struct.super_block*, %struct.super_block** %14, align 8
  %216 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %215)
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load %struct.buffer_head*, %struct.buffer_head** %217, align 8
  %219 = call i32 @ext4_journal_get_write_access(i32* %214, %struct.buffer_head* %218)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %370

223:                                              ; preds = %213
  %224 = load %struct.super_block*, %struct.super_block** %14, align 8
  %225 = call i32 @ext4_update_dynamic_rev(%struct.super_block* %224)
  %226 = load %struct.super_block*, %struct.super_block** %14, align 8
  %227 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %228 = call i32 @EXT4_SET_RO_COMPAT_FEATURE(%struct.super_block* %226, i32 %227)
  %229 = load %struct.super_block*, %struct.super_block** %14, align 8
  %230 = getelementptr inbounds %struct.super_block, %struct.super_block* %229, i32 0, i32 0
  store i32 1, i32* %230, align 4
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @ext4_handle_sync(i32* %231)
  %233 = load i32*, i32** %4, align 8
  %234 = load %struct.super_block*, %struct.super_block** %14, align 8
  %235 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %234)
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load %struct.buffer_head*, %struct.buffer_head** %236, align 8
  %238 = call i32 @ext4_handle_dirty_metadata(i32* %233, i32* null, %struct.buffer_head* %237)
  store i32 %238, i32* %10, align 4
  br label %239

239:                                              ; preds = %223, %203
  br label %240

240:                                              ; preds = %239, %189
  %241 = load %struct.inode*, %struct.inode** %5, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i8* @cpu_to_le32(i32 %243)
  %245 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %246 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %245, i32 0, i32 4
  store i8* %244, i8** %246, align 8
  %247 = load %struct.inode*, %struct.inode** %5, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @S_ISCHR(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %240
  %253 = load %struct.inode*, %struct.inode** %5, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @S_ISBLK(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %297

258:                                              ; preds = %252, %240
  %259 = load %struct.inode*, %struct.inode** %5, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @old_valid_dev(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %258
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @old_encode_dev(i32 %267)
  %269 = call i8* @cpu_to_le32(i32 %268)
  %270 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %271 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %270, i32 0, i32 3
  %272 = load i8**, i8*** %271, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 0
  store i8* %269, i8** %273, align 8
  %274 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %275 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %274, i32 0, i32 3
  %276 = load i8**, i8*** %275, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 1
  store i8* null, i8** %277, align 8
  br label %296

278:                                              ; preds = %258
  %279 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %280 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %279, i32 0, i32 3
  %281 = load i8**, i8*** %280, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 0
  store i8* null, i8** %282, align 8
  %283 = load %struct.inode*, %struct.inode** %5, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @new_encode_dev(i32 %285)
  %287 = call i8* @cpu_to_le32(i32 %286)
  %288 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %289 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %288, i32 0, i32 3
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  store i8* %287, i8** %291, align 8
  %292 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %293 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %292, i32 0, i32 3
  %294 = load i8**, i8*** %293, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 2
  store i8* null, i8** %295, align 8
  br label %296

296:                                              ; preds = %278, %264
  br label %320

297:                                              ; preds = %252
  store i32 0, i32* %12, align 4
  br label %298

298:                                              ; preds = %316, %297
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* @EXT4_N_BLOCKS, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %319

302:                                              ; preds = %298
  %303 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %304 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %303, i32 0, i32 5
  %305 = load i8**, i8*** %304, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %311 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %310, i32 0, i32 3
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %312, i64 %314
  store i8* %309, i8** %315, align 8
  br label %316

316:                                              ; preds = %302
  %317 = load i32, i32* %12, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %12, align 4
  br label %298

319:                                              ; preds = %298
  br label %320

320:                                              ; preds = %319, %296
  %321 = load %struct.inode*, %struct.inode** %5, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i8* @cpu_to_le32(i32 %323)
  %325 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %326 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %325, i32 0, i32 2
  store i8* %324, i8** %326, align 8
  %327 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %328 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %352

331:                                              ; preds = %320
  %332 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %333 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %334 = load i32, i32* @i_version_hi, align 4
  %335 = call i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode* %332, %struct.ext4_inode_info* %333, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %331
  %338 = load %struct.inode*, %struct.inode** %5, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = ashr i32 %340, 32
  %342 = call i8* @cpu_to_le32(i32 %341)
  %343 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %344 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  br label %345

345:                                              ; preds = %337, %331
  %346 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %347 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = call i8* @cpu_to_le16(i32 %348)
  %350 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %351 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %350, i32 0, i32 0
  store i8* %349, i8** %351, align 8
  br label %352

352:                                              ; preds = %345, %320
  %353 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %354 = call i32 @BUFFER_TRACE(%struct.buffer_head* %353, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %355 = load i32*, i32** %4, align 8
  %356 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %357 = call i32 @ext4_handle_dirty_metadata(i32* %355, i32* null, %struct.buffer_head* %356)
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %10, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %352
  %361 = load i32, i32* %11, align 4
  store i32 %361, i32* %10, align 4
  br label %362

362:                                              ; preds = %360, %352
  %363 = load %struct.inode*, %struct.inode** %5, align 8
  %364 = load i32, i32* @EXT4_STATE_NEW, align 4
  %365 = call i32 @ext4_clear_inode_state(%struct.inode* %363, i32 %364)
  %366 = load i32*, i32** %4, align 8
  %367 = load %struct.inode*, %struct.inode** %5, align 8
  %368 = load i32, i32* %13, align 4
  %369 = call i32 @ext4_update_inode_fsync_trans(i32* %366, %struct.inode* %367, i32 %368)
  br label %370

370:                                              ; preds = %362, %222, %137
  %371 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %372 = call i32 @brelse(%struct.buffer_head* %371)
  %373 = load %struct.inode*, %struct.inode** %5, align 8
  %374 = getelementptr inbounds %struct.inode, %struct.inode* %373, i32 0, i32 4
  %375 = load %struct.super_block*, %struct.super_block** %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @ext4_std_error(%struct.super_block* %375, i32 %376)
  %378 = load i32, i32* %10, align 4
  ret i32 %378
}

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.ext4_inode*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_get_inode_flags(%struct.ext4_inode_info*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @low_16_bits(i32) #1

declare dso_local i32 @high_16_bits(i32) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i32 @EXT4_INODE_SET_XTIME(i32, %struct.inode*, %struct.ext4_inode*) #1

declare dso_local i32 @EXT4_EINODE_SET_XTIME(i32, %struct.ext4_inode_info*, %struct.ext4_inode*) #1

declare dso_local i64 @ext4_inode_blocks_set(i32*, %struct.ext4_inode*, %struct.ext4_inode_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_isize(%struct.ext4_inode*) #1

declare dso_local i32 @ext4_isize_set(%struct.ext4_inode*, i32) #1

declare dso_local i32 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT4_SET_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i64 @EXT4_FITS_IN_INODE(%struct.ext4_inode*, %struct.ext4_inode_info*, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_std_error(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
