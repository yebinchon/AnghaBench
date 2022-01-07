; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zprop_parse_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zprop_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i64 0, align 8
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"'%s' must be a string\00", align 1
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"'%s' is too long\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"'%s' must be a number\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i64 0, align 8
@ZFS_PROP_QUOTA = common dso_local global i32 0, align 4
@ZFS_PROP_REFQUOTA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"use 'none' to disable quota/refquota\00", align 1
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"'%s=auto' only allowed on volumes\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"'auto' is invalid value for '%s'\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"'%s' must be one of '%s'\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_parse_value(i32* %0, i32* %1, i32 %2, i64 %3, i32* %4, i8** %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @nvpair_type(i32* %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @B_FALSE, align 4
  store i32 %26, i32* %22, align 4
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %23, align 4
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @ZFS_TYPE_POOL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @zpool_prop_get_type(i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @zpool_prop_to_name(i32 %34)
  store i8* %35, i8** %20, align 8
  br label %41

36:                                               ; preds = %8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @zfs_prop_get_type(i32 %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i8* @zfs_prop_to_name(i32 %39)
  store i8* %40, i8** %20, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8**, i8*** %15, align 8
  store i8* null, i8** %42, align 8
  %43 = load i32*, i32** %16, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %19, align 4
  switch i32 %44, label %220 [
    i32 129, label %45
    i32 130, label %73
    i32 131, label %190
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @DATA_TYPE_STRING, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* @TEXT_DOMAIN, align 4
  %52 = call i32 @dgettext(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @nvpair_name(i32* %53)
  %55 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %50, i32 %52, i32 %54)
  br label %249

56:                                               ; preds = %45
  %57 = load i32*, i32** %11, align 8
  %58 = load i8**, i8*** %15, align 8
  %59 = call i32 @nvpair_value_string(i32* %57, i8** %58)
  %60 = load i8**, i8*** %15, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @TEXT_DOMAIN, align 4
  %68 = call i32 @dgettext(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @nvpair_name(i32* %69)
  %71 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %66, i32 %68, i32 %70)
  br label %249

72:                                               ; preds = %56
  br label %222

73:                                               ; preds = %41
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @DATA_TYPE_STRING, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @nvpair_value_string(i32* %78, i8** %21)
  %80 = load i8*, i8** %21, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @B_TRUE, align 4
  store i32 %84, i32* %22, align 4
  br label %100

85:                                               ; preds = %77
  %86 = load i8*, i8** %21, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @B_TRUE, align 4
  store i32 %90, i32* %23, align 4
  br label %99

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @zfs_nicestrtonum(i32* %92, i8* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %249

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99, %83
  br label %117

101:                                              ; preds = %73
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @nvpair_value_uint64(i32* %106, i32* %107)
  br label %116

109:                                              ; preds = %101
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* @TEXT_DOMAIN, align 4
  %112 = call i32 @dgettext(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @nvpair_name(i32* %113)
  %115 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %110, i32 %112, i32 %114)
  br label %249

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %100
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @ZFS_TYPE_DATASET, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = load i32, i32* %22, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @ZFS_PROP_REFQUOTA, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133, %129
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* @TEXT_DOMAIN, align 4
  %140 = call i32 @dgettext(i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %141 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %138, i32 %140)
  br label %249

142:                                              ; preds = %133, %126, %122, %117
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @ZFS_TYPE_DATASET, align 8
  %145 = and i64 %143, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @ZFS_PROP_FILESYSTEM_LIMIT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154, %150
  %159 = load i32, i32* @UINT64_MAX, align 4
  %160 = load i32*, i32** %16, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %154, %147, %142
  %162 = load i32, i32* %23, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  switch i32 %165, label %181 [
    i32 128, label %166
  ]

166:                                              ; preds = %164
  %167 = load i64, i64* %13, align 8
  %168 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %169 = and i64 %167, %168
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* @TEXT_DOMAIN, align 4
  %174 = call i32 @dgettext(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @nvpair_name(i32* %175)
  %177 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %172, i32 %174, i32 %176)
  br label %249

178:                                              ; preds = %166
  %179 = load i32, i32* @UINT64_MAX, align 4
  %180 = load i32*, i32** %16, align 8
  store i32 %179, i32* %180, align 4
  br label %188

181:                                              ; preds = %164
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* @TEXT_DOMAIN, align 4
  %184 = call i32 @dgettext(i32 %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @nvpair_name(i32* %185)
  %187 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %182, i32 %184, i32 %186)
  br label %249

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %161
  br label %222

190:                                              ; preds = %41
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @DATA_TYPE_STRING, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* @TEXT_DOMAIN, align 4
  %197 = call i32 @dgettext(i32 %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %198 = load i32*, i32** %11, align 8
  %199 = call i32 @nvpair_name(i32* %198)
  %200 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %195, i32 %197, i32 %199)
  br label %249

201:                                              ; preds = %190
  %202 = load i32*, i32** %11, align 8
  %203 = call i32 @nvpair_value_string(i32* %202, i8** %21)
  %204 = load i32, i32* %12, align 4
  %205 = load i8*, i8** %21, align 8
  %206 = load i32*, i32** %16, align 8
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @zprop_string_to_index(i32 %204, i8* %205, i32* %206, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %201
  %211 = load i32*, i32** %10, align 8
  %212 = load i32, i32* @TEXT_DOMAIN, align 4
  %213 = call i32 @dgettext(i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %214 = load i8*, i8** %20, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load i64, i64* %13, align 8
  %217 = call i32 @zprop_values(i32 %215, i64 %216)
  %218 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %211, i32 %213, i8* %214, i32 %217)
  br label %249

219:                                              ; preds = %201
  br label %222

220:                                              ; preds = %41
  %221 = call i32 (...) @abort() #3
  unreachable

222:                                              ; preds = %219, %189, %72
  %223 = load i8**, i8*** %15, align 8
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %237

226:                                              ; preds = %222
  %227 = load i32*, i32** %14, align 8
  %228 = load i8*, i8** %20, align 8
  %229 = load i8**, i8*** %15, align 8
  %230 = load i8*, i8** %229, align 8
  %231 = call i64 @nvlist_add_string(i32* %227, i8* %228, i8* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 @no_memory(i32* %234)
  store i32 -1, i32* %9, align 4
  br label %254

236:                                              ; preds = %226
  br label %248

237:                                              ; preds = %222
  %238 = load i32*, i32** %14, align 8
  %239 = load i8*, i8** %20, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @nvlist_add_uint64(i32* %238, i8* %239, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @no_memory(i32* %245)
  store i32 -1, i32* %9, align 4
  br label %254

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247, %236
  store i32 0, i32* %9, align 4
  br label %254

249:                                              ; preds = %210, %194, %181, %171, %137, %109, %97, %65, %49
  %250 = load i32*, i32** %10, align 8
  %251 = load i32, i32* @EZFS_BADPROP, align 4
  %252 = load i8*, i8** %17, align 8
  %253 = call i32 @zfs_error(i32* %250, i32 %251, i8* %252)
  store i32 -1, i32* %9, align 4
  br label %254

254:                                              ; preds = %249, %248, %244, %233
  %255 = load i32, i32* %9, align 4
  ret i32 %255
}

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @zpool_prop_get_type(i32) #1

declare dso_local i8* @zpool_prop_to_name(i32) #1

declare dso_local i32 @zfs_prop_get_type(i32) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_nicestrtonum(i32*, i8*, i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @zprop_string_to_index(i32, i8*, i32*, i64) #1

declare dso_local i32 @zprop_values(i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @no_memory(i32*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
