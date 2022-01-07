; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_dir.c_cifs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.inode = type { i32, i64, i64, i32 }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.cifs_unix_set_info_args = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.cifsFileInfo = type { i32 }
%struct.file = type opaque

@ENOENT = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_OVERWRITE_IF = common dso_local global i32 0, align 4
@REQ_OPLOCK = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATH_OPS_CAP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Create flag not set in create function\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@CREATE_OPTION_READONLY = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cifs_create returned 0x%x\00", align 1
@CIFS_CREATE_ACTION = common dso_local global i32 0, align 4
@NO_CHANGE_64 = common dso_local global i8* null, align 8
@CIFS_MOUNT_SET_UID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_14__* null, align 8
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Create worked, get_inode_info failed rc = %d\00", align 1
@generic_file_open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cifs_sb_info*, align 8
  %18 = alloca %struct.tcon_link*, align 8
  %19 = alloca %struct.cifs_tcon*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.inode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.cifs_unix_set_info_args, align 8
  %25 = alloca %struct.cifsFileInfo*, align 8
  %26 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* @GENERIC_READ, align 4
  %31 = load i32, i32* @GENERIC_WRITE, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %15, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store %struct.inode* null, %struct.inode** %22, align 8
  %33 = load i32, i32* @FILE_OVERWRITE_IF, align 4
  store i32 %33, i32* %23, align 4
  %34 = call i32 (...) @GetXid()
  store i32 %34, i32* %11, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.cifs_sb_info* @CIFS_SB(i32 %37)
  store %struct.cifs_sb_info* %38, %struct.cifs_sb_info** %17, align 8
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %40 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %39)
  store %struct.tcon_link* %40, %struct.tcon_link** %18, align 8
  %41 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %42 = call i64 @IS_ERR(%struct.tcon_link* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @FreeXid(i32 %45)
  %47 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %48 = call i32 @PTR_ERR(%struct.tcon_link* %47)
  store i32 %48, i32* %5, align 4
  br label %519

49:                                               ; preds = %4
  %50 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %51 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %50)
  store %struct.cifs_tcon* %51, %struct.cifs_tcon** %19, align 8
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %53 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @REQ_OPLOCK, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %49
  %63 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %64 = icmp ne %struct.nameidata* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LOOKUP_OPEN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %74 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  br label %84

80:                                               ; preds = %65, %62
  %81 = load i32, i32* @O_RDONLY, align 4
  %82 = load i32, i32* @O_CREAT, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %80, %72
  %85 = load %struct.dentry*, %struct.dentry** %7, align 8
  %86 = call i8* @build_path_from_dentry(%struct.dentry* %85)
  store i8* %86, i8** %20, align 8
  %87 = load i8*, i8** %20, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %509

92:                                               ; preds = %84
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %94 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %154

97:                                               ; preds = %92
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %99 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CAP_UNIX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %154

