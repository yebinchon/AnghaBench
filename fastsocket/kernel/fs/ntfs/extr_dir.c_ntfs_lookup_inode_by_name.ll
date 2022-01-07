; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_dir.c_ntfs_lookup_inode_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_dir.c_ntfs_lookup_inode_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, %struct.TYPE_49__, %struct.TYPE_36__* }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_37__ = type { i8*, i64, i32, i64 }
%struct.page = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_41__ = type { i32, i32, %struct.TYPE_34__, %struct.TYPE_51__, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i64, i64, i32 }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_35__, i32, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i64, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_44__ = type { %struct.address_space*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"map_mft_record() failed with error code %ld.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_INDEX_ROOT = common dso_local global i32 0, align 4
@I30 = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Index root attribute missing in directory inode 0x%lx.\00", align 1
@EIO = common dso_local global i32 0, align 4
@INDEX_ENTRY_END = common dso_local global i32 0, align 4
@FILE_NAME_DOS = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@IGNORE_CASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [171 x i8] c"Found already allocated name in phase 1. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", align 1
@INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Entry not found.\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"No index allocation attribute but index entry requires one. Directory inode 0x%lx is corrupt or driver bug.\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to map directory index page, error %ld.\00", align 1
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"Out of bounds check failed. Corrupt directory inode 0x%lx or driver bug.\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"Directory index record with vcn 0x%llx is corrupt.  Corrupt inode 0x%lx.  Run chkdsk.\00", align 1
@.str.8 = private unnamed_addr constant [125 x i8] c"Actual VCN (0x%llx) of index buffer is different from expected VCN (0x%llx). Directory inode 0x%lx is corrupt or driver bug.\00", align 1
@.str.9 = private unnamed_addr constant [159 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx has a size (%u) differing from the directory specified size (%u). Directory inode is corrupt or driver bug.\00", align 1
@.str.10 = private unnamed_addr constant [139 x i8] c"Index buffer (VCN 0x%llx) of directory inode 0x%lx crosses page boundary. Impossible! Cannot access! This is probably a bug in the driver.\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"Size of index buffer (VCN 0x%llx) of directory inode 0x%lx exceeds maximum size.\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Index entry out of bounds in directory inode 0x%lx.\00", align 1
@.str.13 = private unnamed_addr constant [171 x i8] c"Found already allocated name in phase 2. Please run chkdsk and if that doesn't find any errors please report you saw this message to linux-ntfs-dev@lists.sourceforge.net.\00", align 1
@NODE_MASK = common dso_local global i32 0, align 4
@LEAF_NODE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [75 x i8] c"Index entry with child node found in a leaf node in directory inode 0x%lx.\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Negative child node vcn in directory inode 0x%lx.\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Corrupt directory.  Aborting lookup.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntfs_lookup_inode_by_name(%struct.TYPE_38__* %0, i32* %1, i32 %2, %struct.TYPE_37__** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_37__**, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.TYPE_40__*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_39__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.address_space*, align 8
  %24 = alloca %struct.page*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca %struct.TYPE_37__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_37__** %3, %struct.TYPE_37__*** %9, align 8
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  store %struct.TYPE_36__* %35, %struct.TYPE_36__** %10, align 8
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 3
  %38 = load %struct.super_block*, %struct.super_block** %37, align 8
  store %struct.super_block* %38, %struct.super_block** %11, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %26, align 8
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %40 = call %struct.TYPE_44__* @VFS_I(%struct.TYPE_38__* %39)
  %41 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %49 = call i32 @NInoAttr(%struct.TYPE_38__* %48)
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %52 = call %struct.page* @map_mft_record(%struct.TYPE_38__* %51)
  store %struct.page* %52, %struct.page** %12, align 8
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = call i64 @IS_ERR(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %4
  %57 = load %struct.super_block*, %struct.super_block** %11, align 8
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = call i32 @PTR_ERR(%struct.page* %58)
  %60 = sub nsw i32 0, %59
  %61 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = call i32 @PTR_ERR(%struct.page* %62)
  %64 = call i8* @ERR_MREF(i32 %63)
  store i8* %64, i8** %5, align 8
  br label %1065

65:                                               ; preds = %4
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %67 = load %struct.page*, %struct.page** %12, align 8
  %68 = call %struct.TYPE_39__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__* %66, %struct.page* %67)
  store %struct.TYPE_39__* %68, %struct.TYPE_39__** %18, align 8
  %69 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %70 = icmp ne %struct.TYPE_39__* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %19, align 4
  br label %1034

78:                                               ; preds = %65
  %79 = load i32, i32* @AT_INDEX_ROOT, align 4
  %80 = load i32, i32* @I30, align 4
  %81 = load i32, i32* @CASE_SENSITIVE, align 4
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %83 = call i32 @ntfs_attr_lookup(i32 %79, i32 %80, i32 4, i32 %81, i32 0, i32* null, i32 0, %struct.TYPE_39__* %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %78
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.super_block*, %struct.super_block** %11, align 8
  %94 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %92, %87
  br label %1034

101:                                              ; preds = %78
  %102 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_46__*, %struct.TYPE_46__** %103, align 8
  %105 = bitcast %struct.TYPE_46__* %104 to i64*
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_46__*, %struct.TYPE_46__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %105, i64 %114
  %116 = bitcast i64* %115 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %116, %struct.TYPE_40__** %13, align 8
  %117 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 0
  %119 = bitcast %struct.TYPE_47__* %118 to i64*
  %120 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %119, i64 %125
  store i64* %126, i64** %16, align 8
  %127 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %127, i32 0, i32 0
  %129 = bitcast %struct.TYPE_47__* %128 to i64*
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %129, i64 %135
  %137 = bitcast i64* %136 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %137, %struct.TYPE_41__** %14, align 8
  br label %138

138:                                              ; preds = %405, %101
  %139 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %140 = bitcast %struct.TYPE_41__* %139 to i64*
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i64*
  %145 = icmp ult i64* %140, %144
  br i1 %145, label %163, label %146

146:                                              ; preds = %138
  %147 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %148 = bitcast %struct.TYPE_41__* %147 to i64*
  %149 = getelementptr inbounds i64, i64* %148, i64 4
  %150 = load i64*, i64** %16, align 8
  %151 = icmp ugt i64* %149, %150
  br i1 %151, label %163, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %154 = bitcast %struct.TYPE_41__* %153 to i64*
  %155 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16_to_cpu(i32 %157)
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %154, i64 %159
  %161 = load i64*, i64** %16, align 8
  %162 = icmp ugt i64* %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %152, %146, %138
  br label %1062

164:                                              ; preds = %152
  %165 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @INDEX_ENTRY_END, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %415

172:                                              ; preds = %164
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @CASE_SENSITIVE, align 4
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ntfs_are_names_equal(i32* %173, i32 %174, i32* %178, i64 %183, i32 %184, i32 %187, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %246

193:                                              ; preds = %172
  br label %194

194:                                              ; preds = %404, %193
  %195 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @FILE_NAME_DOS, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %230

202:                                              ; preds = %194
  %203 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %204 = icmp ne %struct.TYPE_37__* %203, null
  br i1 %204, label %214, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* @GFP_NOFS, align 4
  %207 = call %struct.TYPE_37__* @kmalloc(i32 32, i32 %206)
  store %struct.TYPE_37__* %207, %struct.TYPE_37__** %26, align 8
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %209 = icmp ne %struct.TYPE_37__* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %19, align 4
  br label %1034

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %202
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @le64_to_cpu(i32 %219)
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  %223 = load i64, i64* @FILE_NAME_DOS, align 8
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 1
  store i64 0, i64* %227, align 8
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %229 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* %228, %struct.TYPE_37__** %229, align 8
  br label %234

230:                                              ; preds = %194
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %232 = call i32 @kfree(%struct.TYPE_37__* %231)
  %233 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %233, align 8
  br label %234

234:                                              ; preds = %230, %214
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i8* @le64_to_cpu(i32 %239)
  store i8* %240, i8** %17, align 8
  %241 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %242 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_39__* %241)
  %243 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %244 = call i32 @unmap_mft_record(%struct.TYPE_38__* %243)
  %245 = load i8*, i8** %17, align 8
  store i8* %245, i8** %5, align 8
  br label %1065

246:                                              ; preds = %172
  %247 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %248 = call i32 @NVolCaseSensitive(%struct.TYPE_36__* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %350, label %250

250:                                              ; preds = %246
  %251 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %350

257:                                              ; preds = %250
  %258 = load i32*, i32** %7, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* @IGNORE_CASE, align 4
  %270 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @ntfs_are_names_equal(i32* %258, i32 %259, i32* %263, i64 %268, i32 %269, i32 %272, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %350

278:                                              ; preds = %257
  store i32 32, i32* %27, align 4
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %28, align 8
  %284 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %29, align 8
  %289 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %290 = icmp ne %struct.TYPE_37__* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %278
  %292 = load %struct.super_block*, %struct.super_block** %11, align 8
  %293 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %292, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.2, i64 0, i64 0))
  br label %1062

294:                                              ; preds = %278
  %295 = load i64, i64* %28, align 8
  %296 = load i64, i64* @FILE_NAME_DOS, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %305

298:                                              ; preds = %294
  %299 = load i64, i64* %29, align 8
  %300 = mul i64 %299, 4
  %301 = load i32, i32* %27, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 %302, %300
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %27, align 4
  br label %305

305:                                              ; preds = %298, %294
  %306 = load i32, i32* %27, align 4
  %307 = load i32, i32* @GFP_NOFS, align 4
  %308 = call %struct.TYPE_37__* @kmalloc(i32 %306, i32 %307)
  store %struct.TYPE_37__* %308, %struct.TYPE_37__** %26, align 8
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %310 = icmp ne %struct.TYPE_37__* %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = load i32, i32* @ENOMEM, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %19, align 4
  br label %1034

314:                                              ; preds = %305
  %315 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i8* @le64_to_cpu(i32 %319)
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %322 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %321, i32 0, i32 0
  store i8* %320, i8** %322, align 8
  %323 = load i64, i64* %28, align 8
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %325 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %324, i32 0, i32 3
  store i64 %323, i64* %325, align 8
  %326 = load i64, i64* %28, align 8
  %327 = load i64, i64* @FILE_NAME_DOS, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %344

329:                                              ; preds = %314
  %330 = load i64, i64* %29, align 8
  %331 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %332 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %331, i32 0, i32 1
  store i64 %330, i64* %332, align 8
  %333 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %334 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load i64, i64* %29, align 8
  %342 = mul i64 %341, 4
  %343 = call i32 @memcpy(i32 %335, i32 %340, i64 %342)
  br label %347

344:                                              ; preds = %314
  %345 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %345, i32 0, i32 1
  store i64 0, i64* %346, align 8
  br label %347

347:                                              ; preds = %344, %329
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %349 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* %348, %struct.TYPE_37__** %349, align 8
  br label %350

350:                                              ; preds = %347, %257, %250, %246
  %351 = load i32*, i32** %7, align 8
  %352 = load i32, i32* %8, align 4
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %355, i32 0, i32 2
  %357 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %358 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i32, i32* @IGNORE_CASE, align 4
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @ntfs_collate_names(i32* %351, i32 %352, i32* %356, i64 %361, i32 1, i32 %362, i32 %365, i32 %368)
  store i32 %369, i32* %20, align 4
  %370 = load i32, i32* %20, align 4
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %372, label %373

372:                                              ; preds = %350
  br label %415

373:                                              ; preds = %350
  %374 = load i32, i32* %20, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  br label %405

377:                                              ; preds = %373
  %378 = load i32*, i32** %7, align 8
  %379 = load i32, i32* %8, align 4
  %380 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %385 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* @CASE_SENSITIVE, align 4
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @ntfs_collate_names(i32* %378, i32 %379, i32* %383, i64 %388, i32 1, i32 %389, i32 %392, i32 %395)
  store i32 %396, i32* %20, align 4
  %397 = load i32, i32* %20, align 4
  %398 = icmp eq i32 %397, -1
  br i1 %398, label %399, label %400

399:                                              ; preds = %377
  br label %415

400:                                              ; preds = %377
  %401 = load i32, i32* %20, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  br label %405

404:                                              ; preds = %400
  br label %194

405:                                              ; preds = %403, %376
  %406 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %407 = bitcast %struct.TYPE_41__* %406 to i64*
  %408 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @le16_to_cpu(i32 %410)
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %407, i64 %412
  %414 = bitcast i64* %413 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %414, %struct.TYPE_41__** %14, align 8
  br label %138

415:                                              ; preds = %399, %372, %171
  %416 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %417 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @INDEX_ENTRY_NODE, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %437, label %422

422:                                              ; preds = %415
  %423 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %424 = icmp ne %struct.TYPE_37__* %423, null
  br i1 %424, label %425, label %433

425:                                              ; preds = %422
  %426 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %427 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_39__* %426)
  %428 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %429 = call i32 @unmap_mft_record(%struct.TYPE_38__* %428)
  %430 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %431 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  store i8* %432, i8** %5, align 8
  br label %1065

433:                                              ; preds = %422
  %434 = call i32 @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %435 = load i32, i32* @ENOENT, align 4
  %436 = sub nsw i32 0, %435
  store i32 %436, i32* %19, align 4
  br label %1034

437:                                              ; preds = %415
  %438 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %439 = call i32 @NInoIndexAllocPresent(%struct.TYPE_38__* %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %447, label %441

441:                                              ; preds = %437
  %442 = load %struct.super_block*, %struct.super_block** %11, align 8
  %443 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %442, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 %445)
  br label %1034

447:                                              ; preds = %437
  %448 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %449 = bitcast %struct.TYPE_41__* %448 to i64*
  %450 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %451 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @le16_to_cpu(i32 %452)
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i64, i64* %449, i64 %454
  %456 = getelementptr inbounds i64, i64* %455, i64 -8
  %457 = bitcast i64* %456 to i32*
  %458 = call i32 @sle64_to_cpup(i32* %457)
  store i32 %458, i32* %21, align 4
  %459 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %460 = call %struct.TYPE_44__* @VFS_I(%struct.TYPE_38__* %459)
  %461 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %460, i32 0, i32 0
  %462 = load %struct.address_space*, %struct.address_space** %461, align 8
  store %struct.address_space* %462, %struct.address_space** %23, align 8
  %463 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %464 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_39__* %463)
  %465 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %466 = call i32 @unmap_mft_record(%struct.TYPE_38__* %465)
  store %struct.page* null, %struct.page** %12, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %18, align 8
  br label %467

467:                                              ; preds = %1003, %447
  %468 = load %struct.address_space*, %struct.address_space** %23, align 8
  %469 = load i32, i32* %21, align 4
  %470 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = shl i32 %469, %474
  %476 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %477 = ashr i32 %475, %476
  %478 = call %struct.page* @ntfs_map_page(%struct.address_space* %468, i32 %477)
  store %struct.page* %478, %struct.page** %24, align 8
  %479 = load %struct.page*, %struct.page** %24, align 8
  %480 = call i64 @IS_ERR(%struct.page* %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %467
  %483 = load %struct.super_block*, %struct.super_block** %11, align 8
  %484 = load %struct.page*, %struct.page** %24, align 8
  %485 = call i32 @PTR_ERR(%struct.page* %484)
  %486 = sub nsw i32 0, %485
  %487 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %483, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %486)
  %488 = load %struct.page*, %struct.page** %24, align 8
  %489 = call i32 @PTR_ERR(%struct.page* %488)
  store i32 %489, i32* %19, align 4
  br label %1034

490:                                              ; preds = %467
  %491 = load %struct.page*, %struct.page** %24, align 8
  %492 = call i32 @lock_page(%struct.page* %491)
  %493 = load %struct.page*, %struct.page** %24, align 8
  %494 = call i64 @page_address(%struct.page* %493)
  %495 = inttoptr i64 %494 to i64*
  store i64* %495, i64** %25, align 8
  br label %496

496:                                              ; preds = %1002, %490
  %497 = load i64*, i64** %25, align 8
  %498 = load i32, i32* %21, align 4
  %499 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = shl i32 %498, %503
  %505 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %506 = xor i32 %505, -1
  %507 = and i32 %504, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i64, i64* %497, i64 %508
  %510 = bitcast i64* %509 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %510, %struct.TYPE_42__** %15, align 8
  %511 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %512 = bitcast %struct.TYPE_42__* %511 to i64*
  %513 = load i64*, i64** %25, align 8
  %514 = icmp ult i64* %512, %513
  br i1 %514, label %523, label %515

515:                                              ; preds = %496
  %516 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %517 = bitcast %struct.TYPE_42__* %516 to i64*
  %518 = load i64*, i64** %25, align 8
  %519 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i64, i64* %518, i64 %520
  %522 = icmp ugt i64* %517, %521
  br i1 %522, label %523, label %529

523:                                              ; preds = %515, %496
  %524 = load %struct.super_block*, %struct.super_block** %11, align 8
  %525 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %526 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %524, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %527)
  br label %1029

