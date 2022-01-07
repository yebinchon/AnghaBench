; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_show_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_show_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"   pool: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"     id: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  state: %s\00", align 1
@POOL_STATE_DESTROYED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" (DESTROYED)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c" status: One or more devices are missing from the system.\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c" status: One or more devices contains corrupted data.\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c" status: The pool data is corrupted.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c" status: One or more devices are offlined.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c" status: The pool metadata is corrupted.\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c" status: The pool is formatted using a legacy on-disk version.\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c" status: The pool is formatted using an incompatible version.\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c" status: Some supported features are not enabled on the pool.\0A\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"status: The pool uses the following feature(s) not supported on this system:\0A\00", align 1
@.str.14 = private unnamed_addr constant [187 x i8] c"status: The pool can only be accessed in read-only mode on this system. It\0A\09cannot be accessed in read-write mode because it uses the following\0A\09feature(s) not supported on this system:\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c" status: The pool was last accessed by another system.\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c" status: One or more devices are faulted.\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c" status: An intent log record cannot be read.\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c" status: One or more devices were being resilvered.\0A\00", align 1
@.str.19 = private unnamed_addr constant [106 x i8] c"status: One or more devices were configured to use a non-native block size.\0A\09Expect reduced performance.\0A\00", align 1
@ZPOOL_STATUS_OK = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [154 x i8] c" action: The pool can be imported using its name or numeric identifier, though\0A\09some features will not be available without an explicit 'zpool upgrade'.\0A\00", align 1
@.str.21 = private unnamed_addr constant [92 x i8] c" action: The pool can be imported using its name or numeric identifier and\0A\09the '-f' flag.\0A\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c" action: The pool can be imported using its name or numeric identifier.\0A\00", align 1
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [137 x i8] c" action: The pool can be imported despite missing or damaged devices.  The\0A\09fault tolerance of the pool may be compromised if imported.\0A\00", align 1
@.str.24 = private unnamed_addr constant [127 x i8] c" action: The pool cannot be imported.  Access the pool on a system running newer\0A\09software, or recreate the pool from backup.\0A\00", align 1
@.str.25 = private unnamed_addr constant [140 x i8] c"action: The pool cannot be imported. Access the pool on a system that supports\0A\09the required feature(s), or recreate the pool from backup.\0A\00", align 1
@.str.26 = private unnamed_addr constant [199 x i8] c"action: The pool cannot be imported in read-write mode. Import the pool with\0A\09\22-o readonly=on\22, access the pool on a system that supports the\0A\09required feature(s), or recreate the pool from backup.\0A\00", align 1
@.str.27 = private unnamed_addr constant [82 x i8] c" action: The pool cannot be imported. Attach the missing\0A\09devices and try again.\0A\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c" action: The pool cannot be imported due to damaged devices or data.\0A\00", align 1
@ZPOOL_CONFIG_COMMENT = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"comment: %s\0A\00", align 1
@VDEV_STATE_CLOSED = common dso_local global i64 0, align 8
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_AUX_CORRUPT_DATA = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [69 x i8] c"\09The pool was destroyed, but can be imported using the '-Df' flags.\0A\00", align 1
@POOL_STATE_EXPORTED = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [86 x i8] c"\09The pool may be active on another system, but can be imported using\0A\09the '-f' flag.\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"   see: http://illumos.org/msg/%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" config:\0A\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [113 x i8] c"\0A\09Additional devices are known to be part of this pool, though their\0A\09exact configuration cannot be determined.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_import(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %16 = call i64 @nvlist_lookup_string(i32* %14, i32 %15, i8** %5)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @verify(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %22 = call i64 @nvlist_lookup_uint64(i32* %20, i32 %21, i64* %6)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @verify(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %28 = call i64 @nvlist_lookup_uint64(i32* %26, i32 %27, i64* %3)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %34 = call i64 @nvlist_lookup_nvlist(i32* %32, i32 %33, i32** %8)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @verify(i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %40 = bitcast %struct.TYPE_2__** %4 to i64**
  %41 = call i64 @nvlist_lookup_uint64_array(i32* %38, i32 %39, i64** %40, i32* %11)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @verify(i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @zpool_state_to_name(i64 %47, i64 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @zpool_import_status(i32* %52, i8** %7)
  store i32 %53, i32* %9, align 4
  %54 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @printf(i8* %54, i8* %55)
  %57 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, ...) @printf(i8* %57, i32 %59)
  %61 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 (i8*, ...) @printf(i8* %61, i8* %62)
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @POOL_STATE_DESTROYED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %1
  %68 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 (i8*, ...) @printf(i8* %68)
  br label %70

70:                                               ; preds = %67, %1
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %122 [
    i32 135, label %73
    i32 136, label %73
    i32 146, label %73
    i32 142, label %76
    i32 143, label %76
    i32 144, label %79
    i32 133, label %82
    i32 141, label %85
    i32 128, label %88
    i32 129, label %91
    i32 138, label %94
    i32 131, label %97
    i32 130, label %102
    i32 137, label %107
    i32 139, label %110
    i32 140, label %110
    i32 145, label %113
    i32 132, label %116
    i32 134, label %119
  ]

73:                                               ; preds = %70, %70, %70
  %74 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @printf(i8* %74)
  br label %128

76:                                               ; preds = %70, %70
  %77 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @printf(i8* %77)
  br label %128

79:                                               ; preds = %70
  %80 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* %80)
  br label %128

82:                                               ; preds = %70
  %83 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* %83)
  br label %128

85:                                               ; preds = %70
  %86 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* %86)
  br label %128

88:                                               ; preds = %70
  %89 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* %89)
  br label %128

91:                                               ; preds = %70
  %92 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* %92)
  br label %128

