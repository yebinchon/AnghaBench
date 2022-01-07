; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_changelist_postfix.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_changelist.c_changelist_postfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i32* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i64 0, align 8
@CL_GATHER_DONT_UNMOUNT = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_ON = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SA_INIT_SHARE_API_SELECTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @changelist_postfix(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %13 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_25__* @uu_list_last(i32 %19)
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %4, align 8
  %21 = icmp eq %struct.TYPE_25__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %260

23:                                               ; preds = %1
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CL_GATHER_DONT_UNMOUNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = call i32 @remove_mountpoint(%struct.TYPE_23__* %39)
  br label %41

41:                                               ; preds = %36, %29, %23
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = icmp ne %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @zfs_uninit_libshare(i32* %56)
  br label %58

58:                                               ; preds = %46, %41
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_25__* @uu_list_last(i32 %61)
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %4, align 8
  br label %63

63:                                               ; preds = %249, %58
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = icmp ne %struct.TYPE_25__* %64, null
  br i1 %65, label %66, label %255

66:                                               ; preds = %63
  %67 = call i64 (...) @getzoneid()
  %68 = load i64, i64* @GLOBAL_ZONEID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %249

76:                                               ; preds = %70, %66
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %249

82:                                               ; preds = %76
  %83 = load i64, i64* @B_FALSE, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = call i32 @zfs_refresh_properties(%struct.TYPE_23__* %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = call i64 @ZFS_IS_VOLUME(%struct.TYPE_23__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %249

96:                                               ; preds = %82
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %101 = trunc i64 %14 to i32
  %102 = load i64, i64* @B_FALSE, align 8
  %103 = call i64 @zfs_prop_get(%struct.TYPE_23__* %99, i32 %100, i8* %16, i32 %101, i32* null, i32* null, i32 0, i64 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %105, %96
  %109 = phi i1 [ false, %96 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %115 = trunc i64 %14 to i32
  %116 = load i64, i64* @B_FALSE, align 8
  %117 = call i64 @zfs_prop_get(%struct.TYPE_23__* %113, i32 %114, i8* %16, i32 %115, i32* null, i32* null, i32 0, i64 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %119, %108
  %123 = phi i1 [ false, %108 ], [ %121, %119 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CL_GATHER_DONT_UNMOUNT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %122
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = call i64 @zfs_is_mounted(%struct.TYPE_23__* %134, i32* null)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %131, %122
  %138 = phi i1 [ true, %122 ], [ %136, %131 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %178, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %153, %150, %147
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %160, align 8
  %162 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %163 = call i64 @zfs_prop_get_int(%struct.TYPE_23__* %161, i32 %162)
  %164 = load i64, i64* @ZFS_CANMOUNT_ON, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %158, %142
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %168, align 8
  %170 = call i64 @zfs_mount(%struct.TYPE_23__* %169, i32* null, i32 0)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %177

175:                                              ; preds = %166
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %175, %172
  br label %178

178:                                              ; preds = %177, %158, %153, %137
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  %188 = call i64 @zfs_share_nfs(%struct.TYPE_23__* %187)
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %7, align 4
  br label %213

193:                                              ; preds = %181, %178
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %198, %193
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = call i64 @zfs_unshare_nfs(%struct.TYPE_23__* %206, i32* null)
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %203, %198
  br label %213

213:                                              ; preds = %212, %184
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = call i64 @zfs_share_smb(%struct.TYPE_23__* %222)
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %7, align 4
  br label %248

228:                                              ; preds = %216, %213
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %233, %228
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %240, align 8
  %242 = call i64 @zfs_unshare_smb(%struct.TYPE_23__* %241, i32* null)
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %238, %233
  br label %248

248:                                              ; preds = %247, %219
  br label %249

249:                                              ; preds = %248, %95, %81, %75
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %254 = call %struct.TYPE_25__* @uu_list_prev(i32 %252, %struct.TYPE_25__* %253)
  store %struct.TYPE_25__* %254, %struct.TYPE_25__** %4, align 8
  br label %63

255:                                              ; preds = %63
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 -1, i32 0
  store i32 %259, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %260

260:                                              ; preds = %255, %22
  %261 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_25__* @uu_list_last(i32) #2

declare dso_local i32 @remove_mountpoint(%struct.TYPE_23__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zfs_uninit_libshare(i32*) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i32 @zfs_refresh_properties(%struct.TYPE_23__*) #2

declare dso_local i64 @ZFS_IS_VOLUME(%struct.TYPE_23__*) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_23__*, i32, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @zfs_is_mounted(%struct.TYPE_23__*, i32*) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_23__*, i32) #2

declare dso_local i64 @zfs_mount(%struct.TYPE_23__*, i32*, i32) #2

declare dso_local i64 @zfs_share_nfs(%struct.TYPE_23__*) #2

declare dso_local i64 @zfs_unshare_nfs(%struct.TYPE_23__*, i32*) #2

declare dso_local i64 @zfs_share_smb(%struct.TYPE_23__*) #2

declare dso_local i64 @zfs_unshare_smb(%struct.TYPE_23__*, i32*) #2

declare dso_local %struct.TYPE_25__* @uu_list_prev(i32, %struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