529:                                              ; preds = %515
  %530 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %531 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @ntfs_is_indx_record(i32 %532)
  %534 = icmp ne i32 %533, 0
  %535 = xor i1 %534, true
  %536 = zext i1 %535 to i32
  %537 = call i64 @unlikely(i32 %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %547

539:                                              ; preds = %529
  %540 = load %struct.super_block*, %struct.super_block** %11, align 8
  %541 = load i32, i32* %21, align 4
  %542 = sext i32 %541 to i64
  %543 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %544 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %540, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0), i64 %542, i32 %545)
  br label %1029

547:                                              ; preds = %529
  %548 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %549 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @sle64_to_cpu(i32 %550)
  %552 = load i32, i32* %21, align 4
  %553 = icmp ne i32 %551, %552
  br i1 %553, label %554, label %567

554:                                              ; preds = %547
  %555 = load %struct.super_block*, %struct.super_block** %11, align 8
  %556 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %557 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @sle64_to_cpu(i32 %558)
  %560 = sext i32 %559 to i64
  %561 = load i32, i32* %21, align 4
  %562 = sext i32 %561 to i64
  %563 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %555, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.8, i64 0, i64 0), i64 %560, i64 %562, i32 %565)
  br label %1029

567:                                              ; preds = %547
  %568 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %569 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @le32_to_cpu(i32 %571)
  %573 = add nsw i32 %572, 24
  %574 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = icmp ne i32 %573, %578
  br i1 %579, label %580, label %599