106:                                              ; preds = %97
  %107 = load i32, i32* @CIFS_UNIX_POSIX_PATH_OPS_CAP, align 4
  %108 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %109 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le64_to_cpu(i32 %111)
  %113 = and i32 %107, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %106
  %116 = load i8*, i8** %20, align 8
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @cifs_posix_open(i8* %116, %struct.inode** %22, i32 %119, i32 %120, i32 %121, i32* %13, i32* %16, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load %struct.inode*, %struct.inode** %22, align 8
  %128 = icmp eq %struct.inode* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %372

130:                                              ; preds = %126
  br label %441

131:                                              ; preds = %115
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @EREMOTE, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @EOPNOTSUPP, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %509

152:                                              ; preds = %146, %141, %136, %131
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %106, %97, %92
  %155 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %156 = icmp ne %struct.nameidata* %155, null
  br i1 %156, label %157, label %221

157:                                              ; preds = %154
  %158 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %159 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @LOOKUP_OPEN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %221

164:                                              ; preds = %157
  store i32 0, i32* %15, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @OPEN_FMODE(i32 %165)
  %167 = load i32, i32* @FMODE_READ, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* @GENERIC_READ, align 4
  %172 = load i32, i32* %15, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %170, %164
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @OPEN_FMODE(i32 %175)
  %177 = load i32, i32* @FMODE_WRITE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* @GENERIC_WRITE, align 4
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %180, %174
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @O_CREAT, align 4
  %187 = load i32, i32* @O_EXCL, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %185, %188
  %190 = load i32, i32* @O_CREAT, align 4
  %191 = load i32, i32* @O_EXCL, align 4
  %192 = or i32 %190, %191
  %193 = icmp eq i32 %189, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %184
  %195 = load i32, i32* @FILE_CREATE, align 4
  store i32 %195, i32* %23, align 4
  br label %220

196:                                              ; preds = %184
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @O_CREAT, align 4
  %199 = load i32, i32* @O_TRUNC, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %197, %200
  %202 = load i32, i32* @O_CREAT, align 4
  %203 = load i32, i32* @O_TRUNC, align 4
  %204 = or i32 %202, %203
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = load i32, i32* @FILE_OVERWRITE_IF, align 4
  store i32 %207, i32* %23, align 4
  br label %219

208:                                              ; preds = %196
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @O_CREAT, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @O_CREAT, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = load i32, i32* @FILE_OPEN_IF, align 4
  store i32 %215, i32* %23, align 4
  br label %218

216:                                              ; preds = %208
  %217 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %214
  br label %219

219:                                              ; preds = %218, %206
  br label %220

220:                                              ; preds = %219, %194
  br label %221

221:                                              ; preds = %220, %157, %154
  %222 = load i32, i32* @GFP_KERNEL, align 4
  %223 = call i8* @kmalloc(i32 1, i32 %222)
  store i8* %223, i8** %21, align 8
  %224 = load i8*, i8** %21, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %10, align 4
  br label %509

229:                                              ; preds = %221
  %230 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %231 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %243, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @S_IWUGO, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = load i32, i32* @CREATE_OPTION_READONLY, align 4
  %241 = load i32, i32* %12, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %12, align 4
  br label %243

243:                                              ; preds = %239, %234, %229
  %244 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %245 = call i64 @backup_cred(%struct.cifs_sb_info* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %249 = load i32, i32* %12, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %12, align 4
  br label %251

251:                                              ; preds = %247, %243
  %252 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %253 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %252, i32 0, i32 1
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @CAP_NT_SMBS, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %251
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %263 = load i8*, i8** %20, align 8
  %264 = load i32, i32* %23, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i8*, i8** %21, align 8
  %268 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %269 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %272 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %275 = and i32 %273, %274
  %276 = call i32 @CIFSSMBOpen(i32 %261, %struct.cifs_tcon* %262, i8* %263, i32 %264, i32 %265, i32 %266, i32* %16, i32* %13, i8* %267, i32 %270, i32 %275)
  store i32 %276, i32* %10, align 4
  br label %280

277:                                              ; preds = %251
  %278 = load i32, i32* @EIO, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %10, align 4
  br label %280

280:                                              ; preds = %277, %260
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* @EIO, align 4
  %283 = sub nsw i32 0, %282
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %285, label %302

285:                                              ; preds = %280
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %288 = load i8*, i8** %20, align 8
  %289 = load i32, i32* %23, align 4
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i8*, i8** %21, align 8
  %293 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %294 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %297 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %300 = and i32 %298, %299
  %301 = call i32 @SMBLegacyOpen(i32 %286, %struct.cifs_tcon* %287, i8* %288, i32 %289, i32 %290, i32 %291, i32* %16, i32* %13, i8* %292, i32 %295, i32 %300)
  store i32 %301, i32* %10, align 4
  br label %302

302:                                              ; preds = %285, %280
  %303 = load i32, i32* %10, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32, i32* %10, align 4
  %307 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %306)
  br label %509

308:                                              ; preds = %302
  %309 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %310 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %370

313:                                              ; preds = %308
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @CIFS_CREATE_ACTION, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %370

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 0
  %320 = load i32, i32* %8, align 4
  store i32 %320, i32* %319, align 8
  %321 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 1
  %322 = load i8*, i8** @NO_CHANGE_64, align 8
  store i8* %322, i8** %321, align 8
  %323 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 2
  %324 = load i8*, i8** @NO_CHANGE_64, align 8
  store i8* %324, i8** %323, align 8
  %325 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 3
  %326 = load i8*, i8** @NO_CHANGE_64, align 8
  store i8* %326, i8** %325, align 8
  %327 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 4
  store i8* null, i8** %327, align 8
  %328 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 5
  store i8* null, i8** %328, align 8
  %329 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 6
  store i32 0, i32* %329, align 8
  %330 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %331 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %357

336:                                              ; preds = %318
  %337 = call i64 (...) @current_fsuid()
  %338 = inttoptr i64 %337 to i8*
  %339 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 5
  store i8* %338, i8** %339, align 8
  %340 = load %struct.inode*, %struct.inode** %6, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @S_ISGID, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %336
  %347 = load %struct.inode*, %struct.inode** %6, align 8
  %348 = getelementptr inbounds %struct.inode, %struct.inode* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to i8*
  %351 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 4
  store i8* %350, i8** %351, align 8
  br label %356

352:                                              ; preds = %336
  %353 = call i64 (...) @current_fsgid()
  %354 = inttoptr i64 %353 to i8*
  %355 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 4
  store i8* %354, i8** %355, align 8
  br label %356

356:                                              ; preds = %352, %346
  br label %362

357:                                              ; preds = %318
  %358 = load i8*, i8** @NO_CHANGE_64, align 8
  %359 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 5
  store i8* %358, i8** %359, align 8
  %360 = load i8*, i8** @NO_CHANGE_64, align 8
  %361 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %24, i32 0, i32 4
  store i8* %360, i8** %361, align 8
  br label %362

362:                                              ; preds = %357, %356
  %363 = load i32, i32* %11, align 4
  %364 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %365 = load i32, i32* %16, align 4
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @CIFSSMBUnixSetFileInfo(i32 %363, %struct.cifs_tcon* %364, %struct.cifs_unix_set_info_args* %24, i32 %365, i32 %368)
  br label %371

370:                                              ; preds = %313, %308
  br label %371

371:                                              ; preds = %370, %362
  br label %372

372:                                              ; preds = %371, %129
  %373 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %374 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %372
  %378 = load i8*, i8** %20, align 8
  %379 = load %struct.inode*, %struct.inode** %6, align 8
  %380 = getelementptr inbounds %struct.inode, %struct.inode* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* %11, align 4
  %383 = call i32 @cifs_get_inode_info_unix(%struct.inode** %22, i8* %378, i32 %381, i32 %382)
  store i32 %383, i32* %10, align 4
  br label %440

384:                                              ; preds = %372
  %385 = load i8*, i8** %20, align 8
  %386 = load i8*, i8** %21, align 8
  %387 = load %struct.inode*, %struct.inode** %6, align 8
  %388 = getelementptr inbounds %struct.inode, %struct.inode* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %11, align 4
  %391 = call i32 @cifs_get_inode_info(%struct.inode** %22, i8* %385, i8* %386, i32 %389, i32 %390, i32* %16)
  store i32 %391, i32* %10, align 4
  %392 = load %struct.inode*, %struct.inode** %22, align 8
  %393 = icmp ne %struct.inode* %392, null
  br i1 %393, label %394, label %439

394:                                              ; preds = %384
  %395 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %396 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %394
  %402 = load i32, i32* %8, align 4
  %403 = load %struct.inode*, %struct.inode** %22, align 8
  %404 = getelementptr inbounds %struct.inode, %struct.inode* %403, i32 0, i32 0
  store i32 %402, i32* %404, align 8
  br label %405

405:                                              ; preds = %401, %394
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* @CIFS_CREATE_ACTION, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %438

410:                                              ; preds = %405
  %411 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %17, align 8
  %412 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %438

417:                                              ; preds = %410
  %418 = call i64 (...) @current_fsuid()
  %419 = load %struct.inode*, %struct.inode** %22, align 8
  %420 = getelementptr inbounds %struct.inode, %struct.inode* %419, i32 0, i32 2
  store i64 %418, i64* %420, align 8
  %421 = load %struct.inode*, %struct.inode** %6, align 8
  %422 = getelementptr inbounds %struct.inode, %struct.inode* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @S_ISGID, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %417
  %428 = load %struct.inode*, %struct.inode** %6, align 8
  %429 = getelementptr inbounds %struct.inode, %struct.inode* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.inode*, %struct.inode** %22, align 8
  %432 = getelementptr inbounds %struct.inode, %struct.inode* %431, i32 0, i32 1
  store i64 %430, i64* %432, align 8
  br label %437

433:                                              ; preds = %417
  %434 = call i64 (...) @current_fsgid()
  %435 = load %struct.inode*, %struct.inode** %22, align 8
  %436 = getelementptr inbounds %struct.inode, %struct.inode* %435, i32 0, i32 1
  store i64 %434, i64* %436, align 8
  br label %437

437:                                              ; preds = %433, %427
  br label %438

438:                                              ; preds = %437, %410, %405
  br label %439

439:                                              ; preds = %438, %384
  br label %440

440:                                              ; preds = %439, %377
  br label %441

441:                                              ; preds = %440, %130
  %442 = load i32, i32* %10, align 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %441
  %445 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %446 = load %struct.dentry*, %struct.dentry** %7, align 8
  %447 = load %struct.inode*, %struct.inode** %22, align 8
  %448 = call i32 @setup_cifs_dentry(%struct.cifs_tcon* %445, %struct.dentry* %446, %struct.inode* %447)
  br label %452

449:                                              ; preds = %441
  %450 = load i32, i32* %10, align 4
  %451 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %450)
  br label %452

