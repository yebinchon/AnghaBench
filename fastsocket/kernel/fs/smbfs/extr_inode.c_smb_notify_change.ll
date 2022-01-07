; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_notify_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i64 }
%struct.iattr = type { i32, i64, i32, i32, i32, i64 }
%struct.smb_sb_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 (%struct.inode*, i64)* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.smb_fattr = type { i64, i32, i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"changing %s/%s, old size=%ld, new size=%ld\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@SMB_CAP_UNIX = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@SMB_PROTOCOL_LANMAN2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s/%s mode change, old=%x, new=%x\0A\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@aRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.smb_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb_fattr, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call %struct.smb_sb_info* @server_from_dentry(%struct.dentry* %15)
  store %struct.smb_sb_info* %16, %struct.smb_sb_info** %6, align 8
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IRWXUGO, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %22 = call i32 (...) @lock_kernel()
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @smb_revalidate_inode(%struct.dentry* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %265

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.iattr*, %struct.iattr** %4, align 8
  %31 = call i32 @inode_change_ok(%struct.inode* %29, %struct.iattr* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %265

34:                                               ; preds = %28
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.iattr*, %struct.iattr** %4, align 8
  %38 = getelementptr inbounds %struct.iattr, %struct.iattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ATTR_UID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load %struct.iattr*, %struct.iattr** %4, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %265

54:                                               ; preds = %43, %34
  %55 = load %struct.iattr*, %struct.iattr** %4, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ATTR_GID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.iattr*, %struct.iattr** %4, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %265

72:                                               ; preds = %61, %54
  %73 = load %struct.iattr*, %struct.iattr** %4, align 8
  %74 = getelementptr inbounds %struct.iattr, %struct.iattr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ATTR_MODE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.iattr*, %struct.iattr** %4, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %265

88:                                               ; preds = %79, %72
  %89 = load %struct.iattr*, %struct.iattr** %4, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATTR_SIZE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %88
  %96 = load %struct.dentry*, %struct.dentry** %3, align 8
  %97 = call i32 @DENTRY_PATH(%struct.dentry* %96)
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.iattr*, %struct.iattr** %4, align 8
  %102 = getelementptr inbounds %struct.iattr, %struct.iattr* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @VERBOSE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %100, i64 %103)
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @filemap_write_and_wait(i32 %107)
  %109 = load %struct.dentry*, %struct.dentry** %3, align 8
  %110 = load i32, i32* @O_WRONLY, align 4
  %111 = call i32 @smb_open(%struct.dentry* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  br label %265

115:                                              ; preds = %95
  %116 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %117 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.inode*, i64)*, i32 (%struct.inode*, i64)** %119, align 8
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = load %struct.iattr*, %struct.iattr** %4, align 8
  %123 = getelementptr inbounds %struct.iattr, %struct.iattr* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i32 %120(%struct.inode* %121, i64 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %265

129:                                              ; preds = %115
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = load %struct.iattr*, %struct.iattr** %4, align 8
  %132 = getelementptr inbounds %struct.iattr, %struct.iattr* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @vmtruncate(%struct.inode* %130, i64 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %265

138:                                              ; preds = %129
  store i32 1, i32* %10, align 4
  br label %139

139:                                              ; preds = %138, %88
  %140 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %141 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SMB_CAP_UNIX, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load i32, i32* @ATTR_SIZE, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.iattr*, %struct.iattr** %4, align 8
  %151 = getelementptr inbounds %struct.iattr, %struct.iattr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.dentry*, %struct.dentry** %3, align 8
  %155 = load %struct.iattr*, %struct.iattr** %4, align 8
  %156 = call i32 @smb_proc_setattr_unix(%struct.dentry* %154, %struct.iattr* %155, i32 0, i32 0)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %147
  store i32 1, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %147
  br label %265

161:                                              ; preds = %139
  %162 = load %struct.inode*, %struct.inode** %5, align 8
  %163 = call i32 @smb_get_inode_attr(%struct.inode* %162, %struct.smb_fattr* %11)
  store i32 0, i32* %9, align 4
  %164 = load %struct.iattr*, %struct.iattr** %4, align 8
  %165 = getelementptr inbounds %struct.iattr, %struct.iattr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ATTR_MTIME, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load %struct.iattr*, %struct.iattr** %4, align 8
  %172 = getelementptr inbounds %struct.iattr, %struct.iattr* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 3
  store i32 %173, i32* %174, align 8
  store i32 1, i32* %9, align 4
  br label %175

175:                                              ; preds = %170, %161
  %176 = load %struct.iattr*, %struct.iattr** %4, align 8
  %177 = getelementptr inbounds %struct.iattr, %struct.iattr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ATTR_ATIME, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load %struct.iattr*, %struct.iattr** %4, align 8
  %184 = getelementptr inbounds %struct.iattr, %struct.iattr* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 2
  store i32 %185, i32* %186, align 4
  %187 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %188 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SMB_PROTOCOL_LANMAN2, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  store i32 1, i32* %9, align 4
  br label %194

194:                                              ; preds = %193, %182
  br label %195

195:                                              ; preds = %194, %175
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load %struct.dentry*, %struct.dentry** %3, align 8
  %200 = call i32 @smb_proc_settime(%struct.dentry* %199, %struct.smb_fattr* %11)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %265

204:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  br label %205

205:                                              ; preds = %204, %195
  %206 = load %struct.iattr*, %struct.iattr** %4, align 8
  %207 = getelementptr inbounds %struct.iattr, %struct.iattr* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ATTR_MODE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %264

212:                                              ; preds = %205
  %213 = load %struct.dentry*, %struct.dentry** %3, align 8
  %214 = call i32 @DENTRY_PATH(%struct.dentry* %213)
  %215 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.iattr*, %struct.iattr** %4, align 8
  %218 = getelementptr inbounds %struct.iattr, %struct.iattr* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = zext i32 %219 to i64
  %221 = call i32 @VERBOSE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %214, i64 %216, i64 %220)
  store i32 0, i32* %9, align 4
  %222 = load %struct.iattr*, %struct.iattr** %4, align 8
  %223 = getelementptr inbounds %struct.iattr, %struct.iattr* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @S_IWUSR, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %212
  %229 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @aRONLY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load i32, i32* @aRONLY, align 4
  %236 = xor i32 %235, -1
  %237 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, %236
  store i32 %239, i32* %237, align 8
  store i32 1, i32* %9, align 4
  br label %240

240:                                              ; preds = %234, %228
  br label %253

241:                                              ; preds = %212
  %242 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @aRONLY, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %241
  %248 = load i32, i32* @aRONLY, align 4
  %249 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %11, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %248
  store i32 %251, i32* %249, align 8
  store i32 1, i32* %9, align 4
  br label %252

252:                                              ; preds = %247, %241
  br label %253

253:                                              ; preds = %252, %240
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = load %struct.dentry*, %struct.dentry** %3, align 8
  %258 = call i32 @smb_proc_setattr(%struct.dentry* %257, %struct.smb_fattr* %11)
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %265

262:                                              ; preds = %256
  store i32 1, i32* %10, align 4
  br label %263

263:                                              ; preds = %262, %253
  br label %264

264:                                              ; preds = %263, %205
  store i32 0, i32* %8, align 4
  br label %265

265:                                              ; preds = %264, %261, %203, %160, %137, %128, %114, %87, %71, %53, %33, %27
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.dentry*, %struct.dentry** %3, align 8
  %270 = call i32 @smb_refresh_inode(%struct.dentry* %269)
  br label %271

271:                                              ; preds = %268, %265
  %272 = call i32 (...) @unlock_kernel()
  %273 = load i32, i32* %8, align 4
  ret i32 %273
}

declare dso_local %struct.smb_sb_info* @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @smb_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @VERBOSE(i8*, i32, i64, i64) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @smb_open(%struct.dentry*, i32) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i64) #1

declare dso_local i32 @smb_proc_setattr_unix(%struct.dentry*, %struct.iattr*, i32, i32) #1

declare dso_local i32 @smb_get_inode_attr(%struct.inode*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_settime(%struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_setattr(%struct.dentry*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_refresh_inode(%struct.dentry*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
