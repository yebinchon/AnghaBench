; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.file = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifsFileInfo = type { i32 }
%struct.cifsInodeInfo = type { i32 }
%struct.cifs_unix_set_info_args = type { i32, i32, i32, i32, i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"inode = 0x%p file flags are 0x%x for %s\00", align 1
@REQ_OPLOCK = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATH_OPS_CAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"posix open succeeded\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [130 x i8] c"server %s of type %s returned unexpected error on SMB posix open, disabling posix open support. Check if server update available.\00", align 1
@EIO = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@CIFS_CREATE_ACTION = common dso_local global i32 0, align 4
@NO_CHANGE_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca %struct.cifsFileInfo*, align 8
  %13 = alloca %struct.cifsInodeInfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cifs_unix_set_info_args, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %12, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = call i32 (...) @GetXid()
  store i32 %20, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cifs_sb_info* @CIFS_SB(i32 %23)
  store %struct.cifs_sb_info* %24, %struct.cifs_sb_info** %9, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %26 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %25)
  store %struct.tcon_link* %26, %struct.tcon_link** %11, align 8
  %27 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %28 = call i64 @IS_ERR(%struct.tcon_link* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @FreeXid(i32 %31)
  %33 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %34 = call i32 @PTR_ERR(%struct.tcon_link* %33)
  store i32 %34, i32* %3, align 4
  br label %249

35:                                               ; preds = %2
  %36 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %37 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %36)
  store %struct.cifs_tcon* %37, %struct.cifs_tcon** %10, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.cifsInodeInfo* @CIFS_I(i32 %43)
  store %struct.cifsInodeInfo* %44, %struct.cifsInodeInfo** %13, align 8
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i8* @build_path_from_dentry(%struct.TYPE_10__* %48)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %241

55:                                               ; preds = %35
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.inode* %56, i32 %59, i8* %60)
  %62 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %63 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @REQ_OPLOCK, align 4
  store i32 %71, i32* %8, align 4
  br label %73

72:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %75 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %169, label %78

78:                                               ; preds = %73
  %79 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %80 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %169

83:                                               ; preds = %78
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CAP_UNIX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %169

92:                                               ; preds = %83
  %93 = load i32, i32* @CIFS_UNIX_POSIX_PATH_OPS_CAP, align 4
  %94 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %95 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %169

101:                                              ; preds = %92
  %102 = load i8*, i8** %14, align 8
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %107 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.file*, %struct.file** %5, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @cifs_posix_open(i8* %102, %struct.inode** %4, i32 %105, i32 %108, i32 %111, i32* %8, i32* %16, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %168

118:                                              ; preds = %101
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %123, %118
  %129 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %130 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %129, i32 0, i32 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %137 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %142 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %145)
  br label %147

147:                                              ; preds = %135, %128
  %148 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %149 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %167

150:                                              ; preds = %123
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @EREMOTE, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @EOPNOTSUPP, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %241

166:                                              ; preds = %160, %155, %150
  br label %167

167:                                              ; preds = %166, %147
  br label %168

168:                                              ; preds = %167, %116
  br label %169

169:                                              ; preds = %168, %92, %83, %78, %73
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %14, align 8
  %174 = load %struct.inode*, %struct.inode** %4, align 8
  %175 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %176 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %177 = load %struct.file*, %struct.file** %5, align 8
  %178 = getelementptr inbounds %struct.file, %struct.file* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @cifs_nt_open(i8* %173, %struct.inode* %174, %struct.cifs_sb_info* %175, %struct.cifs_tcon* %176, i32 %179, i32* %8, i32* %16, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %172
  br label %241

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %169
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.file*, %struct.file** %5, align 8
  %189 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call %struct.cifsFileInfo* @cifs_new_fileinfo(i32 %187, %struct.file* %188, %struct.tcon_link* %189, i32 %190)
  store %struct.cifsFileInfo* %191, %struct.cifsFileInfo** %12, align 8
  %192 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %12, align 8
  %193 = icmp eq %struct.cifsFileInfo* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @CIFSSMBClose(i32 %195, %struct.cifs_tcon* %196, i32 %197)
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %6, align 4
  br label %241

201:                                              ; preds = %186
  %202 = load %struct.inode*, %struct.inode** %4, align 8
  %203 = load %struct.file*, %struct.file** %5, align 8
  %204 = call i32 @cifs_fscache_set_inode_cookie(%struct.inode* %202, %struct.file* %203)
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @CIFS_CREATE_ACTION, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %201
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %240, label %212

212:                                              ; preds = %209
  %213 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %214 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 0
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 1
  %220 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %220, i32* %219, align 4
  %221 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 2
  %222 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %222, i32* %221, align 4
  %223 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 3
  %224 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %224, i32* %223, align 4
  %225 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 4
  %226 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %226, i32* %225, align 4
  %227 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 5
  %228 = load i32, i32* @NO_CHANGE_64, align 4
  store i32 %228, i32* %227, align 4
  %229 = getelementptr inbounds %struct.cifs_unix_set_info_args, %struct.cifs_unix_set_info_args* %17, i32 0, i32 6
  %230 = load %struct.inode*, %struct.inode** %4, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %229, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %235 = load i32, i32* %16, align 4
  %236 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %12, align 8
  %237 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @CIFSSMBUnixSetFileInfo(i32 %233, %struct.cifs_tcon* %234, %struct.cifs_unix_set_info_args* %17, i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %217, %212, %209, %201
  br label %241

241:                                              ; preds = %240, %194, %184, %165, %52
  %242 = load i8*, i8** %14, align 8
  %243 = call i32 @kfree(i8* %242)
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @FreeXid(i32 %244)
  %246 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %247 = call i32 @cifs_put_tlink(%struct.tcon_link* %246)
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %241, %30
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(i32) #1

declare dso_local i8* @build_path_from_dentry(%struct.TYPE_10__*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_posix_open(i8*, %struct.inode**, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32, i64) #1

declare dso_local i32 @cifs_nt_open(i8*, %struct.inode*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32, i32*, i32*, i32) #1

declare dso_local %struct.cifsFileInfo* @cifs_new_fileinfo(i32, %struct.file*, %struct.tcon_link*, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_fscache_set_inode_cookie(%struct.inode*, %struct.file*) #1

declare dso_local i32 @CIFSSMBUnixSetFileInfo(i32, %struct.cifs_tcon*, %struct.cifs_unix_set_info_args*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
