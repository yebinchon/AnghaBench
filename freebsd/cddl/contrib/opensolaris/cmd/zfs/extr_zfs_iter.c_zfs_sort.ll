; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_iter.c_zfs_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_iter.c_zfs_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @zfs_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_sort(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %11, align 8
  br label %38

38:                                               ; preds = %225, %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %229

41:                                               ; preds = %38
  %42 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %14, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZPROP_INVAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %41
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @zfs_get_user_props(i32* %55)
  store i32* %56, i32** %22, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @zfs_get_user_props(i32* %57)
  store i32* %58, i32** %23, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @nvlist_lookup_nvlist(i32* %59, i32 %62, i32** %24)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32*, i32** %23, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @nvlist_lookup_nvlist(i32* %66, i32 %69, i32** %25)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %54
  %76 = load i32*, i32** %24, align 8
  %77 = load i32, i32* @ZPROP_VALUE, align 4
  %78 = call i64 @nvlist_lookup_string(i32* %76, i32 %77, i8** %15)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @verify(i32 %80)
  br label %82

82:                                               ; preds = %75, %54
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %25, align 8
  %87 = load i32, i32* @ZPROP_VALUE, align 4
  %88 = call i64 @nvlist_lookup_string(i32* %86, i32 %87, i8** %16)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  br label %92

92:                                               ; preds = %85, %82
  br label %168

93:                                               ; preds = %41
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZFS_PROP_NAME, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load i64, i64* @B_TRUE, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %20, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @zfs_get_name(i32* %102)
  %104 = trunc i64 %43 to i32
  %105 = call i32 @strlcpy(i8* %45, i32 %103, i32 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @zfs_get_name(i32* %106)
  %108 = trunc i64 %47 to i32
  %109 = call i32 @strlcpy(i8* %48, i32 %107, i32 %108)
  store i8* %45, i8** %15, align 8
  store i8* %48, i8** %16, align 8
  br label %167

110:                                              ; preds = %93
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @zfs_prop_is_string(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %43 to i32
  %122 = load i64, i64* @B_TRUE, align 8
  %123 = call i64 @zfs_prop_get(i32* %117, i64 %120, i8* %45, i32 %121, i32* null, i32* null, i32 0, i64 %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %19, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %47 to i32
  %131 = load i64, i64* @B_TRUE, align 8
  %132 = call i64 @zfs_prop_get(i32* %126, i64 %129, i8* %48, i32 %130, i32* null, i32* null, i32 0, i64 %131)
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %20, align 4
  store i8* %45, i8** %15, align 8
  store i8* %48, i8** %16, align 8
  br label %166

135:                                              ; preds = %110
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @zfs_get_type(i32* %139)
  %141 = call i32 @zfs_prop_valid_for_type(i64 %138, i32 %140)
  store i32 %141, i32* %19, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @zfs_get_type(i32* %145)
  %147 = call i32 @zfs_prop_valid_for_type(i64 %144, i32 %146)
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load i32*, i32** %8, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @zfs_prop_get_numeric(i32* %151, i64 %154, i64* %17, i32* null, i32* null, i32 0)
  br label %156

156:                                              ; preds = %150, %135
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @zfs_prop_get_numeric(i32* %160, i64 %163, i64* %18, i32* null, i32* null, i32 0)
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %116
  br label %167

167:                                              ; preds = %166, %99
  br label %168

168:                                              ; preds = %167, %92
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %20, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  store i32 4, i32* %26, align 4
  br label %221

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i32 1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %221

179:                                              ; preds = %175
  %180 = load i32, i32* %20, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %221

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load i8*, i8** %15, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** %15, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = call i32 @strcmp(i8* %189, i8* %190)
  store i32 %191, i32* %21, align 4
  br label %204

192:                                              ; preds = %185
  %193 = load i64, i64* %17, align 8
  %194 = load i64, i64* %18, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 -1, i32* %21, align 4
  br label %203

197:                                              ; preds = %192
  %198 = load i64, i64* %17, align 8
  %199 = load i64, i64* %18, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 1, i32* %21, align 4
  br label %202

202:                                              ; preds = %201, %197
  br label %203

203:                                              ; preds = %202, %196
  br label %204

204:                                              ; preds = %203, %188
  %205 = load i32, i32* %21, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %204
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @B_TRUE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load i32, i32* %21, align 4
  %215 = icmp slt i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 -1
  store i32 %217, i32* %21, align 4
  br label %218

218:                                              ; preds = %213, %207
  %219 = load i32, i32* %21, align 4
  store i32 %219, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %221

220:                                              ; preds = %204
  store i32 0, i32* %26, align 4
  br label %221

221:                                              ; preds = %220, %218, %182, %178, %174
  %222 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %26, align 4
  switch i32 %223, label %235 [
    i32 0, label %224
    i32 4, label %225
    i32 1, label %233
  ]

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %224, %221
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  store %struct.TYPE_3__* %228, %struct.TYPE_3__** %11, align 8
  br label %38

229:                                              ; preds = %38
  %230 = load i8*, i8** %5, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = call i32 @zfs_compare(i8* %230, i8* %231, i32* null)
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %229, %221
  %234 = load i32, i32* %4, align 4
  ret i32 %234

235:                                              ; preds = %221
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @zfs_get_user_props(i32*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @zfs_get_name(i32*) #2

declare dso_local i64 @zfs_prop_is_string(i64) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i32 @zfs_prop_get_numeric(i32*, i64, i64*, i32*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @zfs_compare(i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
