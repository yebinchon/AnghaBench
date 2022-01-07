; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i32, i32, i32, %struct.tcon_link*, i32, i32, i32 }
%struct.tcon_link = type { i32, i32, %struct.cifs_tcon*, i32 }
%struct.cifs_tcon = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.smb_vol = type { i32 }
%struct.cifs_ses = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TCP_Server_Info = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }

@CAP_UNIX = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TCON_LINK_MASTER = common dso_local global i32 0, align 4
@TCON_LINK_IN_TREE = common dso_local global i32 0, align 4
@cifsiod_workqueue = common dso_local global i32 0, align 4
@TLINK_IDLE_EXPIRE = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@MAX_NESTED_LINKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_mount(%struct.cifs_sb_info* %0, %struct.smb_vol* %1) #0 {
  %3 = alloca %struct.cifs_sb_info*, align 8
  %4 = alloca %struct.smb_vol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.TCP_Server_Info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %3, align 8
  store %struct.smb_vol* %1, %struct.smb_vol** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %8, align 8
  store %struct.cifs_ses* null, %struct.cifs_ses** %7, align 8
  store %struct.TCP_Server_Info* null, %struct.TCP_Server_Info** %9, align 8
  store i8* null, i8** %10, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %11, align 8
  %12 = call i32 (...) @GetXid()
  store i32 %12, i32* %6, align 4
  %13 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %14 = call %struct.cifs_tcon* @cifs_get_tcp_session(%struct.smb_vol* %13)
  %15 = bitcast %struct.cifs_tcon* %14 to %struct.TCP_Server_Info*
  store %struct.TCP_Server_Info* %15, %struct.TCP_Server_Info** %9, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %17 = bitcast %struct.TCP_Server_Info* %16 to %struct.cifs_tcon*
  %18 = call i64 @IS_ERR(%struct.cifs_tcon* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %22 = bitcast %struct.TCP_Server_Info* %21 to %struct.cifs_tcon*
  %23 = call i32 @PTR_ERR(%struct.cifs_tcon* %22)
  store i32 %23, i32* %5, align 4
  br label %241

24:                                               ; preds = %2
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %26 = bitcast %struct.TCP_Server_Info* %25 to %struct.cifs_tcon*
  %27 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %28 = call %struct.cifs_tcon* @cifs_get_smb_ses(%struct.cifs_tcon* %26, %struct.smb_vol* %27)
  %29 = bitcast %struct.cifs_tcon* %28 to %struct.cifs_ses*
  store %struct.cifs_ses* %29, %struct.cifs_ses** %7, align 8
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %31 = bitcast %struct.cifs_ses* %30 to %struct.cifs_tcon*
  %32 = call i64 @IS_ERR(%struct.cifs_tcon* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %36 = bitcast %struct.cifs_ses* %35 to %struct.cifs_tcon*
  %37 = call i32 @PTR_ERR(%struct.cifs_tcon* %36)
  store i32 %37, i32* %5, align 4
  store %struct.cifs_ses* null, %struct.cifs_ses** %7, align 8
  br label %218

38:                                               ; preds = %24
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %40 = bitcast %struct.cifs_ses* %39 to %struct.cifs_tcon*
  %41 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %42 = call %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon* %40, %struct.smb_vol* %41)
  store %struct.cifs_tcon* %42, %struct.cifs_tcon** %8, align 8
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %44 = call i64 @IS_ERR(%struct.cifs_tcon* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %48 = call i32 @PTR_ERR(%struct.cifs_tcon* %47)
  store i32 %48, i32* %5, align 4
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %8, align 8
  br label %126

49:                                               ; preds = %38
  %50 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %51 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CAP_UNIX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %61 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %62 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %63 = call i32 @reset_cifs_unix_caps(i32 %59, %struct.cifs_tcon* %60, %struct.cifs_sb_info* %61, %struct.smb_vol* %62)
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %65 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %64, i32 0, i32 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CifsNeedReconnect, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %58
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %75 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le64_to_cpu(i32 %77)
  %79 = load i32, i32* @CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @EACCES, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %218

85:                                               ; preds = %73, %58
  br label %89

86:                                               ; preds = %49
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %85
  %90 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %91 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %97 = call i32 @CIFSSMBQFSDeviceInfo(i32 %95, %struct.cifs_tcon* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %100 = call i32 @CIFSSMBQFSAttributeInfo(i32 %98, %struct.cifs_tcon* %99)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %103 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %110 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %113 = call i32 @CIFS_DIR_SEP(%struct.cifs_sb_info* %112)
  %114 = call i32 @convert_delimiter(i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %117 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %118 = call i32 @cifs_negotiate_wsize(%struct.cifs_tcon* %116, %struct.smb_vol* %117)
  %119 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %120 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %122 = load %struct.smb_vol*, %struct.smb_vol** %4, align 8
  %123 = call i32 @cifs_negotiate_rsize(%struct.cifs_tcon* %121, %struct.smb_vol* %122)
  %124 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %125 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %115, %46
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %160, label %129

129:                                              ; preds = %126
  %130 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %131 = icmp ne %struct.cifs_tcon* %130, null
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %134 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %135 = call i8* @cifs_build_path_to_root(%struct.cifs_sb_info* %133, %struct.cifs_tcon* %134)
  store i8* %135, i8** %10, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %218

141:                                              ; preds = %132
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %144 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @is_path_accessible(i32 %142, %struct.cifs_tcon* %143, %struct.cifs_sb_info* %144, i8* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @EREMOTE, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 @kfree(i8* %155)
  br label %218

157:                                              ; preds = %149, %141
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @kfree(i8* %158)
  br label %160

160:                                              ; preds = %157, %129, %126
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @EREMOTE, align 4
  %163 = sub nsw i32 0, %162
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @EOPNOTSUPP, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %218

172:                                              ; preds = %168
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call %struct.tcon_link* @kzalloc(i32 24, i32 %173)
  store %struct.tcon_link* %174, %struct.tcon_link** %11, align 8
  %175 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %176 = icmp eq %struct.tcon_link* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %218

180:                                              ; preds = %172
  %181 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %182 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %185 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %187 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %188 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %187, i32 0, i32 2
  store %struct.cifs_tcon* %186, %struct.cifs_tcon** %188, align 8
  %189 = load i32, i32* @jiffies, align 4
  %190 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %191 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @TCON_LINK_MASTER, align 4
  %193 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %194 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %193, i32 0, i32 0
  %195 = call i32 @set_bit(i32 %192, i32* %194)
  %196 = load i32, i32* @TCON_LINK_IN_TREE, align 4
  %197 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %198 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %197, i32 0, i32 0
  %199 = call i32 @set_bit(i32 %196, i32* %198)
  %200 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %201 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %202 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %201, i32 0, i32 4
  store %struct.tcon_link* %200, %struct.tcon_link** %202, align 8
  %203 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %204 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %203, i32 0, i32 2
  %205 = call i32 @spin_lock(i32* %204)
  %206 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %207 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %206, i32 0, i32 3
  %208 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %209 = call i32 @tlink_rb_insert(i32* %207, %struct.tcon_link* %208)
  %210 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %211 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %210, i32 0, i32 2
  %212 = call i32 @spin_unlock(i32* %211)
  %213 = load i32, i32* @cifsiod_workqueue, align 4
  %214 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %215 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %214, i32 0, i32 1
  %216 = load i32, i32* @TLINK_IDLE_EXPIRE, align 4
  %217 = call i32 @queue_delayed_work(i32 %213, i32* %215, i32 %216)
  br label %218

218:                                              ; preds = %180, %177, %171, %154, %138, %82, %34
  %219 = load i32, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %240

221:                                              ; preds = %218
  %222 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %223 = icmp ne %struct.cifs_tcon* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %226 = call i32 @cifs_put_tcon(%struct.cifs_tcon* %225)
  br label %239

227:                                              ; preds = %221
  %228 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %229 = icmp ne %struct.cifs_ses* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %232 = bitcast %struct.cifs_ses* %231 to %struct.cifs_tcon*
  %233 = call i32 @cifs_put_smb_ses(%struct.cifs_tcon* %232)
  br label %238

234:                                              ; preds = %227
  %235 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %236 = bitcast %struct.TCP_Server_Info* %235 to %struct.cifs_tcon*
  %237 = call i32 @cifs_put_tcp_session(%struct.cifs_tcon* %236)
  br label %238

238:                                              ; preds = %234, %230
  br label %239

239:                                              ; preds = %238, %224
  br label %240

240:                                              ; preds = %239, %218
  br label %241

241:                                              ; preds = %240, %20
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @FreeXid(i32 %242)
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcp_session(%struct.smb_vol*) #1

declare dso_local i64 @IS_ERR(%struct.cifs_tcon*) #1

declare dso_local i32 @PTR_ERR(%struct.cifs_tcon*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_smb_ses(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i32 @reset_cifs_unix_caps(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, %struct.smb_vol*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @CIFSSMBQFSDeviceInfo(i32, %struct.cifs_tcon*) #1

declare dso_local i32 @CIFSSMBQFSAttributeInfo(i32, %struct.cifs_tcon*) #1

declare dso_local i32 @convert_delimiter(i32, i32) #1

declare dso_local i32 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_negotiate_wsize(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i32 @cifs_negotiate_rsize(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i8* @cifs_build_path_to_root(%struct.cifs_sb_info*, %struct.cifs_tcon*) #1

declare dso_local i32 @is_path_accessible(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.tcon_link* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tlink_rb_insert(i32*, %struct.tcon_link*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @cifs_put_tcon(%struct.cifs_tcon*) #1

declare dso_local i32 @cifs_put_smb_ses(%struct.cifs_tcon*) #1

declare dso_local i32 @cifs_put_tcp_session(%struct.cifs_tcon*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
