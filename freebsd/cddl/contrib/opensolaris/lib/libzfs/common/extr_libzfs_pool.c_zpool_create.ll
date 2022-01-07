; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_VERSION_1 = common dso_local global i32 0, align 4
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_ROOTFS_PROPS = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_CREATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"one or more vdevs refer to the same device\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"record size invalid\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@SPA_MINDEVSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"one or more devices is less than the minimum size (%s)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"one or more devices is out of space\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"cache device must be a disk or disk slice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_create(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca [64 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 -1, i32* %16, align 4
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i8* @dgettext(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @snprintf(i8* %22, i32 1024, i8* %24, i8* %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @zpool_name_valid(i32* %27, i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %5
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %36 = call i32 @zfs_error(i32* %33, i32 %34, i8* %35)
  store i32 %36, i32* %6, align 4
  br label %189

37:                                               ; preds = %5
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @zcmd_write_conf_nvlist(i32* %38, %struct.TYPE_8__* %12, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %189

43:                                               ; preds = %37
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %48 = load i32, i32* @B_FALSE, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %50 = load i32, i32* @B_TRUE, align 4
  store i32 %50, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @SPA_VERSION_1, align 4
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %56 = bitcast %struct.TYPE_9__* %17 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32* @zpool_valid_proplist(i32* %51, i8* %52, i32* %53, i32 %54, i64 %57, i8* %55)
  store i32* %58, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %182

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %68 = call i32 @zfs_prop_to_name(i32 %67)
  %69 = call i64 @nvlist_lookup_string(i32* %66, i32 %68, i8** %19)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %19, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i1 [ false, %65 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %18, align 4
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %83 = call i32* @zfs_valid_proplist(i32* %78, i32 %79, i32* %80, i32 %81, i32* null, i32* null, i8* %82)
  store i32* %83, i32** %13, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %182

86:                                               ; preds = %75
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %91 = call i64 @nvlist_alloc(i32** %14, i32 %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %182

94:                                               ; preds = %89, %86
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = call i64 @nvlist_add_nvlist(i32* %95, i32 %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %182

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %62
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i64 @zcmd_write_src_nvlist(i32* %106, %struct.TYPE_8__* %12, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %182

111:                                              ; preds = %105, %102
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strlcpy(i32 %113, i8* %114, i32 4)
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @ZFS_IOC_POOL_CREATE, align 4
  %118 = call i32 @zfs_ioctl(i32* %116, i32 %117, %struct.TYPE_8__* %12)
  store i32 %118, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %181

120:                                              ; preds = %111
  %121 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %12)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @nvlist_free(i32* %122)
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @nvlist_free(i32* %124)
  %126 = load i32, i32* @errno, align 4
  switch i32 %126, label %176 [
    i32 132, label %127
    i32 128, label %136
    i32 129, label %145
    i32 131, label %158
    i32 130, label %167
  ]

127:                                              ; preds = %120
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* @TEXT_DOMAIN, align 4
  %130 = call i8* @dgettext(i32 %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %131 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %128, i8* %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* @EZFS_BADDEV, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %135 = call i32 @zfs_error(i32* %132, i32 %133, i8* %134)
  store i32 %135, i32* %6, align 4
  br label %189

136:                                              ; preds = %120
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* @TEXT_DOMAIN, align 4
  %139 = call i8* @dgettext(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %140 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %137, i8* %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @EZFS_BADPROP, align 4
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %144 = call i32 @zfs_error(i32* %141, i32 %142, i8* %143)
  store i32 %144, i32* %6, align 4
  br label %189

145:                                              ; preds = %120
  %146 = load i32, i32* @SPA_MINDEVSIZE, align 4
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %148 = call i32 @zfs_nicenum(i32 %146, i8* %147, i32 64)
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* @TEXT_DOMAIN, align 4
  %151 = call i8* @dgettext(i32 %150, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %153 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %149, i8* %151, i8* %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @EZFS_BADDEV, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %157 = call i32 @zfs_error(i32* %154, i32 %155, i8* %156)
  store i32 %157, i32* %6, align 4
  br label %189

158:                                              ; preds = %120
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* @TEXT_DOMAIN, align 4
  %161 = call i8* @dgettext(i32 %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %162 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %159, i8* %161)
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* @EZFS_BADDEV, align 4
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %166 = call i32 @zfs_error(i32* %163, i32 %164, i8* %165)
  store i32 %166, i32* %6, align 4
  br label %189

167:                                              ; preds = %120
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* @TEXT_DOMAIN, align 4
  %170 = call i8* @dgettext(i32 %169, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %171 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %168, i8* %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* @EZFS_BADDEV, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %175 = call i32 @zfs_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %6, align 4
  br label %189

176:                                              ; preds = %120
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* @errno, align 4
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %180 = call i32 @zpool_standard_error(i32* %177, i32 %178, i8* %179)
  store i32 %180, i32* %6, align 4
  br label %189

181:                                              ; preds = %111
  br label %182

182:                                              ; preds = %181, %110, %100, %93, %85, %60
  %183 = call i32 @zcmd_free_nvlists(%struct.TYPE_8__* %12)
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @nvlist_free(i32* %184)
  %186 = load i32*, i32** %13, align 8
  %187 = call i32 @nvlist_free(i32* %186)
  %188 = load i32, i32* %16, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %182, %176, %167, %158, %145, %136, %127, %42, %32
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i32, i64, i8*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, i32*, i32*, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_8__*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