580:                                              ; preds = %567
  %581 = load %struct.super_block*, %struct.super_block** %11, align 8
  %582 = load i32, i32* %21, align 4
  %583 = sext i32 %582 to i64
  %584 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %588 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %588, i32 0, i32 3
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @le32_to_cpu(i32 %590)
  %592 = add nsw i32 %591, 24
  %593 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %581, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.9, i64 0, i64 0), i64 %583, i32 %586, i32 %592, i32 %597)
  br label %1029

599:                                              ; preds = %567
  %600 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %601 = bitcast %struct.TYPE_42__* %600 to i64*
  %602 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %603 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i64, i64* %601, i64 %607
  store i64* %608, i64** %16, align 8
  %609 = load i64*, i64** %16, align 8
  %610 = load i64*, i64** %25, align 8
  %611 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i64, i64* %610, i64 %612
  %614 = icmp ugt i64* %609, %613
  br i1 %614, label %615, label %623

615:                                              ; preds = %599
  %616 = load %struct.super_block*, %struct.super_block** %11, align 8
  %617 = load i32, i32* %21, align 4
  %618 = sext i32 %617 to i64
  %619 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %620 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %616, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.10, i64 0, i64 0), i64 %618, i32 %621)
  br label %1029

623:                                              ; preds = %599
  %624 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %625 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %624, i32 0, i32 0
  %626 = bitcast %struct.TYPE_35__* %625 to i64*
  %627 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %628 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 4
  %631 = call i32 @le32_to_cpu(i32 %630)
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i64, i64* %626, i64 %632
  store i64* %633, i64** %16, align 8
  %634 = load i64*, i64** %16, align 8
  %635 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %636 = bitcast %struct.TYPE_42__* %635 to i64*
  %637 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %638 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i64, i64* %636, i64 %642
  %644 = icmp ugt i64* %634, %643
  br i1 %644, label %645, label %653