94:                                               ; preds = %70
  %95 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* %95)
  br label %128

97:                                               ; preds = %70
  %98 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @zpool_print_unsup_feat(i32* %100)
  br label %128

102:                                              ; preds = %70
  %103 = call i8* @gettext(i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.14, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @zpool_print_unsup_feat(i32* %105)
  br label %128

107:                                              ; preds = %70
  %108 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @printf(i8* %108)
  br label %128

110:                                              ; preds = %70, %70
  %111 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @printf(i8* %111)
  br label %128

113:                                              ; preds = %70
  %114 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  %115 = call i32 (i8*, ...) @printf(i8* %114)
  br label %128

116:                                              ; preds = %70
  %117 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @printf(i8* %117)
  br label %128

119:                                              ; preds = %70
  %120 = call i8* @gettext(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.19, i64 0, i64 0))
  %121 = call i32 (i8*, ...) @printf(i8* %120)
  br label %128

122:                                              ; preds = %70
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ZPOOL_STATUS_OK, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %122, %119, %116, %113, %110, %107, %102, %97, %94, %91, %88, %85, %82, %79, %76, %73
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 138
  br i1 %139, label %140, label %143

140:                                              ; preds = %137, %134
  %141 = call i8* @gettext(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.20, i64 0, i64 0))
  %142 = call i32 (i8*, ...) @printf(i8* %141)
  br label %153

143:                                              ; preds = %137
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 137
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.21, i64 0, i64 0))
  %148 = call i32 (i8*, ...) @printf(i8* %147)
  br label %152

149:                                              ; preds = %143
  %150 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.22, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @printf(i8* %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %140
  br label %182

154:                                              ; preds = %128
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = call i8* @gettext(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.23, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @printf(i8* %161)
  br label %181

163:                                              ; preds = %154
  %164 = load i32, i32* %9, align 4
  switch i32 %164, label %177 [
    i32 129, label %165
    i32 131, label %168
    i32 130, label %171
    i32 135, label %174
    i32 136, label %174
    i32 146, label %174
  ]

165:                                              ; preds = %163
  %166 = call i8* @gettext(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.24, i64 0, i64 0))
  %167 = call i32 (i8*, ...) @printf(i8* %166)
  br label %180

168:                                              ; preds = %163
  %169 = call i8* @gettext(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.25, i64 0, i64 0))
  %170 = call i32 (i8*, ...) @printf(i8* %169)
  br label %180

171:                                              ; preds = %163
  %172 = call i8* @gettext(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.26, i64 0, i64 0))
  %173 = call i32 (i8*, ...) @printf(i8* %172)
  br label %180

174:                                              ; preds = %163, %163, %163
  %175 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.27, i64 0, i64 0))
  %176 = call i32 (i8*, ...) @printf(i8* %175)
  br label %180

177:                                              ; preds = %163
  %178 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0))
  %179 = call i32 (i8*, ...) @printf(i8* %178)
  br label %180

180:                                              ; preds = %177, %174, %171, %168, %165
  br label %181

181:                                              ; preds = %180, %160
  br label %182

182:                                              ; preds = %181, %153
  %183 = load i32*, i32** %2, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_COMMENT, align 4
  %185 = call i64 @nvlist_lookup_string(i32* %183, i32 %184, i8** %13)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 (i8*, ...) @printf(i8* %188, i8* %189)
  br label %191

191:                                              ; preds = %187, %182
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %197, %191
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @VDEV_AUX_CORRUPT_DATA, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %203
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* @POOL_STATE_DESTROYED, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call i8* @gettext(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0))
  %215 = call i32 (i8*, ...) @printf(i8* %214)
  br label %224

216:                                              ; preds = %209
  %217 = load i64, i64* %3, align 8
  %218 = load i64, i64* @POOL_STATE_EXPORTED, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = call i8* @gettext(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.31, i64 0, i64 0))
  %222 = call i32 (i8*, ...) @printf(i8* %221)
  br label %223

223:                                              ; preds = %220, %216
  br label %224

224:                                              ; preds = %223, %213
  br label %225

225:                                              ; preds = %224, %203, %197
  %226 = load i8*, i8** %7, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  %230 = load i8*, i8** %7, align 8
  %231 = call i32 (i8*, ...) @printf(i8* %229, i8* %230)
  br label %232

232:                                              ; preds = %228, %225
  %233 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %234 = call i32 (i8*, ...) @printf(i8* %233)
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @max_width(i32* null, i32* %235, i32 0, i32 0)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp slt i32 %237, 10
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  store i32 10, i32* %12, align 4
  br label %240

240:                                              ; preds = %239, %232
  %241 = load i8*, i8** %5, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @print_import_config(i8* %241, i32* %242, i32 %243, i32 0)
  %245 = load i32*, i32** %8, align 8
  %246 = call i64 @num_logs(i32* %245)
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load i32*, i32** %8, align 8
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* @B_FALSE, align 4
  %252 = call i32 @print_logs(i32* null, i32* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %240
  %254 = load i32, i32* %9, align 4
  %255 = icmp eq i32 %254, 146
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = call i8* @gettext(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.34, i64 0, i64 0))
  %258 = call i32 (i8*, ...) @printf(i8* %257)
  br label %259

259:                                              ; preds = %256, %253
  ret void
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i32*) #1

declare dso_local i8* @zpool_state_to_name(i64, i64) #1

declare dso_local i32 @zpool_import_status(i32*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zpool_print_unsup_feat(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @max_width(i32*, i32*, i32, i32) #1

declare dso_local i32 @print_import_config(i8*, i32*, i32, i32) #1

declare dso_local i64 @num_logs(i32*) #1

declare dso_local i32 @print_logs(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
