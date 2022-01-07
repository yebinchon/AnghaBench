; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_unshare_unmount_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_unshare_unmount_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64, i32 }
%struct.extmnttab = type { i64, i64, i8*, i8*, i32 }
%struct.statfs = type { i32 }

@OP_SHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot %s '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot %s '%s': not currently mounted\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"warning: %s not in mnttab\0A\00", align 1
@MNTTYPE_ZFS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot %s '%s': not a ZFS filesystem\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"cannot %s '%s': not a mountpoint\0A\00", align 1
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"cannot unshare '%s': legacy share\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"cannot unshare '%s': not currently shared\0A\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"cannot unmount '%s': legacy mountpoint\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"use umount(8) to unmount this filesystem\0A\00", align 1
@mnttab_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64)* @unshare_unmount_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unshare_unmount_path(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat64, align 8
  %13 = alloca %struct.extmnttab, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.statfs, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @OP_SHARE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @stat64(i8* %27, %struct.stat64* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i8* @strerror(i32 %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* %32, i8* %33, i8* %34, i8* %36)
  store i32 1, i32* %5, align 4
  br label %228

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @statfs(i8* %41, %struct.statfs* %16)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %48)
  store i32 -1, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = call i32 @statfs2mnttab(%struct.statfs* %16, %struct.extmnttab* %13)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @OP_SHARE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* %60, i8* %61, i8* %62)
  store i32 1, i32* %5, align 4
  br label %228

64:                                               ; preds = %54
  %65 = load i32, i32* @stderr, align 4
  %66 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* %66, i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @umount2(i8* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i32, i32* @stderr, align 4
  %75 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i8* @strerror(i32 %77)
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* %75, i8* %76, i8* %78)
  br label %80

80:                                               ; preds = %73, %64
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %228

84:                                               ; preds = %50
  %85 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** @MNTTYPE_ZFS, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @stderr, align 4
  %92 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i8*, i8** %14, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* %92, i8* %93, i8* %94)
  store i32 1, i32* %5, align 4
  br label %228

96:                                               ; preds = %84
  %97 = load i32, i32* @g_zfs, align 4
  %98 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %101 = call i32* @zfs_open(i32 %97, i32 %99, i32 %100)
  store i32* %101, i32** %10, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  br label %228

104:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  %105 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @stat64(i8* %106, %struct.stat64* %12)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @errno, align 4
  %115 = call i8* @strerror(i32 %114)
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* %111, i8* %112, i8* %113, i8* %115)
  br label %222

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %125 = load i8*, i8** %14, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* %124, i8* %125, i8* %126)
  br label %222

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @OP_SHARE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %129
  %134 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %17, align 8
  %137 = alloca i8, i64 %135, align 16
  store i64 %135, i64* %18, align 8
  %138 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %139 = zext i32 %138 to i64
  %140 = alloca i8, i64 %139, align 16
  store i64 %139, i64* %19, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %143 = trunc i64 %135 to i32
  %144 = load i32, i32* @B_FALSE, align 4
  %145 = call i64 @zfs_prop_get(i32* %141, i32 %142, i8* %137, i32 %143, i32* null, i32* null, i32 0, i32 %144)
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @verify(i32 %147)
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %151 = trunc i64 %139 to i32
  %152 = load i32, i32* @B_FALSE, align 4
  %153 = call i64 @zfs_prop_get(i32* %149, i32 %150, i8* %140, i32 %151, i32* null, i32* null, i32 0, i32 %152)
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @verify(i32 %155)
  %157 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %133
  %160 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32, i32* @stderr, align 4
  %164 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* %164, i8* %165)
  br label %181

167:                                              ; preds = %159, %133
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @zfs_is_shared(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* @stderr, align 4
  %173 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* %173, i8* %174)
  br label %180

176:                                              ; preds = %167
  %177 = load i32*, i32** %10, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @zfs_unshareall_bypath(i32* %177, i8* %178)
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %176, %171
  br label %181

181:                                              ; preds = %180, %162
  %182 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %182)
  br label %221

183:                                              ; preds = %129
  %184 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %185 = zext i32 %184 to i64
  %186 = call i8* @llvm.stacksave()
  store i8* %186, i8** %20, align 8
  %187 = alloca i8, i64 %185, align 16
  store i64 %185, i64* %21, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %190 = trunc i64 %185 to i32
  %191 = load i32, i32* @B_FALSE, align 4
  %192 = call i64 @zfs_prop_get(i32* %188, i32 %189, i8* %187, i32 %190, i32* null, i32* null, i32 0, i32 %191)
  %193 = icmp eq i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @verify(i32 %194)
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %183
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @zfs_unmount(i32* %199, i32* null, i32 %200)
  store i32 %201, i32* %11, align 4
  br label %219

202:                                              ; preds = %183
  %203 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i32, i32* @stderr, align 4
  %207 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %208 = load i32*, i32** %10, align 8
  %209 = call i8* @zfs_get_name(i32* %208)
  %210 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* %207, i8* %209)
  %211 = load i32, i32* @stderr, align 4
  %212 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* %212)
  br label %218

214:                                              ; preds = %202
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @zfs_unmountall(i32* %215, i32 %216)
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %214, %205
  br label %219

219:                                              ; preds = %218, %198
  %220 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %220)
  br label %221

221:                                              ; preds = %219, %181
  br label %222

222:                                              ; preds = %221, %122, %109
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @zfs_close(i32* %223)
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i32
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %222, %103, %90, %80, %58, %30
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i64 @stat64(i8*, %struct.stat64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @statfs2mnttab(%struct.statfs*, %struct.extmnttab*) #1

declare dso_local i32 @umount2(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @zfs_open(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfs_is_shared(i32*) #1

declare dso_local i32 @zfs_unshareall_bypath(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zfs_unmount(i32*, i32*, i32) #1

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @zfs_unmountall(i32*, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
