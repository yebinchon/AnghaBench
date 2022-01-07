; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_libzfs_error_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_libzfs_error_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid property value\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"read-only property\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"property doesn't apply to datasets of this type\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"property cannot be inherited\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"invalid quota or reservation\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"operation not applicable to datasets of this type\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pool or dataset is busy\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"pool or dataset exists\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"no such pool or dataset\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid backup stream\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"dataset is read-only\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"volume size exceeds limit for this system\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"invalid name\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"unable to restore to destination\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"backup failed\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"invalid target vdev\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"no such device in pool\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"invalid device\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"no valid replicas\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"currently resilvering\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"unsupported version or feature\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"pool is unavailable\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"too many devices in one vdev\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"must be an absolute path\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"operation crosses datasets or pools\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"dataset in use by local zone\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"mount failed\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"umount failed\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unshare(1M) failed\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"share(1M) failed\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"smb remove share failed\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"smb add share failed\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"bad address\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"signal received\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"device is reserved as a hot spare\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"invalid vdev configuration\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"recursive dataset dependency\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"no history available\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"failed to retrieve pool properties\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"operation not supported on this type of pool\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"invalid argument for this pool operation\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"dataset name is too long\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"disk capacity information could not be retrieved\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"write of label failed\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"invalid user/group\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"invalid permission\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"invalid permission set name\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"delegated administration is disabled on pool\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"invalid or missing cache file\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"device is in use as a cache\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"vdev specification is not supported\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"operation not supported on this dataset\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"pool has active shared spare device\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"log device has unplayed intent logs\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"no such tag on this dataset\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"tag already exists on this dataset\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"tag too long\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"pipe create failed\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"thread create failed\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"disk was split from this pool into a new one\00", align 1
@.str.65 = private unnamed_addr constant [45 x i8] c"scrub is paused; use 'zpool scrub' to resume\00", align 1
@.str.66 = private unnamed_addr constant [66 x i8] c"currently scrubbing; use 'zpool scrub -s' to cancel current scrub\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"there is no active scrub\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"unable to generate diffs\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"invalid diff data\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"pool is read-only\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"operation is not in progress\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"checkpoint exists\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"currently discarding checkpoint\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"checkpoint does not exist\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"device removal in progress\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"device exceeds supported size\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"argument list too long\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"currently initializing\00", align 1
@.str.79 = private unnamed_addr constant [34 x i8] c"there is no active initialization\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"no error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libzfs_error_description(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %271

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %262 [
    i32 168, label %19
    i32 201, label %22
    i32 150, label %25
    i32 148, label %28
    i32 151, label %31
    i32 149, label %34
    i32 197, label %37
    i32 194, label %40
    i32 185, label %43
    i32 170, label %46
    i32 199, label %49
    i32 186, label %52
    i32 129, label %55
    i32 180, label %58
    i32 200, label %61
    i32 207, label %64
    i32 198, label %67
    i32 171, label %70
    i32 205, label %73
    i32 167, label %76
    i32 144, label %79
    i32 196, label %82
    i32 155, label %85
    i32 191, label %88
    i32 204, label %91
    i32 192, label %94
    i32 128, label %97
    i32 175, label %100
    i32 136, label %103
    i32 133, label %106
    i32 141, label %109
    i32 132, label %112
    i32 140, label %115
    i32 159, label %118
    i32 166, label %121
    i32 184, label %124
    i32 179, label %127
    i32 182, label %130
    i32 177, label %133
    i32 181, label %136
    i32 147, label %139
    i32 169, label %142
    i32 157, label %145
    i32 153, label %148
    i32 154, label %151
    i32 174, label %154
    i32 160, label %157
    i32 173, label %160
    i32 176, label %163
    i32 195, label %166
    i32 203, label %169
    i32 202, label %172
    i32 172, label %175
    i32 206, label %178
    i32 178, label %181
    i32 131, label %184
    i32 165, label %187
    i32 208, label %190
    i32 134, label %193
    i32 145, label %196
    i32 146, label %199
    i32 139, label %202
    i32 158, label %205
    i32 138, label %208
    i32 152, label %211
    i32 142, label %214
    i32 143, label %217
    i32 161, label %220
    i32 189, label %223
    i32 188, label %226
    i32 156, label %229
    i32 162, label %232
    i32 193, label %235
    i32 187, label %238
    i32 164, label %241
    i32 190, label %244
    i32 130, label %247
    i32 137, label %250
    i32 183, label %253
    i32 163, label %256
    i32 135, label %259
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @TEXT_DOMAIN, align 4
  %21 = call i8* @dgettext(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %2, align 8
  br label %271

22:                                               ; preds = %15
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i8* @dgettext(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %271

25:                                               ; preds = %15
  %26 = load i32, i32* @TEXT_DOMAIN, align 4
  %27 = call i8* @dgettext(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** %2, align 8
  br label %271

28:                                               ; preds = %15
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %271

31:                                               ; preds = %15
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i8* @dgettext(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i8* %33, i8** %2, align 8
  br label %271

34:                                               ; preds = %15
  %35 = load i32, i32* @TEXT_DOMAIN, align 4
  %36 = call i8* @dgettext(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i8* %36, i8** %2, align 8
  br label %271

37:                                               ; preds = %15
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i8* %39, i8** %2, align 8
  br label %271

40:                                               ; preds = %15
  %41 = load i32, i32* @TEXT_DOMAIN, align 4
  %42 = call i8* @dgettext(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i8* %42, i8** %2, align 8
  br label %271

43:                                               ; preds = %15
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i8* @dgettext(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i8* %45, i8** %2, align 8
  br label %271

46:                                               ; preds = %15
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i8* @dgettext(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i8* %48, i8** %2, align 8
  br label %271

49:                                               ; preds = %15
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  store i8* %51, i8** %2, align 8
  br label %271

52:                                               ; preds = %15
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i8* @dgettext(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* %54, i8** %2, align 8
  br label %271

55:                                               ; preds = %15
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i8* @dgettext(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  store i8* %57, i8** %2, align 8
  br label %271

58:                                               ; preds = %15
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i8* @dgettext(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i8* %60, i8** %2, align 8
  br label %271

61:                                               ; preds = %15
  %62 = load i32, i32* @TEXT_DOMAIN, align 4
  %63 = call i8* @dgettext(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  store i8* %63, i8** %2, align 8
  br label %271

64:                                               ; preds = %15
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i8* @dgettext(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i8* %66, i8** %2, align 8
  br label %271

67:                                               ; preds = %15
  %68 = load i32, i32* @TEXT_DOMAIN, align 4
  %69 = call i8* @dgettext(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  store i8* %69, i8** %2, align 8
  br label %271

70:                                               ; preds = %15
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i8* @dgettext(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i8* %72, i8** %2, align 8
  br label %271

73:                                               ; preds = %15
  %74 = load i32, i32* @TEXT_DOMAIN, align 4
  %75 = call i8* @dgettext(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  store i8* %75, i8** %2, align 8
  br label %271

76:                                               ; preds = %15
  %77 = load i32, i32* @TEXT_DOMAIN, align 4
  %78 = call i8* @dgettext(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  store i8* %78, i8** %2, align 8
  br label %271

79:                                               ; preds = %15
  %80 = load i32, i32* @TEXT_DOMAIN, align 4
  %81 = call i8* @dgettext(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  store i8* %81, i8** %2, align 8
  br label %271

82:                                               ; preds = %15
  %83 = load i32, i32* @TEXT_DOMAIN, align 4
  %84 = call i8* @dgettext(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  store i8* %84, i8** %2, align 8
  br label %271

85:                                               ; preds = %15
  %86 = load i32, i32* @TEXT_DOMAIN, align 4
  %87 = call i8* @dgettext(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  store i8* %87, i8** %2, align 8
  br label %271

88:                                               ; preds = %15
  %89 = load i32, i32* @TEXT_DOMAIN, align 4
  %90 = call i8* @dgettext(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  store i8* %90, i8** %2, align 8
  br label %271

91:                                               ; preds = %15
  %92 = load i32, i32* @TEXT_DOMAIN, align 4
  %93 = call i8* @dgettext(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0))
  store i8* %93, i8** %2, align 8
  br label %271

94:                                               ; preds = %15
  %95 = load i32, i32* @TEXT_DOMAIN, align 4
  %96 = call i8* @dgettext(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  store i8* %96, i8** %2, align 8
  br label %271

97:                                               ; preds = %15
  %98 = load i32, i32* @TEXT_DOMAIN, align 4
  %99 = call i8* @dgettext(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  store i8* %99, i8** %2, align 8
  br label %271

100:                                              ; preds = %15
  %101 = load i32, i32* @TEXT_DOMAIN, align 4
  %102 = call i8* @dgettext(i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  store i8* %102, i8** %2, align 8
  br label %271

103:                                              ; preds = %15
  %104 = load i32, i32* @TEXT_DOMAIN, align 4
  %105 = call i8* @dgettext(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store i8* %105, i8** %2, align 8
  br label %271

106:                                              ; preds = %15
  %107 = load i32, i32* @TEXT_DOMAIN, align 4
  %108 = call i8* @dgettext(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  store i8* %108, i8** %2, align 8
  br label %271

109:                                              ; preds = %15
  %110 = load i32, i32* @TEXT_DOMAIN, align 4
  %111 = call i8* @dgettext(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  store i8* %111, i8** %2, align 8
  br label %271

112:                                              ; preds = %15
  %113 = load i32, i32* @TEXT_DOMAIN, align 4
  %114 = call i8* @dgettext(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  store i8* %114, i8** %2, align 8
  br label %271

115:                                              ; preds = %15
  %116 = load i32, i32* @TEXT_DOMAIN, align 4
  %117 = call i8* @dgettext(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  store i8* %117, i8** %2, align 8
  br label %271

118:                                              ; preds = %15
  %119 = load i32, i32* @TEXT_DOMAIN, align 4
  %120 = call i8* @dgettext(i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  store i8* %120, i8** %2, align 8
  br label %271

121:                                              ; preds = %15
  %122 = load i32, i32* @TEXT_DOMAIN, align 4
  %123 = call i8* @dgettext(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  store i8* %123, i8** %2, align 8
  br label %271

124:                                              ; preds = %15
  %125 = load i32, i32* @TEXT_DOMAIN, align 4
  %126 = call i8* @dgettext(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  store i8* %126, i8** %2, align 8
  br label %271

127:                                              ; preds = %15
  %128 = load i32, i32* @TEXT_DOMAIN, align 4
  %129 = call i8* @dgettext(i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  store i8* %129, i8** %2, align 8
  br label %271

130:                                              ; preds = %15
  %131 = load i32, i32* @TEXT_DOMAIN, align 4
  %132 = call i8* @dgettext(i32 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  store i8* %132, i8** %2, align 8
  br label %271

133:                                              ; preds = %15
  %134 = load i32, i32* @TEXT_DOMAIN, align 4
  %135 = call i8* @dgettext(i32 %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0))
  store i8* %135, i8** %2, align 8
  br label %271

136:                                              ; preds = %15
  %137 = load i32, i32* @TEXT_DOMAIN, align 4
  %138 = call i8* @dgettext(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0))
  store i8* %138, i8** %2, align 8
  br label %271

139:                                              ; preds = %15
  %140 = load i32, i32* @TEXT_DOMAIN, align 4
  %141 = call i8* @dgettext(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0))
  store i8* %141, i8** %2, align 8
  br label %271

142:                                              ; preds = %15
  %143 = load i32, i32* @TEXT_DOMAIN, align 4
  %144 = call i8* @dgettext(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  store i8* %144, i8** %2, align 8
  br label %271

145:                                              ; preds = %15
  %146 = load i32, i32* @TEXT_DOMAIN, align 4
  %147 = call i8* @dgettext(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0))
  store i8* %147, i8** %2, align 8
  br label %271

148:                                              ; preds = %15
  %149 = load i32, i32* @TEXT_DOMAIN, align 4
  %150 = call i8* @dgettext(i32 %149, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0))
  store i8* %150, i8** %2, align 8
  br label %271

151:                                              ; preds = %15
  %152 = load i32, i32* @TEXT_DOMAIN, align 4
  %153 = call i8* @dgettext(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0))
  store i8* %153, i8** %2, align 8
  br label %271

154:                                              ; preds = %15
  %155 = load i32, i32* @TEXT_DOMAIN, align 4
  %156 = call i8* @dgettext(i32 %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0))
  store i8* %156, i8** %2, align 8
  br label %271

157:                                              ; preds = %15
  %158 = load i32, i32* @TEXT_DOMAIN, align 4
  %159 = call i8* @dgettext(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i8* %159, i8** %2, align 8
  br label %271

160:                                              ; preds = %15
  %161 = load i32, i32* @TEXT_DOMAIN, align 4
  %162 = call i8* @dgettext(i32 %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i64 0, i64 0))
  store i8* %162, i8** %2, align 8
  br label %271

163:                                              ; preds = %15
  %164 = load i32, i32* @TEXT_DOMAIN, align 4
  %165 = call i8* @dgettext(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0))
  store i8* %165, i8** %2, align 8
  br label %271

166:                                              ; preds = %15
  %167 = load i32, i32* @TEXT_DOMAIN, align 4
  %168 = call i8* @dgettext(i32 %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  store i8* %168, i8** %2, align 8
  br label %271

169:                                              ; preds = %15
  %170 = load i32, i32* @TEXT_DOMAIN, align 4
  %171 = call i8* @dgettext(i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0))
  store i8* %171, i8** %2, align 8
  br label %271

172:                                              ; preds = %15
  %173 = load i32, i32* @TEXT_DOMAIN, align 4
  %174 = call i8* @dgettext(i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0))
  store i8* %174, i8** %2, align 8
  br label %271

175:                                              ; preds = %15
  %176 = load i32, i32* @TEXT_DOMAIN, align 4
  %177 = call i8* @dgettext(i32 %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i64 0, i64 0))
  store i8* %177, i8** %2, align 8
  br label %271

178:                                              ; preds = %15
  %179 = load i32, i32* @TEXT_DOMAIN, align 4
  %180 = call i8* @dgettext(i32 %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i64 0, i64 0))
  store i8* %180, i8** %2, align 8
  br label %271

181:                                              ; preds = %15
  %182 = load i32, i32* @TEXT_DOMAIN, align 4
  %183 = call i8* @dgettext(i32 %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0))
  store i8* %183, i8** %2, align 8
  br label %271

184:                                              ; preds = %15
  %185 = load i32, i32* @TEXT_DOMAIN, align 4
  %186 = call i8* @dgettext(i32 %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0))
  store i8* %186, i8** %2, align 8
  br label %271

187:                                              ; preds = %15
  %188 = load i32, i32* @TEXT_DOMAIN, align 4
  %189 = call i8* @dgettext(i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.56, i64 0, i64 0))
  store i8* %189, i8** %2, align 8
  br label %271

190:                                              ; preds = %15
  %191 = load i32, i32* @TEXT_DOMAIN, align 4
  %192 = call i8* @dgettext(i32 %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0))
  store i8* %192, i8** %2, align 8
  br label %271

193:                                              ; preds = %15
  %194 = load i32, i32* @TEXT_DOMAIN, align 4
  %195 = call i8* @dgettext(i32 %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i64 0, i64 0))
  store i8* %195, i8** %2, align 8
  br label %271

196:                                              ; preds = %15
  %197 = load i32, i32* @TEXT_DOMAIN, align 4
  %198 = call i8* @dgettext(i32 %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.59, i64 0, i64 0))
  store i8* %198, i8** %2, align 8
  br label %271

199:                                              ; preds = %15
  %200 = load i32, i32* @TEXT_DOMAIN, align 4
  %201 = call i8* @dgettext(i32 %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0))
  store i8* %201, i8** %2, align 8
  br label %271

202:                                              ; preds = %15
  %203 = load i32, i32* @TEXT_DOMAIN, align 4
  %204 = call i8* @dgettext(i32 %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0))
  store i8* %204, i8** %2, align 8
  br label %271

205:                                              ; preds = %15
  %206 = load i32, i32* @TEXT_DOMAIN, align 4
  %207 = call i8* @dgettext(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0))
  store i8* %207, i8** %2, align 8
  br label %271

208:                                              ; preds = %15
  %209 = load i32, i32* @TEXT_DOMAIN, align 4
  %210 = call i8* @dgettext(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0))
  store i8* %210, i8** %2, align 8
  br label %271

211:                                              ; preds = %15
  %212 = load i32, i32* @TEXT_DOMAIN, align 4
  %213 = call i8* @dgettext(i32 %212, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.64, i64 0, i64 0))
  store i8* %213, i8** %2, align 8
  br label %271

214:                                              ; preds = %15
  %215 = load i32, i32* @TEXT_DOMAIN, align 4
  %216 = call i8* @dgettext(i32 %215, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.65, i64 0, i64 0))
  store i8* %216, i8** %2, align 8
  br label %271

217:                                              ; preds = %15
  %218 = load i32, i32* @TEXT_DOMAIN, align 4
  %219 = call i8* @dgettext(i32 %218, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.66, i64 0, i64 0))
  store i8* %219, i8** %2, align 8
  br label %271

220:                                              ; preds = %15
  %221 = load i32, i32* @TEXT_DOMAIN, align 4
  %222 = call i8* @dgettext(i32 %221, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0))
  store i8* %222, i8** %2, align 8
  br label %271

223:                                              ; preds = %15
  %224 = load i32, i32* @TEXT_DOMAIN, align 4
  %225 = call i8* @dgettext(i32 %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i64 0, i64 0))
  store i8* %225, i8** %2, align 8
  br label %271

226:                                              ; preds = %15
  %227 = load i32, i32* @TEXT_DOMAIN, align 4
  %228 = call i8* @dgettext(i32 %227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0))
  store i8* %228, i8** %2, align 8
  br label %271

229:                                              ; preds = %15
  %230 = load i32, i32* @TEXT_DOMAIN, align 4
  %231 = call i8* @dgettext(i32 %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0))
  store i8* %231, i8** %2, align 8
  br label %271

232:                                              ; preds = %15
  %233 = load i32, i32* @TEXT_DOMAIN, align 4
  %234 = call i8* @dgettext(i32 %233, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0))
  store i8* %234, i8** %2, align 8
  br label %271

235:                                              ; preds = %15
  %236 = load i32, i32* @TEXT_DOMAIN, align 4
  %237 = call i8* @dgettext(i32 %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0))
  store i8* %237, i8** %2, align 8
  br label %271

238:                                              ; preds = %15
  %239 = load i32, i32* @TEXT_DOMAIN, align 4
  %240 = call i8* @dgettext(i32 %239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0))
  store i8* %240, i8** %2, align 8
  br label %271

241:                                              ; preds = %15
  %242 = load i32, i32* @TEXT_DOMAIN, align 4
  %243 = call i8* @dgettext(i32 %242, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i64 0, i64 0))
  store i8* %243, i8** %2, align 8
  br label %271

244:                                              ; preds = %15
  %245 = load i32, i32* @TEXT_DOMAIN, align 4
  %246 = call i8* @dgettext(i32 %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0))
  store i8* %246, i8** %2, align 8
  br label %271

247:                                              ; preds = %15
  %248 = load i32, i32* @TEXT_DOMAIN, align 4
  %249 = call i8* @dgettext(i32 %248, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0))
  store i8* %249, i8** %2, align 8
  br label %271

250:                                              ; preds = %15
  %251 = load i32, i32* @TEXT_DOMAIN, align 4
  %252 = call i8* @dgettext(i32 %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0))
  store i8* %252, i8** %2, align 8
  br label %271

253:                                              ; preds = %15
  %254 = load i32, i32* @TEXT_DOMAIN, align 4
  %255 = call i8* @dgettext(i32 %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i64 0, i64 0))
  store i8* %255, i8** %2, align 8
  br label %271

256:                                              ; preds = %15
  %257 = load i32, i32* @TEXT_DOMAIN, align 4
  %258 = call i8* @dgettext(i32 %257, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.79, i64 0, i64 0))
  store i8* %258, i8** %2, align 8
  br label %271

259:                                              ; preds = %15
  %260 = load i32, i32* @TEXT_DOMAIN, align 4
  %261 = call i8* @dgettext(i32 %260, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i64 0, i64 0))
  store i8* %261, i8** %2, align 8
  br label %271

262:                                              ; preds = %15
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert(i32 %267)
  %269 = load i32, i32* @TEXT_DOMAIN, align 4
  %270 = call i8* @dgettext(i32 %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0))
  store i8* %270, i8** %2, align 8
  br label %271

271:                                              ; preds = %262, %259, %256, %253, %250, %247, %244, %241, %238, %235, %232, %229, %226, %223, %220, %217, %214, %211, %208, %205, %202, %199, %196, %193, %190, %187, %184, %181, %178, %175, %172, %169, %166, %163, %160, %157, %154, %151, %148, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %11
  %272 = load i8*, i8** %2, align 8
  ret i8* %272
}

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
