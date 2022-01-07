; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_namei.c_ntfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_24__, i32, i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_26__, i32, i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64 }
%struct.qstr = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_31__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Looking up %s in directory inode 0x%lx.\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to convert name to Unicode.\00", align 1
@ntfs_name_cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Found inode 0x%lx. Calling ntfs_iget.\00", align 1
@FILE_MFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Done.  (Case 1.)\00", align 1
@.str.4 = private unnamed_addr constant [131 x i8] c"Found stale reference to inode 0x%lx (reference sequence number = 0x%x, inode sequence number = 0x%x), returning -EIO. Run chkdsk.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ntfs_iget(0x%lx) failed with error code %li.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Entry was not found, adding negative dentry.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"ntfs_lookup_ino_by_name() failed with error code %i.\00", align 1
@FILE_NAME_DOS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Case 2.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Case 3.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AT_FILE_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [76 x i8] c"Inode corrupt: No WIN32 namespace counterpart to DOS file name. Run chkdsk.\00", align 1
@FILE_NAME_WIN32 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"Illegal file name attribute. Run chkdsk.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed, returning error code %i.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @ntfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ntfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.qstr, align 8
  %20 = alloca %struct.TYPE_31__*, align 8
  %21 = alloca %struct.TYPE_32__*, align 8
  %22 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_27__* @NTFS_SB(i32 %25)
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %11, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntfs_nlstoucs(%struct.TYPE_27__* %35, i32 %39, i32 %43, i32** %10)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %3
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @ENAMETOOLONG, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @ntfs_error(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %14, align 4
  %59 = call %struct.inode* @ERR_PTR(i32 %58)
  %60 = bitcast %struct.inode* %59 to %struct.dentry*
  store %struct.dentry* %60, %struct.dentry** %4, align 8
  br label %380

61:                                               ; preds = %3
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ntfs_lookup_inode_by_name(%struct.TYPE_29__* %63, i32* %64, i32 %65, %struct.TYPE_28__** %11)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* @ntfs_name_cache, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @kmem_cache_free(i32 %67, i32* %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @IS_ERR_MREF(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %147, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @MREF(i32 %74)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %13, align 8
  %82 = call %struct.inode* @ntfs_iget(i32 %80, i64 %81)
  store %struct.inode* %82, %struct.inode** %9, align 8
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call i64 @IS_ERR(%struct.inode* %83)
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %134

90:                                               ; preds = %73
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call i64 @is_bad_inode(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @MSEQNO(i32 %95)
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @FILE_MFT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102, %94, %90
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %108 = icmp ne %struct.TYPE_28__* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = load %struct.dentry*, %struct.dentry** %6, align 8
  %113 = bitcast %struct.dentry* %112 to %struct.inode*
  %114 = call %struct.inode* @d_splice_alias(%struct.inode* %111, %struct.inode* %113)
  %115 = bitcast %struct.inode* %114 to %struct.dentry*
  store %struct.dentry* %115, %struct.dentry** %4, align 8
  br label %380

116:                                              ; preds = %106
  br label %171

117:                                              ; preds = %102
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %13, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @MSEQNO(i32 %122)
  %124 = load %struct.inode*, %struct.inode** %9, align 8
  %125 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %124)
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i8*, ...) @ntfs_error(i32 %120, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.4, i64 0, i64 0), i64 %121, i64 %123, i64 %127)
  %129 = load %struct.inode*, %struct.inode** %9, align 8
  %130 = call i32 @iput(%struct.inode* %129)
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  %133 = call %struct.inode* @ERR_PTR(i32 %132)
  store %struct.inode* %133, %struct.inode** %9, align 8
  br label %142

134:                                              ; preds = %73
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %13, align 8
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = call i32 @PTR_ERR(%struct.inode* %139)
  %141 = call i32 (i32, i8*, ...) @ntfs_error(i32 %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %138, i32 %140)
  br label %142

142:                                              ; preds = %134, %117
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %144 = call i32 @kfree(%struct.TYPE_28__* %143)
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = bitcast %struct.inode* %145 to %struct.dentry*
  store %struct.dentry* %146, %struct.dentry** %4, align 8
  br label %380

147:                                              ; preds = %61
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @MREF_ERR(i32 %148)
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %155 = load %struct.dentry*, %struct.dentry** %6, align 8
  %156 = bitcast %struct.dentry* %155 to %struct.inode*
  %157 = call i32 @d_add(%struct.inode* %156, i32* null)
  %158 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %380

159:                                              ; preds = %147
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @MREF_ERR(i32 %163)
  %165 = sub nsw i32 0, %164
  %166 = call i32 (i32, i8*, ...) @ntfs_error(i32 %162, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @MREF_ERR(i32 %167)
  %169 = call %struct.inode* @ERR_PTR(i32 %168)
  %170 = bitcast %struct.inode* %169 to %struct.dentry*
  store %struct.dentry* %170, %struct.dentry** %4, align 8
  br label %380

171:                                              ; preds = %116
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %172)
  store %struct.TYPE_29__* %173, %struct.TYPE_29__** %17, align 8
  %174 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %174, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @FILE_NAME_DOS, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %171
  %181 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %189 = bitcast %struct.TYPE_28__** %188 to i8**
  %190 = call i64 @ntfs_ucstonls(%struct.TYPE_27__* %182, i32* %184, i32 %187, i8** %189, i32 0)
  %191 = trunc i64 %190 to i32
  %192 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %194 = call i32 @kfree(%struct.TYPE_28__* %193)
  br label %327

195:                                              ; preds = %171
  %196 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %198 = call i32 @kfree(%struct.TYPE_28__* %197)
  %199 = load %struct.inode*, %struct.inode** %9, align 8
  %200 = call %struct.TYPE_29__* @NTFS_I(%struct.inode* %199)
  store %struct.TYPE_29__* %200, %struct.TYPE_29__** %17, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %202 = call %struct.inode* @map_mft_record(%struct.TYPE_29__* %201)
  store %struct.inode* %202, %struct.inode** %15, align 8
  %203 = load %struct.inode*, %struct.inode** %15, align 8
  %204 = call i64 @IS_ERR(%struct.inode* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %195
  %207 = load %struct.inode*, %struct.inode** %15, align 8
  %208 = call i32 @PTR_ERR(%struct.inode* %207)
  store i32 %208, i32* %18, align 4
  store %struct.inode* null, %struct.inode** %15, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %16, align 8
  br label %357

209:                                              ; preds = %195
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %211 = load %struct.inode*, %struct.inode** %15, align 8
  %212 = call %struct.TYPE_30__* @ntfs_attr_get_search_ctx(%struct.TYPE_29__* %210, %struct.inode* %211)
  store %struct.TYPE_30__* %212, %struct.TYPE_30__** %16, align 8
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %214 = icmp ne %struct.TYPE_30__* %213, null
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %18, align 4
  br label %357

222:                                              ; preds = %209
  br label %223

223:                                              ; preds = %305, %222
  %224 = load i32, i32* @AT_FILE_NAME, align 4
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %226 = call i32 @ntfs_attr_lookup(i32 %224, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_30__* %225)
  store i32 %226, i32* %18, align 4
  %227 = load i32, i32* %18, align 4
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %223
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i8*, ...) @ntfs_error(i32 %233, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* @ENOENT, align 4
  %237 = sub nsw i32 0, %236
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %230
  %240 = load i32, i32* @EIO, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %18, align 4
  br label %242

242:                                              ; preds = %239, %230
  br label %357

243:                                              ; preds = %223
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %245, align 8
  store %struct.TYPE_32__* %246, %struct.TYPE_32__** %21, align 8
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %243
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251, %243
  br label %350

257:                                              ; preds = %251
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @le32_to_cpu(i32 %262)
  store i64 %263, i64* %22, align 8
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @le16_to_cpu(i32 %268)
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %22, align 8
  %272 = add nsw i64 %270, %271
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @le32_to_cpu(i32 %275)
  %277 = icmp sgt i64 %272, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %257
  br label %350

279:                                              ; preds = %257
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %281, align 8
  %283 = bitcast %struct.TYPE_32__* %282 to i32*
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @le16_to_cpu(i32 %290)
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %283, i64 %292
  %294 = bitcast i32* %293 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %294, %struct.TYPE_31__** %20, align 8
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = add i64 %299, 16
  %301 = load i64, i64* %22, align 8
  %302 = icmp sgt i64 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %279
  br label %350

304:                                              ; preds = %279
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @FILE_NAME_WIN32, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %223, label %311

311:                                              ; preds = %305
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %319 = bitcast %struct.TYPE_28__** %318 to i8**
  %320 = call i64 @ntfs_ucstonls(%struct.TYPE_27__* %312, i32* %314, i32 %317, i8** %319, i32 0)
  %321 = trunc i64 %320 to i32
  %322 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  store i32 %321, i32* %322, align 8
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %324 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__* %323)
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %326 = call i32 @unmap_mft_record(%struct.TYPE_29__* %325)
  br label %327

327:                                              ; preds = %311, %180
  store %struct.inode* null, %struct.inode** %15, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %16, align 8
  %328 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  store i32 %333, i32* %18, align 4
  br label %357

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %335, align 8
  %337 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @full_name_hash(%struct.TYPE_28__* %336, i32 %338)
  %340 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 2
  store i32 %339, i32* %340, align 8
  %341 = load %struct.dentry*, %struct.dentry** %6, align 8
  %342 = bitcast %struct.dentry* %341 to %struct.inode*
  %343 = load %struct.inode*, %struct.inode** %9, align 8
  %344 = call %struct.inode* @d_add_ci(%struct.inode* %342, %struct.inode* %343, %struct.qstr* %19)
  %345 = bitcast %struct.inode* %344 to %struct.dentry*
  store %struct.dentry* %345, %struct.dentry** %6, align 8
  %346 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %346, align 8
  %348 = call i32 @kfree(%struct.TYPE_28__* %347)
  %349 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %349, %struct.dentry** %4, align 8
  br label %380

350:                                              ; preds = %303, %278, %256
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 (i32, i8*, ...) @ntfs_error(i32 %353, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %355 = load i32, i32* @EIO, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %18, align 4
  br label %357

357:                                              ; preds = %350, %331, %242, %219, %206
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %359 = icmp ne %struct.TYPE_30__* %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %362 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__* %361)
  br label %363

363:                                              ; preds = %360, %357
  %364 = load %struct.inode*, %struct.inode** %15, align 8
  %365 = icmp ne %struct.inode* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %368 = call i32 @unmap_mft_record(%struct.TYPE_29__* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = load %struct.inode*, %struct.inode** %9, align 8
  %371 = call i32 @iput(%struct.inode* %370)
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %18, align 4
  %376 = call i32 (i32, i8*, ...) @ntfs_error(i32 %374, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %375)
  %377 = load i32, i32* %18, align 4
  %378 = call %struct.inode* @ERR_PTR(i32 %377)
  %379 = bitcast %struct.inode* %378 to %struct.dentry*
  store %struct.dentry* %379, %struct.dentry** %4, align 8
  br label %380

380:                                              ; preds = %369, %334, %159, %153, %142, %109, %57
  %381 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %381
}

declare dso_local %struct.TYPE_27__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_nlstoucs(%struct.TYPE_27__*, i32, i32, i32**) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @ntfs_lookup_inode_by_name(%struct.TYPE_29__*, i32*, i32, %struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_29__* @NTFS_I(%struct.inode*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

declare dso_local i32 @IS_ERR_MREF(i32) #1

declare dso_local i64 @MREF(i32) #1

declare dso_local %struct.inode* @ntfs_iget(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @MSEQNO(i32) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.TYPE_28__*) #1

declare dso_local i32 @MREF_ERR(i32) #1

declare dso_local i32 @d_add(%struct.inode*, i32*) #1

declare dso_local i64 @ntfs_ucstonls(%struct.TYPE_27__*, i32*, i32, i8**, i32) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @ntfs_attr_get_search_ctx(%struct.TYPE_29__*, %struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_30__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_30__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_29__*) #1

declare dso_local i32 @full_name_hash(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.inode* @d_add_ci(%struct.inode*, %struct.inode*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
