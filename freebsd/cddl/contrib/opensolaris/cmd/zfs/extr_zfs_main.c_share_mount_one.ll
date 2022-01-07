; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_share_mount_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_share_mount_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnttab = type { i8* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"cannot %s '%s': dataset is exported to a local zone\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': permission denied\0A\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot share '%s': legacy share\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"to share this filesystem set sharenfs property on\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': legacy mountpoint\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"use %s(8) to %s this filesystem\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"cannot %s '%s': no mountpoint set\0A\00", align 1
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_OFF = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [53 x i8] c"cannot %s '%s': 'canmount' property is set to 'off'\0A\00", align 1
@ZFS_CANMOUNT_NOAUTO = common dso_local global i64 0, align 8
@ZFS_PROP_INCONSISTENT = common dso_local global i32 0, align 4
@ZFS_PROP_RECEIVE_RESUME_TOKEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [115 x i8] c"cannot %s '%s': Contains partially-completed state from \22zfs receive -r\22, which can be resumed with \22zfs send -t\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"cannot share '%s': filesystem already shared\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"cannot share '%s': invalid share type '%s' specified\0A\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MNTOPT_REMOUNT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [47 x i8] c"cannot mount '%s': filesystem already mounted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32, i8*)* @share_mount_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @share_mount_one(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.mnttab, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %25 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %17, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 128
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %38, i8** %18, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @zfs_get_type(i32* %39)
  %41 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %46 = call i64 @zfs_prop_get_int(i32* %44, i32 %45)
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %6
  %50 = call i64 (...) @getzoneid()
  %51 = load i64, i64* @GLOBAL_ZONEID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

57:                                               ; preds = %53
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i8*, i8** %18, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i8* @zfs_get_name(i32* %61)
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* %59, i8* %60, i8* %62)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

64:                                               ; preds = %49, %6
  %65 = load i64, i64* %20, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = call i64 (...) @getzoneid()
  %69 = load i64, i64* @GLOBAL_ZONEID, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i8*, i8** %18, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i8* @zfs_get_name(i32* %79)
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* %77, i8* %78, i8* %80)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

82:                                               ; preds = %67, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %86 = trunc i64 %26 to i32
  %87 = load i32, i32* @B_FALSE, align 4
  %88 = call i64 @zfs_prop_get(i32* %84, i32 %85, i8* %28, i32 %86, i32* null, i32* null, i32 0, i32 %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %94 = trunc i64 %30 to i32
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i64 @zfs_prop_get(i32* %92, i32 %93, i8* %31, i32 %94, i32* null, i32* null, i32 0, i32 %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @verify(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %102 = trunc i64 %33 to i32
  %103 = load i32, i32* @B_FALSE, align 4
  %104 = call i64 @zfs_prop_get(i32* %100, i32 %101, i8* %34, i32 %102, i32* null, i32* null, i32 0, i32 %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @verify(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %129

110:                                              ; preds = %83
  %111 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

120:                                              ; preds = %116
  %121 = load i32, i32* @stderr, align 4
  %122 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32*, i32** %8, align 8
  %124 = call i8* @zfs_get_name(i32* %123)
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* %122, i8* %124)
  %126 = load i32, i32* @stderr, align 4
  %127 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* %127)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

129:                                              ; preds = %113, %110, %83
  %130 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

136:                                              ; preds = %132
  %137 = load i32, i32* @stderr, align 4
  %138 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i8*, i8** %18, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i8* @zfs_get_name(i32* %140)
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* %138, i8* %139, i8* %141)
  %143 = load i32, i32* @stderr, align 4
  %144 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %145 = load i8*, i8** %18, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* %144, i8* %145, i8* %146)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

148:                                              ; preds = %129
  %149 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

155:                                              ; preds = %151
  %156 = load i32, i32* @stderr, align 4
  %157 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %158 = load i8*, i8** %18, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = call i8* @zfs_get_name(i32* %159)
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* %157, i8* %158, i8* %160)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

162:                                              ; preds = %148
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %165 = call i64 @zfs_prop_get_int(i32* %163, i32 %164)
  store i64 %165, i64* %21, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* @ZFS_CANMOUNT_OFF, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %162
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

173:                                              ; preds = %169
  %174 = load i32, i32* @stderr, align 4
  %175 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %176 = load i8*, i8** %18, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i8* @zfs_get_name(i32* %177)
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* %175, i8* %176, i8* %178)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

180:                                              ; preds = %162
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* @ZFS_CANMOUNT_NOAUTO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* @ZFS_PROP_INCONSISTENT, align 4
  %192 = call i64 @zfs_prop_get_int(i32* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %189
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @ZFS_PROP_RECEIVE_RESUME_TOKEN, align 4
  %197 = load i32, i32* @B_TRUE, align 4
  %198 = call i64 @zfs_prop_get(i32* %195, i32 %196, i8* null, i32 0, i32* null, i32* null, i32 0, i32 %197)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

204:                                              ; preds = %200
  %205 = load i32, i32* @stderr, align 4
  %206 = call i8* @gettext(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.13, i64 0, i64 0))
  %207 = load i8*, i8** %18, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = call i8* @zfs_get_name(i32* %208)
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* %206, i8* %207, i8* %209)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

