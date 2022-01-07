; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dir.c_hpfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32*, i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_12__ = type { i32, i64 }
%struct.dentry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i64, i64, i64, i32, i32, i32, i64, i64, i32 }
%struct.hpfs_inode_info = type { i32, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hpfs_lookup: can't get inode\00", align 1
@I_NEW = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hpfs_file_iops = common dso_local global i32 0, align 4
@hpfs_file_ops = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [121 x i8] c"ACLs or XPERM found. This is probably HPFS386. This driver doesn't support it now. Send me some info on these structures\00", align 1
@hpfs_aops = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hpfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.hpfs_dirent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.hpfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %14, align 8
  %24 = call i32 (...) @lock_kernel()
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @hpfs_chk_name(i8* %25, i32* %9)
  store i32 %26, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i32 (...) @unlock_kernel()
  %35 = load i32, i32* @ENAMETOOLONG, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.dentry* @ERR_PTR(i32 %36)
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %285

38:                                               ; preds = %28
  br label %272

39:                                               ; preds = %3
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %41)
  %43 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %40, i32 %44, i8* %45, i32 %46, i32* null, %struct.quad_buffer_head* %10)
  store %struct.hpfs_dirent* %47, %struct.hpfs_dirent** %11, align 8
  %48 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %49 = icmp ne %struct.hpfs_dirent* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %271

51:                                               ; preds = %39
  %52 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %53 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %12, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 7
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.inode* @iget_locked(%struct.TYPE_16__* %57, i32 %58)
  store %struct.inode* %59, %struct.inode** %14, align 8
  %60 = load %struct.inode*, %struct.inode** %14, align 8
  %61 = icmp ne %struct.inode* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %51
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 7
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = call i32 @hpfs_error(%struct.TYPE_16__* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %279

67:                                               ; preds = %51
  %68 = load %struct.inode*, %struct.inode** %14, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @I_NEW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %67
  %75 = load %struct.inode*, %struct.inode** %14, align 8
  %76 = call i32 @hpfs_init_inode(%struct.inode* %75)
  %77 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %78 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.inode*, %struct.inode** %14, align 8
  %83 = call i32 @hpfs_read_inode(%struct.inode* %82)
  br label %117

84:                                               ; preds = %74
  %85 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %86 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 7
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = call %struct.TYPE_17__* @hpfs_sb(%struct.TYPE_16__* %92)
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load %struct.inode*, %struct.inode** %14, align 8
  %99 = call i32 @hpfs_read_inode(%struct.inode* %98)
  br label %116

100:                                              ; preds = %89, %84
  %101 = load i32, i32* @S_IFREG, align 4
  %102 = load %struct.inode*, %struct.inode** %14, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.inode*, %struct.inode** %14, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, -74
  store i32 %109, i32* %107, align 4
  %110 = load %struct.inode*, %struct.inode** %14, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 12
  store i32* @hpfs_file_iops, i32** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %14, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 11
  store i32* @hpfs_file_ops, i32** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %14, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %100, %97
  br label %117

117:                                              ; preds = %116, %81
  %118 = load %struct.inode*, %struct.inode** %14, align 8
  %119 = call i32 @unlock_new_inode(%struct.inode* %118)
  br label %120

120:                                              ; preds = %117, %67
  %121 = load %struct.inode*, %struct.inode** %14, align 8
  %122 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %121)
  store %struct.hpfs_inode_info* %122, %struct.hpfs_inode_info** %15, align 8
  %123 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %124 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %120
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %132 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %120
  %134 = load %struct.inode*, %struct.inode** %14, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @hpfs_decide_conv(%struct.inode* %134, i8* %135, i32 %136)
  %138 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %139 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %133
  %143 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %144 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142, %133
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 7
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MS_RDONLY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %147
  %157 = load %struct.inode*, %struct.inode** %14, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 7
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = call i32 @hpfs_error(%struct.TYPE_16__* %159, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0))
  br label %279

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161, %142
  %163 = load %struct.inode*, %struct.inode** %14, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %269, label %168

168:                                              ; preds = %162
  %169 = load %struct.inode*, %struct.inode** %5, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 7
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %173 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @local_to_gmt(%struct.TYPE_16__* %171, i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.inode*, %struct.inode** %14, align 8
  %178 = getelementptr inbounds %struct.inode, %struct.inode* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  %180 = icmp ne i32 %176, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %168
  %182 = load %struct.inode*, %struct.inode** %14, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %181, %168
  %186 = load %struct.inode*, %struct.inode** %14, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 9
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 7
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %193 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @local_to_gmt(%struct.TYPE_16__* %191, i32 %194)
  %196 = load %struct.inode*, %struct.inode** %14, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load %struct.inode*, %struct.inode** %14, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load %struct.inode*, %struct.inode** %5, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 7
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %206 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @local_to_gmt(%struct.TYPE_16__* %204, i32 %207)
  %209 = load %struct.inode*, %struct.inode** %14, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i8* %208, i8** %211, align 8
  %212 = load %struct.inode*, %struct.inode** %14, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %216 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %219 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %15, align 8
  %221 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %185
  %225 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %226 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.inode*, %struct.inode** %14, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, -147
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %229, %224, %185
  %235 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %236 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %268, label %239

239:                                              ; preds = %234
  %240 = load %struct.inode*, %struct.inode** %14, align 8
  %241 = getelementptr inbounds %struct.inode, %struct.inode* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %267

244:                                              ; preds = %239
  %245 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %246 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.inode*, %struct.inode** %14, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  %250 = load %struct.inode*, %struct.inode** %14, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i32* @hpfs_aops, i32** %252, align 8
  %253 = load %struct.inode*, %struct.inode** %14, align 8
  %254 = getelementptr inbounds %struct.inode, %struct.inode* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.inode*, %struct.inode** %14, align 8
  %257 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %256)
  %258 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %257, i32 0, i32 0
  store i32 %255, i32* %258, align 8
  %259 = load %struct.inode*, %struct.inode** %14, align 8
  %260 = getelementptr inbounds %struct.inode, %struct.inode* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 511
  %263 = ashr i32 %262, 9
  %264 = add nsw i32 1, %263
  %265 = load %struct.inode*, %struct.inode** %14, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %244, %239
  br label %268

268:                                              ; preds = %267, %234
  br label %269

269:                                              ; preds = %268, %162
  %270 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %271

271:                                              ; preds = %269, %50
  br label %272

272:                                              ; preds = %271, %38
  %273 = load %struct.dentry*, %struct.dentry** %6, align 8
  %274 = call i32 @hpfs_set_dentry_operations(%struct.dentry* %273)
  %275 = call i32 (...) @unlock_kernel()
  %276 = load %struct.dentry*, %struct.dentry** %6, align 8
  %277 = load %struct.inode*, %struct.inode** %14, align 8
  %278 = call i32 @d_add(%struct.dentry* %276, %struct.inode* %277)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %285

279:                                              ; preds = %156, %62
  %280 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  %281 = call i32 (...) @unlock_kernel()
  %282 = load i32, i32* @ENOENT, align 4
  %283 = sub nsw i32 0, %282
  %284 = call %struct.dentry* @ERR_PTR(i32 %283)
  store %struct.dentry* %284, %struct.dentry** %4, align 8
  br label %285

285:                                              ; preds = %279, %272, %33
  %286 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %286
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.inode* @iget_locked(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @hpfs_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_read_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_17__* @hpfs_sb(%struct.TYPE_16__*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @hpfs_decide_conv(%struct.inode*, i8*, i32) #1

declare dso_local i8* @local_to_gmt(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_set_dentry_operations(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