452:                                              ; preds = %449, %444
  %453 = load %struct.inode*, %struct.inode** %22, align 8
  %454 = icmp ne %struct.inode* %453, null
  br i1 %454, label %455, label %503

455:                                              ; preds = %452
  %456 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %457 = icmp ne %struct.nameidata* %456, null
  br i1 %457, label %458, label %503

458:                                              ; preds = %455
  %459 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %460 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @LOOKUP_OPEN, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %503

465:                                              ; preds = %458
  %466 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %467 = load %struct.dentry*, %struct.dentry** %7, align 8
  %468 = load i32, i32* @generic_file_open, align 4
  %469 = call %struct.tcon_link* @lookup_instantiate_filp(%struct.nameidata* %466, %struct.dentry* %467, i32 %468)
  %470 = bitcast %struct.tcon_link* %469 to %struct.file*
  store %struct.file* %470, %struct.file** %26, align 8
  %471 = load %struct.file*, %struct.file** %26, align 8
  %472 = bitcast %struct.file* %471 to %struct.tcon_link*
  %473 = call i64 @IS_ERR(%struct.tcon_link* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %465
  %476 = load %struct.file*, %struct.file** %26, align 8
  %477 = bitcast %struct.file* %476 to %struct.tcon_link*
  %478 = call i32 @PTR_ERR(%struct.tcon_link* %477)
  store i32 %478, i32* %10, align 4
  %479 = load i32, i32* %11, align 4
  %480 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %481 = load i32, i32* %16, align 4
  %482 = call i32 @CIFSSMBClose(i32 %479, %struct.cifs_tcon* %480, i32 %481)
  br label %509

483:                                              ; preds = %465
  %484 = load i32, i32* %16, align 4
  %485 = load %struct.file*, %struct.file** %26, align 8
  %486 = bitcast %struct.file* %485 to %struct.tcon_link*
  %487 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %488 = load i32, i32* %13, align 4
  %489 = call %struct.cifsFileInfo* @cifs_new_fileinfo(i32 %484, %struct.tcon_link* %486, %struct.tcon_link* %487, i32 %488)
  store %struct.cifsFileInfo* %489, %struct.cifsFileInfo** %25, align 8
  %490 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %25, align 8
  %491 = icmp eq %struct.cifsFileInfo* %490, null
  br i1 %491, label %492, label %502

492:                                              ; preds = %483
  %493 = load %struct.file*, %struct.file** %26, align 8
  %494 = bitcast %struct.file* %493 to %struct.tcon_link*
  %495 = call i32 @fput(%struct.tcon_link* %494)
  %496 = load i32, i32* %11, align 4
  %497 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %498 = load i32, i32* %16, align 4
  %499 = call i32 @CIFSSMBClose(i32 %496, %struct.cifs_tcon* %497, i32 %498)
  %500 = load i32, i32* @ENOMEM, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %10, align 4
  br label %502

502:                                              ; preds = %492, %483
  br label %508

503:                                              ; preds = %458, %455, %452
  %504 = load i32, i32* %11, align 4
  %505 = load %struct.cifs_tcon*, %struct.cifs_tcon** %19, align 8
  %506 = load i32, i32* %16, align 4
  %507 = call i32 @CIFSSMBClose(i32 %504, %struct.cifs_tcon* %505, i32 %506)
  br label %508

508:                                              ; preds = %503, %502
  br label %509

509:                                              ; preds = %508, %475, %305, %226, %151, %89
  %510 = load i8*, i8** %21, align 8
  %511 = call i32 @kfree(i8* %510)
  %512 = load i8*, i8** %20, align 8
  %513 = call i32 @kfree(i8* %512)
  %514 = load %struct.tcon_link*, %struct.tcon_link** %18, align 8
  %515 = call i32 @cifs_put_tlink(%struct.tcon_link* %514)
  %516 = load i32, i32* %11, align 4
  %517 = call i32 @FreeXid(i32 %516)
  %518 = load i32, i32* %10, align 4
  store i32 %518, i32* %5, align 4
  br label %519

519:                                              ; preds = %509, %44
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_posix_open(i8*, %struct.inode**, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @OPEN_FMODE(i32) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @SMBLegacyOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i8*, i32, i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @current_fsgid(...) #1

declare dso_local i32 @CIFSSMBUnixSetFileInfo(i32, %struct.cifs_tcon*, %struct.cifs_unix_set_info_args*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @setup_cifs_dentry(%struct.cifs_tcon*, %struct.dentry*, %struct.inode*) #1

declare dso_local %struct.tcon_link* @lookup_instantiate_filp(%struct.nameidata*, %struct.dentry*, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local %struct.cifsFileInfo* @cifs_new_fileinfo(i32, %struct.tcon_link*, %struct.tcon_link*, i32) #1

declare dso_local i32 @fput(%struct.tcon_link*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