211:                                              ; preds = %194, %189
  %212 = load i32, i32* %9, align 4
  switch i32 %212, label %333 [
    i32 128, label %213
    i32 129, label %299
  ]

213:                                              ; preds = %211
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @zfs_is_shared_nfs(i32* %214, i32* null)
  store i32 %215, i32* %22, align 4
  %216 = load i32*, i32** %8, align 8
  %217 = call i32 @zfs_is_shared_smb(i32* %216, i32* null)
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %22, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %23, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %241, label %223

223:                                              ; preds = %220, %213
  %224 = load i32, i32* %22, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %229, %226, %223
  %233 = load i32, i32* %23, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %232
  %236 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  %239 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %238, %229, %220
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

245:                                              ; preds = %241
  %246 = load i32, i32* @stderr, align 4
  %247 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  %248 = load i32*, i32** %8, align 8
  %249 = call i8* @zfs_get_name(i32* %248)
  %250 = call i32 (i32, i8*, ...) @fprintf(i32 %246, i8* %247, i8* %249)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

251:                                              ; preds = %238, %235, %232
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @zfs_is_mounted(i32* %252, i32* null)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %251
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @zfs_mount(i32* %256, i8* null, i32 0)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

260:                                              ; preds = %255, %251
  %261 = load i8*, i8** %11, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 @zfs_shareall(i32* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

268:                                              ; preds = %263
  br label %298

269:                                              ; preds = %260
  %270 = load i8*, i8** %11, align 8
  %271 = call i64 @strcmp(i8* %270, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = load i32*, i32** %8, align 8
  %275 = call i32 @zfs_share_nfs(i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

278:                                              ; preds = %273
  br label %297

279:                                              ; preds = %269
  %280 = load i8*, i8** %11, align 8
  %281 = call i64 @strcmp(i8* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load i32*, i32** %8, align 8
  %285 = call i32 @zfs_share_smb(i32* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %283
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

288:                                              ; preds = %283
  br label %296

289:                                              ; preds = %279
  %290 = load i32, i32* @stderr, align 4
  %291 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
  %292 = load i32*, i32** %8, align 8
  %293 = call i8* @zfs_get_name(i32* %292)
  %294 = load i8*, i8** %11, align 8
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* %291, i8* %293, i8* %294)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

296:                                              ; preds = %288
  br label %297

297:                                              ; preds = %296, %278
  br label %298

298:                                              ; preds = %297, %268
  br label %333

299:                                              ; preds = %211
  %300 = load i8*, i8** %13, align 8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8** %303, align 8
  br label %307

304:                                              ; preds = %299
  %305 = load i8*, i8** %13, align 8
  %306 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  store i8* %305, i8** %306, align 8
  br label %307

307:                                              ; preds = %304, %302
  %308 = load i32, i32* @MNTOPT_REMOUNT, align 4
  %309 = call i32 @hasmntopt(%struct.mnttab* %19, i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %325, label %311

311:                                              ; preds = %307
  %312 = load i32*, i32** %8, align 8
  %313 = call i32 @zfs_is_mounted(i32* %312, i32* null)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %311
  %316 = load i32, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

319:                                              ; preds = %315
  %320 = load i32, i32* @stderr, align 4
  %321 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %322 = load i32*, i32** %8, align 8
  %323 = call i8* @zfs_get_name(i32* %322)
  %324 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* %321, i8* %323)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

325:                                              ; preds = %311, %307
  %326 = load i32*, i32** %8, align 8
  %327 = load i8*, i8** %13, align 8
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @zfs_mount(i32* %326, i8* %327, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i32 1, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

332:                                              ; preds = %325
  br label %333

333:                                              ; preds = %211, %332, %298
  store i32 0, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %334

334:                                              ; preds = %333, %331, %319, %318, %289, %287, %277, %267, %259, %245, %244, %204, %203, %187, %173, %172, %155, %154, %136, %135, %120, %119, %75, %74, %57, %56
  %335 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %335)
  %336 = load i32, i32* %7, align 4
  ret i32 %336
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zfs_is_shared_nfs(i32*, i32*) #2

declare dso_local i32 @zfs_is_shared_smb(i32*, i32*) #2

declare dso_local i32 @zfs_is_mounted(i32*, i32*) #2

declare dso_local i32 @zfs_mount(i32*, i8*, i32) #2

declare dso_local i32 @zfs_shareall(i32*) #2

declare dso_local i32 @zfs_share_nfs(i32*) #2

declare dso_local i32 @zfs_share_smb(i32*) #2

declare dso_local i32 @hasmntopt(%struct.mnttab*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
