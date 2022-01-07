; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_notify_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_inode.c_ncp_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nw_modify_dos_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ncp_server = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@DM_ATTRIBUTES = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@aRONLY = common dso_local global i32 0, align 4
@aRENAMEINHIBIT = common dso_local global i32 0, align 4
@aDELETEINHIBIT = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ncpfs: trying to change size to %ld\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATTR_CTIME = common dso_local global i32 0, align 4
@DM_CREATE_TIME = common dso_local global i32 0, align 4
@DM_CREATE_DATE = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@DM_MODIFY_TIME = common dso_local global i32 0, align 4
@DM_MODIFY_DATE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@DM_LAST_ACCESS_DATE = common dso_local global i32 0, align 4
@NCP_MOUNT_EXTRAS = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@aSHARED = common dso_local global i32 0, align 4
@aSYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nw_modify_dos_info, align 4
  %9 = alloca %struct.ncp_server*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iattr, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %20)
  store %struct.ncp_server* %21, %struct.ncp_server** %9, align 8
  %22 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %23 = icmp ne %struct.ncp_server* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %26 = call i32 @ncp_conn_valid(%struct.ncp_server* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %2
  br label %292

29:                                               ; preds = %24
  %30 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = call i32 @ncp_age_dentry(%struct.ncp_server* %30, %struct.dentry* %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.iattr*, %struct.iattr** %4, align 8
  %35 = call i32 @inode_change_ok(%struct.inode* %33, %struct.iattr* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %292

39:                                               ; preds = %29
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.iattr*, %struct.iattr** %4, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATTR_UID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.iattr*, %struct.iattr** %4, align 8
  %50 = getelementptr inbounds %struct.iattr, %struct.iattr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %53 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %292

58:                                               ; preds = %48, %39
  %59 = load %struct.iattr*, %struct.iattr** %4, align 8
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ATTR_GID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load %struct.iattr*, %struct.iattr** %4, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %70 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %292

75:                                               ; preds = %65, %58
  %76 = load %struct.iattr*, %struct.iattr** %4, align 8
  %77 = getelementptr inbounds %struct.iattr, %struct.iattr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ATTR_MODE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load %struct.iattr*, %struct.iattr** %4, align 8
  %84 = getelementptr inbounds %struct.iattr, %struct.iattr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @S_IFREG, align 4
  %87 = load i32, i32* @S_IFDIR, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @S_IRWXUGO, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = and i32 %85, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %292

95:                                               ; preds = %82, %75
  store i32 0, i32* %7, align 4
  %96 = call i32 @memset(%struct.nw_modify_dos_info* %8, i32 0, i32 24)
  %97 = load %struct.iattr*, %struct.iattr** %4, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATTR_MODE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %154

103:                                              ; preds = %95
  %104 = load %struct.iattr*, %struct.iattr** %4, align 8
  %105 = getelementptr inbounds %struct.iattr, %struct.iattr* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* @DM_ATTRIBUTES, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @S_ISDIR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %103
  %116 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %117 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %129

122:                                              ; preds = %103
  %123 = load %struct.ncp_server*, %struct.ncp_server** %9, align 8
  %124 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %122, %115
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @S_IWUGO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i32, i32* @aRONLY, align 4
  %136 = load i32, i32* @aRENAMEINHIBIT, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @aDELETEINHIBIT, align 4
  %139 = or i32 %137, %138
  %140 = xor i32 %139, -1
  %141 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %153

144:                                              ; preds = %129
  %145 = load i32, i32* @aRONLY, align 4
  %146 = load i32, i32* @aRENAMEINHIBIT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @aDELETEINHIBIT, align 4
  %149 = or i32 %147, %148
  %150 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %144, %134
  br label %154

154:                                              ; preds = %153, %95
  %155 = load %struct.iattr*, %struct.iattr** %4, align 8
  %156 = getelementptr inbounds %struct.iattr, %struct.iattr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ATTR_SIZE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %204

161:                                              ; preds = %154
  %162 = load %struct.iattr*, %struct.iattr** %4, align 8
  %163 = getelementptr inbounds %struct.iattr, %struct.iattr* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = load i32, i32* @O_WRONLY, align 4
  %168 = call i32 @ncp_make_open(%struct.inode* %166, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32, i32* @EACCES, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %6, align 4
  br label %292

173:                                              ; preds = %161
  %174 = load %struct.inode*, %struct.inode** %5, align 8
  %175 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %174)
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = call %struct.TYPE_10__* @NCP_FINFO(%struct.inode* %176)
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.iattr*, %struct.iattr** %4, align 8
  %181 = getelementptr inbounds %struct.iattr, %struct.iattr* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ncp_write_kernel(%struct.ncp_server* %175, i32 %179, i32 %182, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = call i32 @ncp_inode_close(%struct.inode* %184)
  %186 = load %struct.inode*, %struct.inode** %5, align 8
  %187 = call i32 @ncp_make_closed(%struct.inode* %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %173
  br label %292

191:                                              ; preds = %173
  %192 = load i32, i32* @ATTR_SIZE, align 4
  %193 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  store i32 %192, i32* %193, align 8
  %194 = load %struct.iattr*, %struct.iattr** %4, align 8
  %195 = getelementptr inbounds %struct.iattr, %struct.iattr* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 7
  store i32 %196, i32* %197, align 8
  %198 = load %struct.inode*, %struct.inode** %5, align 8
  %199 = call i32 @inode_setattr(%struct.inode* %198, %struct.iattr* %12)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %292

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %203, %154
  %205 = load %struct.iattr*, %struct.iattr** %4, align 8
  %206 = getelementptr inbounds %struct.iattr, %struct.iattr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ATTR_CTIME, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %204
  %212 = load i32, i32* @DM_CREATE_TIME, align 4
  %213 = load i32, i32* @DM_CREATE_DATE, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load %struct.iattr*, %struct.iattr** %4, align 8
  %218 = getelementptr inbounds %struct.iattr, %struct.iattr* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 5
  %222 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 4
  %223 = call i32 @ncp_date_unix2dos(i32 %220, i32* %221, i32* %222)
  br label %224

224:                                              ; preds = %211, %204
  %225 = load %struct.iattr*, %struct.iattr** %4, align 8
  %226 = getelementptr inbounds %struct.iattr, %struct.iattr* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ATTR_MTIME, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %224
  %232 = load i32, i32* @DM_MODIFY_TIME, align 4
  %233 = load i32, i32* @DM_MODIFY_DATE, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %7, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %7, align 4
  %237 = load %struct.iattr*, %struct.iattr** %4, align 8
  %238 = getelementptr inbounds %struct.iattr, %struct.iattr* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 3
  %242 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 2
  %243 = call i32 @ncp_date_unix2dos(i32 %240, i32* %241, i32* %242)
  br label %244

244:                                              ; preds = %231, %224
  %245 = load %struct.iattr*, %struct.iattr** %4, align 8
  %246 = getelementptr inbounds %struct.iattr, %struct.iattr* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @ATTR_ATIME, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %244
  %252 = load i32, i32* @DM_LAST_ACCESS_DATE, align 4
  %253 = load i32, i32* %7, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %7, align 4
  %255 = load %struct.iattr*, %struct.iattr** %4, align 8
  %256 = getelementptr inbounds %struct.iattr, %struct.iattr* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.nw_modify_dos_info, %struct.nw_modify_dos_info* %8, i32 0, i32 1
  %260 = call i32 @ncp_date_unix2dos(i32 %258, i32* %13, i32* %259)
  br label %261

261:                                              ; preds = %251, %244
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %284

264:                                              ; preds = %261
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %265)
  %267 = load %struct.inode*, %struct.inode** %5, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @ncp_modify_file_or_subdir_dos_info(%struct.ncp_server* %266, %struct.inode* %267, i32 %268, %struct.nw_modify_dos_info* %8)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %264
  %273 = load i32, i32* @EACCES, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @DM_CREATE_TIME, align 4
  %277 = load i32, i32* @DM_CREATE_DATE, align 4
  %278 = or i32 %276, %277
  %279 = icmp eq i32 %275, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %272
  store i32 0, i32* %6, align 4
  br label %282

281:                                              ; preds = %272
  br label %292

282:                                              ; preds = %280
  br label %283

283:                                              ; preds = %282, %264
  br label %284

284:                                              ; preds = %283, %261
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %284
  %288 = load %struct.inode*, %struct.inode** %5, align 8
  %289 = load %struct.iattr*, %struct.iattr** %4, align 8
  %290 = call i32 @inode_setattr(%struct.inode* %288, %struct.iattr* %289)
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %287, %284
  br label %292

292:                                              ; preds = %291, %281, %202, %190, %170, %94, %74, %57, %38, %28
  %293 = call i32 (...) @unlock_kernel()
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @ncp_age_dentry(%struct.ncp_server*, %struct.dentry*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @memset(%struct.nw_modify_dos_info*, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @ncp_make_open(%struct.inode*, i32) #1

declare dso_local i32 @ncp_write_kernel(%struct.ncp_server*, i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i32 @ncp_inode_close(%struct.inode*) #1

declare dso_local i32 @ncp_make_closed(%struct.inode*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ncp_date_unix2dos(i32, i32*, i32*) #1

declare dso_local i32 @ncp_modify_file_or_subdir_dos_info(%struct.ncp_server*, %struct.inode*, i32, %struct.nw_modify_dos_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