645:                                              ; preds = %623
  %646 = load %struct.super_block*, %struct.super_block** %11, align 8
  %647 = load i32, i32* %21, align 4
  %648 = sext i32 %647 to i64
  %649 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %650 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %646, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0), i64 %648, i32 %651)
  br label %1029

653:                                              ; preds = %623
  %654 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %655 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %654, i32 0, i32 0
  %656 = bitcast %struct.TYPE_35__* %655 to i64*
  %657 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %658 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %657, i32 0, i32 0
  %659 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @le32_to_cpu(i32 %660)
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i64, i64* %656, i64 %662
  %664 = bitcast i64* %663 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %664, %struct.TYPE_41__** %14, align 8
  br label %665

665:                                              ; preds = %939, %653
  %666 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %667 = bitcast %struct.TYPE_41__* %666 to i64*
  %668 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %669 = bitcast %struct.TYPE_42__* %668 to i64*
  %670 = icmp ult i64* %667, %669
  br i1 %670, label %688, label %671

671:                                              ; preds = %665
  %672 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %673 = bitcast %struct.TYPE_41__* %672 to i64*
  %674 = getelementptr inbounds i64, i64* %673, i64 4
  %675 = load i64*, i64** %16, align 8
  %676 = icmp ugt i64* %674, %675
  br i1 %676, label %688, label %677

