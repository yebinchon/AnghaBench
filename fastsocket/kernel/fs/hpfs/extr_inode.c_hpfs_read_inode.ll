; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_inode.c_hpfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_7__, i32*, i32*, %struct.super_block*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hpfs_inode_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GID\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@hpfs_symlink_aops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@hpfs_dir_iops = common dso_local global i32 0, align 4
@hpfs_dir_ops = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@hpfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_read_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.fnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hpfs_inode_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 7
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %17)
  store %struct.hpfs_inode_info* %18, %struct.hpfs_inode_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %19, i32 %22, %struct.buffer_head** %3)
  store %struct.fnode* %23, %struct.fnode** %4, align 8
  %24 = icmp ne %struct.fnode* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @make_bad_inode(%struct.inode* %26)
  br label %306

28:                                               ; preds = %1
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 7
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  %32 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %28
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 7
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  %40 = load %struct.fnode*, %struct.fnode** %4, align 8
  %41 = call i8* @hpfs_get_ea(%struct.super_block* %39, %struct.fnode* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i8* %41, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16_to_cpu(i32 %49)
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %54 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @kfree(i8* %56)
  br label %58

58:                                               ; preds = %55, %36
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 7
  %61 = load %struct.super_block*, %struct.super_block** %60, align 8
  %62 = load %struct.fnode*, %struct.fnode** %4, align 8
  %63 = call i8* @hpfs_get_ea(%struct.super_block* %61, %struct.fnode* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i8* %63, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %76 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @kfree(i8* %78)
  br label %80

80:                                               ; preds = %77, %58
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 7
  %83 = load %struct.super_block*, %struct.super_block** %82, align 8
  %84 = load %struct.fnode*, %struct.fnode** %4, align 8
  %85 = call i8* @hpfs_get_ea(%struct.super_block* %83, %struct.fnode* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i8* %85, i8** %7, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load i32, i32* @S_IFLNK, align 4
  %91 = or i32 %90, 511
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 6
  store i32* @page_symlink_inode_operations, i32** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %2, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32* @hpfs_symlink_aops, i32** %98, align 8
  %99 = load %struct.inode*, %struct.inode** %2, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.inode*, %struct.inode** %2, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.inode*, %struct.inode** %2, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 3
  store i32 1, i32* %105, align 4
  %106 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  br label %306

108:                                              ; preds = %80
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 7
  %111 = load %struct.super_block*, %struct.super_block** %110, align 8
  %112 = load %struct.fnode*, %struct.fnode** %4, align 8
  %113 = call i8* @hpfs_get_ea(%struct.super_block* %111, %struct.fnode* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i8* %113, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %193

115:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i8*, i8** %7, align 8
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le16_to_cpu(i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %10, align 4
  %128 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %129 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %122, %115
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.inode*, %struct.inode** %2, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @S_ISBLK(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @S_ISCHR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139, %130
  %144 = load %struct.inode*, %struct.inode** %2, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 7
  %146 = load %struct.super_block*, %struct.super_block** %145, align 8
  %147 = load %struct.fnode*, %struct.fnode** %4, align 8
  %148 = call i8* @hpfs_get_ea(%struct.super_block* %146, %struct.fnode* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  store i8* %148, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i8*, i8** %7, align 8
  %155 = bitcast i8* %154 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @kfree(i8* %159)
  br label %161

161:                                              ; preds = %158, %143
  br label %162

162:                                              ; preds = %161, %139
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @S_ISBLK(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %10, align 4
  %168 = call i64 @S_ISCHR(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = call i64 @S_ISFIFO(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @S_ISSOCK(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %174, %170, %166, %162
  %179 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %180 = call i32 @brelse(%struct.buffer_head* %179)
  %181 = load %struct.inode*, %struct.inode** %2, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  %183 = load %struct.inode*, %struct.inode** %2, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 2
  store i32 0, i32* %184, align 8
  %185 = load %struct.inode*, %struct.inode** %2, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  %187 = load %struct.inode*, %struct.inode** %2, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @new_decode_dev(i32 %189)
  %191 = call i32 @init_special_inode(%struct.inode* %187, i32 %188, i32 %190)
  br label %306

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %108
  br label %194

194:                                              ; preds = %193, %28
  %195 = load %struct.fnode*, %struct.fnode** %4, align 8
  %196 = getelementptr inbounds %struct.fnode, %struct.fnode* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %259

199:                                              ; preds = %194
  %200 = load i32, i32* @S_IFDIR, align 4
  %201 = load %struct.inode*, %struct.inode** %2, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.inode*, %struct.inode** %2, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 6
  store i32* @hpfs_dir_iops, i32** %206, align 8
  %207 = load %struct.inode*, %struct.inode** %2, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 5
  store i32* @hpfs_dir_ops, i32** %208, align 8
  %209 = load %struct.fnode*, %struct.fnode** %4, align 8
  %210 = getelementptr inbounds %struct.fnode, %struct.fnode* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %213 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 4
  %214 = load %struct.fnode*, %struct.fnode** %4, align 8
  %215 = getelementptr inbounds %struct.fnode, %struct.fnode* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %222 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  %223 = load %struct.super_block*, %struct.super_block** %5, align 8
  %224 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %223)
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp sge i32 %226, 2
  br i1 %227, label %228, label %239

228:                                              ; preds = %199
  %229 = load %struct.super_block*, %struct.super_block** %5, align 8
  %230 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %231 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %229, i32 %232, %struct.buffer_head** %13)
  %234 = icmp ne %struct.fnode* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %237 = call i32 @brelse(%struct.buffer_head* %236)
  br label %238

238:                                              ; preds = %235, %228
  br label %239

239:                                              ; preds = %238, %199
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %240 = load %struct.inode*, %struct.inode** %2, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 7
  %242 = load %struct.super_block*, %struct.super_block** %241, align 8
  %243 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %244 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @hpfs_count_dnodes(%struct.super_block* %242, i32 %245, i32* %11, i32* %12, i32* null)
  %247 = load i32, i32* %11, align 4
  %248 = mul i32 4, %247
  %249 = load %struct.inode*, %struct.inode** %2, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %11, align 4
  %252 = mul i32 2048, %251
  %253 = load %struct.inode*, %struct.inode** %2, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* %12, align 4
  %256 = add i32 2, %255
  %257 = load %struct.inode*, %struct.inode** %2, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %303

259:                                              ; preds = %194
  %260 = load i32, i32* @S_IFREG, align 4
  %261 = load %struct.inode*, %struct.inode** %2, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %6, align 8
  %266 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %259
  %270 = load %struct.inode*, %struct.inode** %2, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = and i32 %272, -74
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %269, %259
  %275 = load %struct.inode*, %struct.inode** %2, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 6
  store i32* @hpfs_file_iops, i32** %276, align 8
  %277 = load %struct.inode*, %struct.inode** %2, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 5
  store i32* @hpfs_file_ops, i32** %278, align 8
  %279 = load %struct.inode*, %struct.inode** %2, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 1
  store i32 1, i32* %280, align 4
  %281 = load %struct.fnode*, %struct.fnode** %4, align 8
  %282 = getelementptr inbounds %struct.fnode, %struct.fnode* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.inode*, %struct.inode** %2, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.inode*, %struct.inode** %2, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 511
  %290 = ashr i32 %289, 9
  %291 = add nsw i32 %290, 1
  %292 = load %struct.inode*, %struct.inode** %2, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  %294 = load %struct.inode*, %struct.inode** %2, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store i32* @hpfs_aops, i32** %296, align 8
  %297 = load %struct.inode*, %struct.inode** %2, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.inode*, %struct.inode** %2, align 8
  %301 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %300)
  %302 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %301, i32 0, i32 3
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %274, %239
  %304 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %305 = call i32 @brelse(%struct.buffer_head* %304)
  br label %306

306:                                              ; preds = %303, %178, %87, %25
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i8* @hpfs_get_ea(%struct.super_block*, %struct.fnode*, i8*, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @hpfs_count_dnodes(%struct.super_block*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
