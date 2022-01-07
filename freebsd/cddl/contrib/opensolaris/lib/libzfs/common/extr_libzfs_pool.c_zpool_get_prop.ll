; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%llu%%\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"%llu.%02llux\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_prop(%struct.TYPE_10__* %0, i32 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = call i64 @zpool_get_state(%struct.TYPE_10__* %21)
  %23 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %64 [
    i32 130, label %27
    i32 132, label %33
    i32 133, label %39
    i32 144, label %47
    i32 142, label %47
    i32 139, label %47
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = call i8* @zpool_get_name(%struct.TYPE_10__* %29)
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @strlcpy(i8* %28, i8* %30, i64 %31)
  br label %68

33:                                               ; preds = %25
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %36 = call i8* @zpool_pool_state_to_name(i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @strlcpy(i8* %34, i8* %36, i64 %37)
  br label %68

39:                                               ; preds = %25
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @zpool_get_prop_int(%struct.TYPE_10__* %40, i32 %41, i32* %16)
  store i32 %42, i32* %14, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %68

47:                                               ; preds = %25, %25, %25
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = call i64 @zpool_get_all_props(%struct.TYPE_10__* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %47
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @zpool_get_prop_string(%struct.TYPE_10__* %58, i32 %59, i32* %16)
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @strlcpy(i8* %57, i8* %60, i64 %61)
  br label %68

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %25, %63
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @strlcpy(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %56, %39, %33, %27
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  store i32 0, i32* %7, align 4
  br label %236

75:                                               ; preds = %6
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = call i64 @zpool_get_all_props(%struct.TYPE_10__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 130
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 -1, i32* %7, align 4
  br label %236

88:                                               ; preds = %84, %80, %75
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @zpool_prop_get_type(i32 %89)
  switch i32 %90, label %227 [
    i32 146, label %91
    i32 147, label %98
    i32 148, label %213
  ]

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i8* @zpool_get_prop_string(%struct.TYPE_10__* %93, i32 %94, i32* %16)
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @strlcpy(i8* %92, i8* %95, i64 %96)
  br label %229

98:                                               ; preds = %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @zpool_get_prop_int(%struct.TYPE_10__* %99, i32 %100, i32* %16)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %207 [
    i32 129, label %103
    i32 145, label %103
    i32 135, label %103
    i32 134, label %103
    i32 131, label %103
    i32 143, label %117
    i32 137, label %117
    i32 140, label %117
    i32 141, label %139
    i32 136, label %153
    i32 138, label %167
    i32 132, label %175
    i32 128, label %198
  ]

103:                                              ; preds = %98, %98, %98, %98, %98
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %107, i64 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %116

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @zfs_nicenum(i32 %112, i8* %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %212

117:                                              ; preds = %98, %98, %98
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i8*, i8** %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @strlcpy(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %138

124:                                              ; preds = %117
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i8*, i8** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %128, i64 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %137

132:                                              ; preds = %124
  %133 = load i32, i32* %14, align 4
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 @zfs_nicenum(i32 %133, i8* %134, i64 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %120
  br label %212

139:                                              ; preds = %98
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i8*, i8** %10, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %143, i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %145)
  br label %152

147:                                              ; preds = %139
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %148, i64 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %147, %142
  br label %212

153:                                              ; preds = %98
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @UINT64_MAX, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i8*, i8** %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @strlcpy(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %159)
  br label %166

161:                                              ; preds = %153
  %162 = load i8*, i8** %10, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %162, i64 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %157
  br label %212

167:                                              ; preds = %98
  %168 = load i8*, i8** %10, align 8
  %169 = load i64, i64* %11, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sdiv i32 %170, 100
  %172 = load i32, i32* %14, align 4
  %173 = srem i32 %172, 100
  %174 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %168, i64 %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %173)
  br label %212

175:                                              ; preds = %98
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %177 = call i32 @zpool_get_config(%struct.TYPE_10__* %176, i32* null)
  %178 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %179 = call i32 @nvlist_lookup_nvlist(i32 %177, i32 %178, i32** %17)
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @verify(i32 %181)
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %185 = bitcast %struct.TYPE_11__** %18 to i32**
  %186 = call i32 @nvlist_lookup_uint64_array(i32* %183, i32 %184, i32** %185, i32* %19)
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @verify(i32 %188)
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @zpool_state_to_name(i32 %191, i32 %194)
  %196 = load i64, i64* %11, align 8
  %197 = call i32 @strlcpy(i8* %190, i8* %195, i64 %196)
  br label %212

198:                                              ; preds = %98
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @SPA_VERSION_FEATURES, align 4
  %201 = icmp sge i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i8*, i8** %10, align 8
  %204 = load i64, i64* %11, align 8
  %205 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %203, i64 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %212

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %98, %206
  %208 = load i8*, i8** %10, align 8
  %209 = load i64, i64* %11, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %208, i64 %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %207, %202, %175, %167, %166, %152, %138, %116
  br label %229

213:                                              ; preds = %88
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @zpool_get_prop_int(%struct.TYPE_10__* %214, i32 %215, i32* %16)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @zpool_prop_index_to_string(i32 %217, i32 %218, i8** %15)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 -1, i32* %7, align 4
  br label %236

222:                                              ; preds = %213
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %15, align 8
  %225 = load i64, i64* %11, align 8
  %226 = call i32 @strlcpy(i8* %223, i8* %224, i64 %225)
  br label %229

227:                                              ; preds = %88
  %228 = call i32 (...) @abort() #3
  unreachable

229:                                              ; preds = %222, %212, %91
  %230 = load i32*, i32** %12, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %16, align 4
  %234 = load i32*, i32** %12, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %229
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %235, %221, %87, %74
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i64 @zpool_get_state(%struct.TYPE_10__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @zpool_get_name(%struct.TYPE_10__*) #1

declare dso_local i8* @zpool_pool_state_to_name(i64) #1

declare dso_local i32 @zpool_get_prop_int(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @zpool_get_all_props(%struct.TYPE_10__*) #1

declare dso_local i8* @zpool_get_prop_string(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @zpool_prop_get_type(i32) #1

declare dso_local i32 @zfs_nicenum(i32, i8*, i64) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i32 @zpool_get_config(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @nvlist_lookup_uint64_array(i32*, i32, i32**, i32*) #1

declare dso_local i8* @zpool_state_to_name(i32, i32) #1

declare dso_local i32 @zpool_prop_index_to_string(i32, i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