677:                                              ; preds = %671
  %678 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %679 = bitcast %struct.TYPE_41__* %678 to i64*
  %680 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %681 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %680, i32 0, i32 4
  %682 = load i32, i32* %681, align 4
  %683 = call i32 @le16_to_cpu(i32 %682)
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i64, i64* %679, i64 %684
  %686 = load i64*, i64** %16, align 8
  %687 = icmp ugt i64* %685, %686
  br i1 %687, label %688, label %694

688:                                              ; preds = %677, %671, %665
  %689 = load %struct.super_block*, %struct.super_block** %11, align 8
  %690 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %691 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  %693 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %689, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %692)
  br label %1029

694:                                              ; preds = %677
  %695 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %696 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = load i32, i32* @INDEX_ENTRY_END, align 4
  %699 = and i32 %697, %698
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %702

701:                                              ; preds = %694
  br label %949

702:                                              ; preds = %694
  %703 = load i32*, i32** %7, align 8
  %704 = load i32, i32* %8, align 4
  %705 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %706 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %705, i32 0, i32 2
  %707 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %707, i32 0, i32 2
  %709 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %710 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %709, i32 0, i32 2
  %711 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = load i32, i32* @CASE_SENSITIVE, align 4
  %715 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %716 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %715, i32 0, i32 2
  %717 = load i32, i32* %716, align 8
  %718 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %719 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = call i64 @ntfs_are_names_equal(i32* %703, i32 %704, i32* %708, i64 %713, i32 %714, i32 %717, i32 %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %776

723:                                              ; preds = %702
  br label %724

724:                                              ; preds = %938, %723
  %725 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %726 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %725, i32 0, i32 2
  %727 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %726, i32 0, i32 0
  %728 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %727, i32 0, i32 1
  %729 = load i64, i64* %728, align 8
  %730 = load i64, i64* @FILE_NAME_DOS, align 8
  %731 = icmp eq i64 %729, %730
  br i1 %731, label %732, label %760

732:                                              ; preds = %724
  %733 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %734 = icmp ne %struct.TYPE_37__* %733, null
  br i1 %734, label %744, label %735

735:                                              ; preds = %732
  %736 = load i32, i32* @GFP_NOFS, align 4
  %737 = call %struct.TYPE_37__* @kmalloc(i32 32, i32 %736)
  store %struct.TYPE_37__* %737, %struct.TYPE_37__** %26, align 8
  %738 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %739 = icmp ne %struct.TYPE_37__* %738, null
  br i1 %739, label %743, label %740

740:                                              ; preds = %735
  %741 = load i32, i32* @ENOMEM, align 4
  %742 = sub nsw i32 0, %741
  store i32 %742, i32* %19, align 4
  br label %1029

743:                                              ; preds = %735
  br label %744

744:                                              ; preds = %743, %732
  %745 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %746 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %745, i32 0, i32 3
  %747 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %747, i32 0, i32 0
  %749 = load i32, i32* %748, align 8
  %750 = call i8* @le64_to_cpu(i32 %749)
  %751 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %752 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %751, i32 0, i32 0
  store i8* %750, i8** %752, align 8
  %753 = load i64, i64* @FILE_NAME_DOS, align 8
  %754 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %755 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %754, i32 0, i32 3
  store i64 %753, i64* %755, align 8
  %756 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %757 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %756, i32 0, i32 1
  store i64 0, i64* %757, align 8
  %758 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %759 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* %758, %struct.TYPE_37__** %759, align 8
  br label %764

760:                                              ; preds = %724
  %761 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %762 = call i32 @kfree(%struct.TYPE_37__* %761)
  %763 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %763, align 8
  br label %764

764:                                              ; preds = %760, %744
  %765 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %766 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %765, i32 0, i32 3
  %767 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 8
  %770 = call i8* @le64_to_cpu(i32 %769)
  store i8* %770, i8** %17, align 8
  %771 = load %struct.page*, %struct.page** %24, align 8
  %772 = call i32 @unlock_page(%struct.page* %771)
  %773 = load %struct.page*, %struct.page** %24, align 8
  %774 = call i32 @ntfs_unmap_page(%struct.page* %773)
  %775 = load i8*, i8** %17, align 8
  store i8* %775, i8** %5, align 8
  br label %1065

776:                                              ; preds = %702
  %777 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %778 = call i32 @NVolCaseSensitive(%struct.TYPE_36__* %777)
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %884, label %780

780:                                              ; preds = %776
  %781 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %782 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %781, i32 0, i32 2
  %783 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %782, i32 0, i32 0
  %784 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %783, i32 0, i32 1
  %785 = load i64, i64* %784, align 8
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %787, label %884

787:                                              ; preds = %780
  %788 = load i32*, i32** %7, align 8
  %789 = load i32, i32* %8, align 4
  %790 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %791 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %790, i32 0, i32 2
  %792 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %791, i32 0, i32 0
  %793 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %792, i32 0, i32 2
  %794 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %795 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %794, i32 0, i32 2
  %796 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %795, i32 0, i32 0
  %797 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %796, i32 0, i32 0
  %798 = load i64, i64* %797, align 8
  %799 = load i32, i32* @IGNORE_CASE, align 4
  %800 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %801 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %800, i32 0, i32 2
  %802 = load i32, i32* %801, align 8
  %803 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %804 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %803, i32 0, i32 1
  %805 = load i32, i32* %804, align 4
  %806 = call i64 @ntfs_are_names_equal(i32* %788, i32 %789, i32* %793, i64 %798, i32 %799, i32 %802, i32 %805)
  %807 = icmp ne i64 %806, 0
  br i1 %807, label %808, label %884

808:                                              ; preds = %787
  store i32 32, i32* %30, align 4
  %809 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %810 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %809, i32 0, i32 2
  %811 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %810, i32 0, i32 0
  %812 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %811, i32 0, i32 1
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %31, align 8
  %814 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %815 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %814, i32 0, i32 2
  %816 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %815, i32 0, i32 0
  %817 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %816, i32 0, i32 0
  %818 = load i64, i64* %817, align 8
  store i64 %818, i64* %32, align 8
  %819 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %820 = icmp ne %struct.TYPE_37__* %819, null
  br i1 %820, label %821, label %828

821:                                              ; preds = %808
  %822 = load %struct.super_block*, %struct.super_block** %11, align 8
  %823 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %822, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.13, i64 0, i64 0))
  %824 = load %struct.page*, %struct.page** %24, align 8
  %825 = call i32 @unlock_page(%struct.page* %824)
  %826 = load %struct.page*, %struct.page** %24, align 8
  %827 = call i32 @ntfs_unmap_page(%struct.page* %826)
  br label %1062

