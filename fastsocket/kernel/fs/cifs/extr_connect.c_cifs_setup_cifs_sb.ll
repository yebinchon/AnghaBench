; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_cifs_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_setup_cifs_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.cifs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32, i32 }

@cifs_prune_tlinks = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"file mode: 0x%x  dir mode: 0x%x\00", align 1
@CIFS_MOUNT_NO_PERM = common dso_local global i32 0, align 4
@CIFS_MOUNT_SET_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_XATTR = common dso_local global i32 0, align 4
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@CIFS_MOUNT_NO_BRL = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOSSYNC = common dso_local global i32 0, align 4
@CIFS_MOUNT_NOPOSIXBRL = common dso_local global i32 0, align 4
@CIFS_MOUNT_RWPIDFORWARD = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_BACKUPUID = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_BACKUPGID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@CIFS_MOUNT_FSCACHE = common dso_local global i32 0, align 4
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@CIFS_MOUNT_STRICT_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mounting share using direct i/o\00", align 1
@CIFS_MOUNT_DIRECT_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"mount option mfsymlinks ignored if sfu mount option is used\00", align 1
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"mount option dynperm ignored if cifsacl mount option supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_setup_cifs_sb(%struct.smb_vol* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca %struct.smb_vol*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %3, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %4, align 8
  %5 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %6 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %5, i32 0, i32 13
  %7 = load i32, i32* @cifs_prune_tlinks, align 4
  %8 = call i32 @INIT_DELAYED_WORK(i32* %6, i32 %7)
  %9 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %9, i32 0, i32 12
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load i32, i32* @RB_ROOT, align 4
  %13 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %16 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %15, i32 0, i32 29
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %18, i32 0, i32 10
  store i32* %17, i32** %19, align 8
  %20 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @strlen(i32* %27)
  %29 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %30 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %29, i32 0, i32 9
  store i64 %28, i64* %30, align 8
  %31 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %32 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %31, i32 0, i32 29
  store i32* null, i32** %32, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %38 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %37, i32 0, i32 28
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %43 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %42, i32 0, i32 27
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %46 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %48 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %47, i32 0, i32 26
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 25
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %56 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %58 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %65 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %64, i32 0, i32 24
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %68 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %70 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %69, i32 0, i32 23
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %73 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %75 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %74, i32 0, i32 22
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %36
  %79 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %80 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %81 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %36
  %85 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %86 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %85, i32 0, i32 21
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @CIFS_MOUNT_SET_UID, align 4
  %91 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %92 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %97 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %96, i32 0, i32 20
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %102 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %103 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %108 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %107, i32 0, i32 19
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %113 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %114 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %119 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %118, i32 0, i32 18
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @CIFS_MOUNT_NO_XATTR, align 4
  %124 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %125 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %130 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %135 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %136 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %128
  %140 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %141 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %140, i32 0, i32 17
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* @CIFS_MOUNT_NO_BRL, align 4
  %146 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %147 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %152 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %151, i32 0, i32 16
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @CIFS_MOUNT_NOSSYNC, align 4
  %157 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %158 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %163 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %162, i32 0, i32 15
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @CIFS_MOUNT_NOPOSIXBRL, align 4
  %168 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %169 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %174 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %173, i32 0, i32 14
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @CIFS_MOUNT_RWPIDFORWARD, align 4
  %179 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %180 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %172
  %184 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %185 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %190 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %191 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %188, %183
  %195 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %196 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %195, i32 0, i32 13
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPUID, align 4
  %201 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %202 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %206 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %205, i32 0, i32 12
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %209 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %199, %194
  %211 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %212 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %211, i32 0, i32 11
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load i32, i32* @CIFS_MOUNT_CIFS_BACKUPGID, align 4
  %217 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %218 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %222 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %225 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %215, %210
  %227 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %228 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %227, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %233 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %234 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %226
  %238 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %239 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %238, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %244 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %245 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %237
  %249 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %250 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %255 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %256 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %253, %248
  %260 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %261 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = load i32, i32* @CIFS_MOUNT_FSCACHE, align 4
  %266 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %267 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %264, %259
  %271 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %272 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %277 = load i32, i32* @CIFS_MOUNT_NO_PERM, align 4
  %278 = or i32 %276, %277
  %279 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %280 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %275, %270
  %284 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %285 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %283
  %289 = load i32, i32* @CIFS_MOUNT_STRICT_IO, align 4
  %290 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %291 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %288, %283
  %295 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %296 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %301 = load i32, i32* @CIFS_MOUNT_DIRECT_IO, align 4
  %302 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %303 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %294
  %307 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %308 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %325

311:                                              ; preds = %306
  %312 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %313 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %324

318:                                              ; preds = %311
  %319 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %320 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %321 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 8
  br label %324

324:                                              ; preds = %318, %316
  br label %325

325:                                              ; preds = %324, %306
  %326 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %327 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load %struct.smb_vol*, %struct.smb_vol** %3, align 8
  %332 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %330, %325
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @cERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
