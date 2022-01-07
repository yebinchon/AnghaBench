; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_init_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32*, %struct.TYPE_9__*, i32*, i8*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i32 }
%struct.item_head = type { i32 }
%struct.stat_data_v1 = type { i32 }
%struct.stat_data = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32*, i64, i64, i64, i32 }

@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i32 0, align 4
@SD_V1_SIZE = common dso_local global i32 0, align 4
@i_nopack_mask = common dso_local global i32 0, align 4
@KEY_FORMAT_3_6 = common dso_local global i32 0, align 4
@STAT_DATA_V2 = common dso_local global i32 0, align 4
@SD_V2_SIZE = common dso_local global i32 0, align 4
@reiserfs_file_inode_operations = common dso_local global i32 0, align 4
@reiserfs_file_operations = common dso_local global i32 0, align 4
@reiserfs_address_space_operations = common dso_local global i32 0, align 4
@reiserfs_dir_inode_operations = common dso_local global i32 0, align 4
@reiserfs_dir_operations = common dso_local global i32 0, align 4
@reiserfs_symlink_inode_operations = common dso_local global i32 0, align 4
@reiserfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.treepath*)* @init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_inode(%struct.inode* %0, %struct.treepath* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.item_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat_data_v1*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.treepath* %1, %struct.treepath** %4, align 8
  %11 = load %struct.treepath*, %struct.treepath** %4, align 8
  %12 = call %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath* %11)
  store %struct.buffer_head* %12, %struct.buffer_head** %5, align 8
  %13 = load %struct.treepath*, %struct.treepath** %4, align 8
  %14 = call %struct.item_head* @PATH_PITEM_HEAD(%struct.treepath* %13)
  store %struct.item_head* %14, %struct.item_head** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %15)
  %17 = load %struct.item_head*, %struct.item_head** %6, align 8
  %18 = getelementptr inbounds %struct.item_head, %struct.item_head* %17, i32 0, i32 0
  %19 = call i32 @copy_key(%struct.TYPE_14__* %16, i32* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @reiserfs_init_xattr_rwsem(%struct.inode* %43)
  %45 = load %struct.item_head*, %struct.item_head** %6, align 8
  %46 = call i64 @stat_data_v1(%struct.item_head* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %172

48:                                               ; preds = %2
  %49 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %50 = load %struct.item_head*, %struct.item_head** %6, align 8
  %51 = call i64 @B_I_PITEM(%struct.buffer_head* %49, %struct.item_head* %50)
  %52 = inttoptr i64 %51 to %struct.stat_data_v1*
  store %struct.stat_data_v1* %52, %struct.stat_data_v1** %8, align 8
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %55 = call i32 @set_inode_item_key_version(%struct.inode* %53, i32 %54)
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load i32, i32* @STAT_DATA_V1, align 4
  %58 = call i32 @set_inode_sd_version(%struct.inode* %56, i32 %57)
  %59 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %60 = call i32 @sd_v1_mode(%struct.stat_data_v1* %59)
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %64 = call i32 @sd_v1_nlink(%struct.stat_data_v1* %63)
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 4
  %67 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %68 = call i32 @sd_v1_uid(%struct.stat_data_v1* %67)
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 8
  %71 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %72 = call i32 @sd_v1_gid(%struct.stat_data_v1* %71)
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 8
  %75 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %76 = call i32 @sd_v1_size(%struct.stat_data_v1* %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %80 = call i32 @sd_v1_atime(%struct.stat_data_v1* %79)
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %85 = call i32 @sd_v1_mtime(%struct.stat_data_v1* %84)
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %90 = call i32 @sd_v1_ctime(%struct.stat_data_v1* %89)
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %104 = call i64 @sd_v1_blocks(%struct.stat_data_v1* %103)
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.inode*, %struct.inode** %3, align 8
  %108 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %107)
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 511
  %118 = ashr i32 %117, 9
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 13
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 9
  %127 = call i64 @_ROUND_UP(i64 %120, i32 %126)
  store i64 %127, i64* %9, align 8
  %128 = load %struct.inode*, %struct.inode** %3, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %48
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %48
  %138 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %139 = call i32 @sd_v1_rdev(%struct.stat_data_v1* %138)
  store i32 %139, i32* %7, align 4
  %140 = load %struct.stat_data_v1*, %struct.stat_data_v1** %8, align 8
  %141 = call i64 @sd_v1_first_direct_byte(%struct.stat_data_v1* %140)
  %142 = load %struct.inode*, %struct.inode** %3, align 8
  %143 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.inode*, %struct.inode** %3, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, 1
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %137
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %150, %137
  %156 = load %struct.inode*, %struct.inode** %3, align 8
  %157 = load %struct.inode*, %struct.inode** %3, align 8
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @SD_V1_SIZE, align 4
  %163 = call i32 @to_real_used_space(%struct.inode* %157, i32 %161, i32 %162)
  %164 = call i32 @inode_set_bytes(%struct.inode* %156, i32 %163)
  %165 = load i32, i32* @i_nopack_mask, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %167)
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %297

172:                                              ; preds = %2
  %173 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %174 = load %struct.item_head*, %struct.item_head** %6, align 8
  %175 = call i64 @B_I_PITEM(%struct.buffer_head* %173, %struct.item_head* %174)
  %176 = inttoptr i64 %175 to %struct.stat_data*
  store %struct.stat_data* %176, %struct.stat_data** %10, align 8
  %177 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %178 = call i32 @sd_v2_mode(%struct.stat_data* %177)
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  %181 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %182 = call i32 @sd_v2_nlink(%struct.stat_data* %181)
  %183 = load %struct.inode*, %struct.inode** %3, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 12
  store i32 %182, i32* %184, align 4
  %185 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %186 = call i32 @sd_v2_uid(%struct.stat_data* %185)
  %187 = load %struct.inode*, %struct.inode** %3, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 8
  %189 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %190 = call i32 @sd_v2_size(%struct.stat_data* %189)
  %191 = load %struct.inode*, %struct.inode** %3, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 4
  %193 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %194 = call i32 @sd_v2_gid(%struct.stat_data* %193)
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 8
  %197 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %198 = call i32 @sd_v2_mtime(%struct.stat_data* %197)
  %199 = load %struct.inode*, %struct.inode** %3, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 8
  %202 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %203 = call i32 @sd_v2_atime(%struct.stat_data* %202)
  %204 = load %struct.inode*, %struct.inode** %3, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 8
  %207 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %208 = call i32 @sd_v2_ctime(%struct.stat_data* %207)
  %209 = load %struct.inode*, %struct.inode** %3, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 8
  %212 = load %struct.inode*, %struct.inode** %3, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.inode*, %struct.inode** %3, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load %struct.inode*, %struct.inode** %3, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  %221 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %222 = call i32 @sd_v2_blocks(%struct.stat_data* %221)
  %223 = sext i32 %222 to i64
  %224 = load %struct.inode*, %struct.inode** %3, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  %226 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %227 = call i32 @sd_v2_rdev(%struct.stat_data* %226)
  store i32 %227, i32* %7, align 4
  %228 = load %struct.inode*, %struct.inode** %3, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @S_ISCHR(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %172
  %234 = load %struct.inode*, %struct.inode** %3, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @S_ISBLK(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %233, %172
  %240 = load %struct.inode*, %struct.inode** %3, align 8
  %241 = call %struct.TYPE_14__* @INODE_PKEY(%struct.inode* %240)
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @le32_to_cpu(i32 %243)
  %245 = load %struct.inode*, %struct.inode** %3, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  br label %252

247:                                              ; preds = %233
  %248 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %249 = call i8* @sd_v2_generation(%struct.stat_data* %248)
  %250 = load %struct.inode*, %struct.inode** %3, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 5
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %247, %239
  %253 = load %struct.inode*, %struct.inode** %3, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @S_ISDIR(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %252
  %259 = load %struct.inode*, %struct.inode** %3, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @S_ISLNK(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %258, %252
  %265 = load %struct.inode*, %struct.inode** %3, align 8
  %266 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %267 = call i32 @set_inode_item_key_version(%struct.inode* %265, i32 %266)
  br label %272

268:                                              ; preds = %258
  %269 = load %struct.inode*, %struct.inode** %3, align 8
  %270 = load i32, i32* @KEY_FORMAT_3_6, align 4
  %271 = call i32 @set_inode_item_key_version(%struct.inode* %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %264
  %273 = load %struct.inode*, %struct.inode** %3, align 8
  %274 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %273)
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.inode*, %struct.inode** %3, align 8
  %277 = load i32, i32* @STAT_DATA_V2, align 4
  %278 = call i32 @set_inode_sd_version(%struct.inode* %276, i32 %277)
  %279 = load %struct.inode*, %struct.inode** %3, align 8
  %280 = load %struct.inode*, %struct.inode** %3, align 8
  %281 = load %struct.inode*, %struct.inode** %3, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = load i32, i32* @SD_V2_SIZE, align 4
  %286 = call i32 @to_real_used_space(%struct.inode* %280, i32 %284, i32 %285)
  %287 = call i32 @inode_set_bytes(%struct.inode* %279, i32 %286)
  %288 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %289 = call i32 @sd_v2_attrs(%struct.stat_data* %288)
  %290 = load %struct.inode*, %struct.inode** %3, align 8
  %291 = call %struct.TYPE_15__* @REISERFS_I(%struct.inode* %290)
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 8
  %293 = load %struct.stat_data*, %struct.stat_data** %10, align 8
  %294 = call i32 @sd_v2_attrs(%struct.stat_data* %293)
  %295 = load %struct.inode*, %struct.inode** %3, align 8
  %296 = call i32 @sd_attrs_to_i_attrs(i32 %294, %struct.inode* %295)
  br label %297

297:                                              ; preds = %272, %155
  %298 = load %struct.treepath*, %struct.treepath** %4, align 8
  %299 = call i32 @pathrelse(%struct.treepath* %298)
  %300 = load %struct.inode*, %struct.inode** %3, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @S_ISREG(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %297
  %306 = load %struct.inode*, %struct.inode** %3, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 2
  store i32* @reiserfs_file_inode_operations, i32** %307, align 8
  %308 = load %struct.inode*, %struct.inode** %3, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 4
  store i32* @reiserfs_file_operations, i32** %309, align 8
  %310 = load %struct.inode*, %struct.inode** %3, align 8
  %311 = getelementptr inbounds %struct.inode, %struct.inode* %310, i32 0, i32 3
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %313, align 8
  br label %352

314:                                              ; preds = %297
  %315 = load %struct.inode*, %struct.inode** %3, align 8
  %316 = getelementptr inbounds %struct.inode, %struct.inode* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i64 @S_ISDIR(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %314
  %321 = load %struct.inode*, %struct.inode** %3, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 2
  store i32* @reiserfs_dir_inode_operations, i32** %322, align 8
  %323 = load %struct.inode*, %struct.inode** %3, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 4
  store i32* @reiserfs_dir_operations, i32** %324, align 8
  br label %351

325:                                              ; preds = %314
  %326 = load %struct.inode*, %struct.inode** %3, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @S_ISLNK(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %325
  %332 = load %struct.inode*, %struct.inode** %3, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 2
  store i32* @reiserfs_symlink_inode_operations, i32** %333, align 8
  %334 = load %struct.inode*, %struct.inode** %3, align 8
  %335 = getelementptr inbounds %struct.inode, %struct.inode* %334, i32 0, i32 3
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  store i32* @reiserfs_address_space_operations, i32** %337, align 8
  br label %350

338:                                              ; preds = %325
  %339 = load %struct.inode*, %struct.inode** %3, align 8
  %340 = getelementptr inbounds %struct.inode, %struct.inode* %339, i32 0, i32 0
  store i64 0, i64* %340, align 8
  %341 = load %struct.inode*, %struct.inode** %3, align 8
  %342 = getelementptr inbounds %struct.inode, %struct.inode* %341, i32 0, i32 2
  store i32* @reiserfs_special_inode_operations, i32** %342, align 8
  %343 = load %struct.inode*, %struct.inode** %3, align 8
  %344 = load %struct.inode*, %struct.inode** %3, align 8
  %345 = getelementptr inbounds %struct.inode, %struct.inode* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* %7, align 4
  %348 = call i32 @new_decode_dev(i32 %347)
  %349 = call i32 @init_special_inode(%struct.inode* %343, i32 %346, i32 %348)
  br label %350

350:                                              ; preds = %338, %331
  br label %351

351:                                              ; preds = %350, %320
  br label %352

352:                                              ; preds = %351, %305
  ret void
}

declare dso_local %struct.buffer_head* @PATH_PLAST_BUFFER(%struct.treepath*) #1

declare dso_local %struct.item_head* @PATH_PITEM_HEAD(%struct.treepath*) #1

declare dso_local i32 @copy_key(%struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_14__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_15__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @reiserfs_init_xattr_rwsem(%struct.inode*) #1

declare dso_local i64 @stat_data_v1(%struct.item_head*) #1

declare dso_local i64 @B_I_PITEM(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @set_inode_item_key_version(%struct.inode*, i32) #1

declare dso_local i32 @set_inode_sd_version(%struct.inode*, i32) #1

declare dso_local i32 @sd_v1_mode(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_nlink(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_uid(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_gid(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_size(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_atime(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_mtime(%struct.stat_data_v1*) #1

declare dso_local i32 @sd_v1_ctime(%struct.stat_data_v1*) #1

declare dso_local i64 @sd_v1_blocks(%struct.stat_data_v1*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @_ROUND_UP(i64, i32) #1

declare dso_local i32 @sd_v1_rdev(%struct.stat_data_v1*) #1

declare dso_local i64 @sd_v1_first_direct_byte(%struct.stat_data_v1*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @to_real_used_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @sd_v2_mode(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_nlink(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_uid(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_size(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_gid(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_mtime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_atime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_ctime(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_blocks(%struct.stat_data*) #1

declare dso_local i32 @sd_v2_rdev(%struct.stat_data*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i8* @sd_v2_generation(%struct.stat_data*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @sd_v2_attrs(%struct.stat_data*) #1

declare dso_local i32 @sd_attrs_to_i_attrs(i32, %struct.inode*) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