828:                                              ; preds = %808
  %829 = load i64, i64* %31, align 8
  %830 = load i64, i64* @FILE_NAME_DOS, align 8
  %831 = icmp ne i64 %829, %830
  br i1 %831, label %832, label %839

832:                                              ; preds = %828
  %833 = load i64, i64* %32, align 8
  %834 = mul i64 %833, 4
  %835 = load i32, i32* %30, align 4
  %836 = sext i32 %835 to i64
  %837 = add i64 %836, %834
  %838 = trunc i64 %837 to i32
  store i32 %838, i32* %30, align 4
  br label %839

839:                                              ; preds = %832, %828
  %840 = load i32, i32* %30, align 4
  %841 = load i32, i32* @GFP_NOFS, align 4
  %842 = call %struct.TYPE_37__* @kmalloc(i32 %840, i32 %841)
  store %struct.TYPE_37__* %842, %struct.TYPE_37__** %26, align 8
  %843 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %844 = icmp ne %struct.TYPE_37__* %843, null
  br i1 %844, label %848, label %845

845:                                              ; preds = %839
  %846 = load i32, i32* @ENOMEM, align 4
  %847 = sub nsw i32 0, %846
  store i32 %847, i32* %19, align 4
  br label %1029

848:                                              ; preds = %839
  %849 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %850 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %849, i32 0, i32 3
  %851 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %850, i32 0, i32 0
  %852 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 8
  %854 = call i8* @le64_to_cpu(i32 %853)
  %855 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %856 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %855, i32 0, i32 0
  store i8* %854, i8** %856, align 8
  %857 = load i64, i64* %31, align 8
  %858 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %859 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %858, i32 0, i32 3
  store i64 %857, i64* %859, align 8
  %860 = load i64, i64* %31, align 8
  %861 = load i64, i64* @FILE_NAME_DOS, align 8
  %862 = icmp ne i64 %860, %861
  br i1 %862, label %863, label %878

863:                                              ; preds = %848
  %864 = load i64, i64* %32, align 8
  %865 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %866 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %865, i32 0, i32 1
  store i64 %864, i64* %866, align 8
  %867 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %868 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %867, i32 0, i32 2
  %869 = load i32, i32* %868, align 8
  %870 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %871 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %870, i32 0, i32 2
  %872 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %871, i32 0, i32 0
  %873 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %872, i32 0, i32 2
  %874 = load i32, i32* %873, align 8
  %875 = load i64, i64* %32, align 8
  %876 = mul i64 %875, 4
  %877 = call i32 @memcpy(i32 %869, i32 %874, i64 %876)
  br label %881

878:                                              ; preds = %848
  %879 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %880 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %879, i32 0, i32 1
  store i64 0, i64* %880, align 8
  br label %881

881:                                              ; preds = %878, %863
  %882 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %883 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* %882, %struct.TYPE_37__** %883, align 8
  br label %884

884:                                              ; preds = %881, %787, %780, %776
  %885 = load i32*, i32** %7, align 8
  %886 = load i32, i32* %8, align 4
  %887 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %888 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %887, i32 0, i32 2
  %889 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %888, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %889, i32 0, i32 2
  %891 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %892 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %891, i32 0, i32 2
  %893 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %892, i32 0, i32 0
  %894 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %893, i32 0, i32 0
  %895 = load i64, i64* %894, align 8
  %896 = load i32, i32* @IGNORE_CASE, align 4
  %897 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %898 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %897, i32 0, i32 2
  %899 = load i32, i32* %898, align 8
  %900 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %901 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %900, i32 0, i32 1
  %902 = load i32, i32* %901, align 4
  %903 = call i32 @ntfs_collate_names(i32* %885, i32 %886, i32* %890, i64 %895, i32 1, i32 %896, i32 %899, i32 %902)
  store i32 %903, i32* %20, align 4
  %904 = load i32, i32* %20, align 4
  %905 = icmp eq i32 %904, -1
  br i1 %905, label %906, label %907

906:                                              ; preds = %884
  br label %949

907:                                              ; preds = %884
  %908 = load i32, i32* %20, align 4
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %911

910:                                              ; preds = %907
  br label %939

911:                                              ; preds = %907
  %912 = load i32*, i32** %7, align 8
  %913 = load i32, i32* %8, align 4
  %914 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %915 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %914, i32 0, i32 2
  %916 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %915, i32 0, i32 0
  %917 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %916, i32 0, i32 2
  %918 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %919 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %918, i32 0, i32 2
  %920 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %919, i32 0, i32 0
  %921 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %920, i32 0, i32 0
  %922 = load i64, i64* %921, align 8
  %923 = load i32, i32* @CASE_SENSITIVE, align 4
  %924 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %925 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %924, i32 0, i32 2
  %926 = load i32, i32* %925, align 8
  %927 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %928 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %927, i32 0, i32 1
  %929 = load i32, i32* %928, align 4
  %930 = call i32 @ntfs_collate_names(i32* %912, i32 %913, i32* %917, i64 %922, i32 1, i32 %923, i32 %926, i32 %929)
  store i32 %930, i32* %20, align 4
  %931 = load i32, i32* %20, align 4
  %932 = icmp eq i32 %931, -1
  br i1 %932, label %933, label %934

933:                                              ; preds = %911
  br label %949

934:                                              ; preds = %911
  %935 = load i32, i32* %20, align 4
  %936 = icmp ne i32 %935, 0
  br i1 %936, label %937, label %938

937:                                              ; preds = %934
  br label %939

938:                                              ; preds = %934
  br label %724

939:                                              ; preds = %937, %910
  %940 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %941 = bitcast %struct.TYPE_41__* %940 to i64*
  %942 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %943 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %942, i32 0, i32 1
  %944 = load i32, i32* %943, align 4
  %945 = call i32 @le16_to_cpu(i32 %944)
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i64, i64* %941, i64 %946
  %948 = bitcast i64* %947 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %948, %struct.TYPE_41__** %14, align 8
  br label %665

949:                                              ; preds = %933, %906, %701
  %950 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %951 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %950, i32 0, i32 0
  %952 = load i32, i32* %951, align 8
  %953 = load i32, i32* @INDEX_ENTRY_NODE, align 4
  %954 = and i32 %952, %953
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %1014

956:                                              ; preds = %949
  %957 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %958 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %957, i32 0, i32 0
  %959 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 4
  %961 = load i32, i32* @NODE_MASK, align 4
  %962 = and i32 %960, %961
  %963 = load i32, i32* @LEAF_NODE, align 4
  %964 = icmp eq i32 %962, %963
  br i1 %964, label %965, label %971

965:                                              ; preds = %956
  %966 = load %struct.super_block*, %struct.super_block** %11, align 8
  %967 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %968 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %967, i32 0, i32 0
  %969 = load i32, i32* %968, align 8
  %970 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %966, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i64 0, i64 0), i32 %969)
  br label %1029

971:                                              ; preds = %956
  %972 = load i32, i32* %21, align 4
  store i32 %972, i32* %22, align 4
  %973 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %974 = bitcast %struct.TYPE_41__* %973 to i64*
  %975 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %976 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %975, i32 0, i32 1
  %977 = load i32, i32* %976, align 4
  %978 = call i32 @le16_to_cpu(i32 %977)
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i64, i64* %974, i64 %979
  %981 = getelementptr inbounds i64, i64* %980, i64 -8
  %982 = bitcast i64* %981 to i32*
  %983 = call i32 @sle64_to_cpup(i32* %982)
  store i32 %983, i32* %21, align 4
  %984 = load i32, i32* %21, align 4
  %985 = icmp sge i32 %984, 0
  br i1 %985, label %986, label %1008

986:                                              ; preds = %971
  %987 = load i32, i32* %22, align 4
  %988 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %989 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %988, i32 0, i32 0
  %990 = load i32, i32* %989, align 8
  %991 = shl i32 %987, %990
  %992 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %993 = ashr i32 %991, %992
  %994 = load i32, i32* %21, align 4
  %995 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %996 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %995, i32 0, i32 0
  %997 = load i32, i32* %996, align 8
  %998 = shl i32 %994, %997
  %999 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %1000 = ashr i32 %998, %999
  %1001 = icmp eq i32 %993, %1000
  br i1 %1001, label %1002, label %1003

1002:                                             ; preds = %986
  br label %496

1003:                                             ; preds = %986
  %1004 = load %struct.page*, %struct.page** %24, align 8
  %1005 = call i32 @unlock_page(%struct.page* %1004)
  %1006 = load %struct.page*, %struct.page** %24, align 8
  %1007 = call i32 @ntfs_unmap_page(%struct.page* %1006)
  br label %467

1008:                                             ; preds = %971
  %1009 = load %struct.super_block*, %struct.super_block** %11, align 8
  %1010 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %1011 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %1010, i32 0, i32 0
  %1012 = load i32, i32* %1011, align 8
  %1013 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1009, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 %1012)
  br label %1029

1014:                                             ; preds = %949
  %1015 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %1016 = icmp ne %struct.TYPE_37__* %1015, null
  br i1 %1016, label %1017, label %1025

1017:                                             ; preds = %1014
  %1018 = load %struct.page*, %struct.page** %24, align 8
  %1019 = call i32 @unlock_page(%struct.page* %1018)
  %1020 = load %struct.page*, %struct.page** %24, align 8
  %1021 = call i32 @ntfs_unmap_page(%struct.page* %1020)
  %1022 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %1023 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %1022, i32 0, i32 0
  %1024 = load i8*, i8** %1023, align 8
  store i8* %1024, i8** %5, align 8
  br label %1065

1025:                                             ; preds = %1014
  %1026 = call i32 @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %1027 = load i32, i32* @ENOENT, align 4
  %1028 = sub nsw i32 0, %1027
  store i32 %1028, i32* %19, align 4
  br label %1029

1029:                                             ; preds = %1025, %1008, %965, %845, %740, %688, %645, %615, %580, %554, %539, %523
  %1030 = load %struct.page*, %struct.page** %24, align 8
  %1031 = call i32 @unlock_page(%struct.page* %1030)
  %1032 = load %struct.page*, %struct.page** %24, align 8
  %1033 = call i32 @ntfs_unmap_page(%struct.page* %1032)
  br label %1034

1034:                                             ; preds = %1062, %1029, %482, %441, %433, %311, %210, %100, %75
  %1035 = load i32, i32* %19, align 4
  %1036 = icmp ne i32 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1034
  %1038 = load i32, i32* @EIO, align 4
  %1039 = sub nsw i32 0, %1038
  store i32 %1039, i32* %19, align 4
  br label %1040

1040:                                             ; preds = %1037, %1034
  %1041 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %1042 = icmp ne %struct.TYPE_39__* %1041, null
  br i1 %1042, label %1043, label %1046

1043:                                             ; preds = %1040
  %1044 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %1045 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_39__* %1044)
  br label %1046

1046:                                             ; preds = %1043, %1040
  %1047 = load %struct.page*, %struct.page** %12, align 8
  %1048 = icmp ne %struct.page* %1047, null
  br i1 %1048, label %1049, label %1052

1049:                                             ; preds = %1046
  %1050 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %1051 = call i32 @unmap_mft_record(%struct.TYPE_38__* %1050)
  br label %1052

1052:                                             ; preds = %1049, %1046
  %1053 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %1054 = icmp ne %struct.TYPE_37__* %1053, null
  br i1 %1054, label %1055, label %1059

1055:                                             ; preds = %1052
  %1056 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  %1057 = call i32 @kfree(%struct.TYPE_37__* %1056)
  %1058 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %9, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %1058, align 8
  br label %1059

1059:                                             ; preds = %1055, %1052
  %1060 = load i32, i32* %19, align 4
  %1061 = call i8* @ERR_MREF(i32 %1060)
  store i8* %1061, i8** %5, align 8
  br label %1065

1062:                                             ; preds = %821, %291, %163
  %1063 = load %struct.super_block*, %struct.super_block** %11, align 8
  %1064 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %1063, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %1034

1065:                                             ; preds = %1059, %1017, %764, %425, %234, %56
  %1066 = load i8*, i8** %5, align 8
  ret i8* %1066
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_44__* @VFS_I(%struct.TYPE_38__*) #1

declare dso_local i32 @NInoAttr(%struct.TYPE_38__*) #1

declare dso_local %struct.page* @map_mft_record(%struct.TYPE_38__*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @ERR_MREF(i32) #1

declare dso_local %struct.TYPE_39__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__*, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ntfs_are_names_equal(i32*, i32, i32*, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_37__* @kmalloc(i32, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_37__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_39__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_38__*) #1

declare dso_local i32 @NVolCaseSensitive(%struct.TYPE_36__*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ntfs_collate_names(i32*, i32, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local i32 @NInoIndexAllocPresent(%struct.TYPE_38__*) #1

declare dso_local i32 @sle64_to_cpup(i32*) #1

declare dso_local %struct.page* @ntfs_map_page(%struct.address_space*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @ntfs_is_indx_record(i32) #1

declare dso_local i32 @sle64_to_cpu(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ntfs_unmap_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
