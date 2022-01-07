; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_versioninfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_versioninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__, %struct.TYPE_16__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__* }
%struct.bin_versioninfo = type { %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo*, %struct.bin_versioninfo* }
%struct.bin_fixed_versioninfo = type { %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo* }
%struct.bin_ver_info = type { %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info*, %struct.bin_ver_info* }

@BIN_VERSIONINFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"VS_VERSION_INFO\00", align 1
@BIN_FIXED_VERSIONINFO_SIZE = common dso_local global i32 0, align 4
@BIN_VER_INFO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"StringFileInfo\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"VarFileInfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_13__*)* @res_to_bin_versioninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_versioninfo(i32* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bin_versioninfo, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.bin_fixed_versioninfo, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.bin_ver_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bin_ver_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.bin_ver_info, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.bin_ver_info, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca [4 x %struct.bin_versioninfo], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @BIN_VERSIONINFO_SIZE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @string_to_unicode_bin(i32* %31, i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = and i32 %36, 3
  %38 = sub nsw i32 4, %37
  %39 = and i32 %38, 3
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %160

46:                                               ; preds = %3
  %47 = load i32*, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %156

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %12, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 3
  %55 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %54, align 8
  %56 = bitcast %struct.bin_fixed_versioninfo* %55 to %struct.bin_versioninfo*
  %57 = call i32 @windres_put_32(i32* %53, %struct.bin_versioninfo* %56, i32 -17890115)
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 0
  %60 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %59, align 8
  %61 = bitcast %struct.bin_fixed_versioninfo* %60 to %struct.bin_versioninfo*
  %62 = call i32 @windres_put_32(i32* %58, %struct.bin_versioninfo* %61, i32 65536)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 14
  %65 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %64, align 8
  %66 = bitcast %struct.bin_fixed_versioninfo* %65 to %struct.bin_versioninfo*
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @windres_put_32(i32* %63, %struct.bin_versioninfo* %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 13
  %73 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %72, align 8
  %74 = bitcast %struct.bin_fixed_versioninfo* %73 to %struct.bin_versioninfo*
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @windres_put_32(i32* %71, %struct.bin_versioninfo* %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 12
  %81 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %80, align 8
  %82 = bitcast %struct.bin_fixed_versioninfo* %81 to %struct.bin_versioninfo*
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @windres_put_32(i32* %79, %struct.bin_versioninfo* %82, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 11
  %89 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %88, align 8
  %90 = bitcast %struct.bin_fixed_versioninfo* %89 to %struct.bin_versioninfo*
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @windres_put_32(i32* %87, %struct.bin_versioninfo* %90, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 10
  %97 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %96, align 8
  %98 = bitcast %struct.bin_fixed_versioninfo* %97 to %struct.bin_versioninfo*
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @windres_put_32(i32* %95, %struct.bin_versioninfo* %98, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 9
  %105 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %104, align 8
  %106 = bitcast %struct.bin_fixed_versioninfo* %105 to %struct.bin_versioninfo*
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @windres_put_32(i32* %103, %struct.bin_versioninfo* %106, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 8
  %113 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %112, align 8
  %114 = bitcast %struct.bin_fixed_versioninfo* %113 to %struct.bin_versioninfo*
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @windres_put_32(i32* %111, %struct.bin_versioninfo* %114, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 7
  %121 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %120, align 8
  %122 = bitcast %struct.bin_fixed_versioninfo* %121 to %struct.bin_versioninfo*
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @windres_put_32(i32* %119, %struct.bin_versioninfo* %122, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 6
  %129 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %128, align 8
  %130 = bitcast %struct.bin_fixed_versioninfo* %129 to %struct.bin_versioninfo*
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @windres_put_32(i32* %127, %struct.bin_versioninfo* %130, i32 %133)
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 5
  %137 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %136, align 8
  %138 = bitcast %struct.bin_fixed_versioninfo* %137 to %struct.bin_versioninfo*
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @windres_put_32(i32* %135, %struct.bin_versioninfo* %138, i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds %struct.bin_fixed_versioninfo, %struct.bin_fixed_versioninfo* %11, i32 0, i32 4
  %145 = load %struct.bin_fixed_versioninfo*, %struct.bin_fixed_versioninfo** %144, align 8
  %146 = bitcast %struct.bin_fixed_versioninfo* %145 to %struct.bin_versioninfo*
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @windres_put_32(i32* %143, %struct.bin_versioninfo* %146, i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = bitcast %struct.bin_fixed_versioninfo* %11 to %struct.bin_versioninfo*
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @BIN_FIXED_VERSIONINFO_SIZE, align 4
  %155 = call i32 @set_windres_bfd_content(i32* %151, %struct.bin_versioninfo* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %49, %46
  %157 = load i32, i32* @BIN_FIXED_VERSIONINFO_SIZE, align 4
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %156, %3
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %10, align 8
  br label %164

164:                                              ; preds = %441, %160
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %166 = icmp ne %struct.TYPE_16__* %165, null
  br i1 %166, label %167, label %445

167:                                              ; preds = %164
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %168, %169
  %171 = and i32 %170, 3
  %172 = sub nsw i32 4, %171
  %173 = and i32 %172, 3
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %183 [
    i32 129, label %185
    i32 128, label %314
  ]

183:                                              ; preds = %167
  %184 = call i32 (...) @abort() #3
  unreachable

185:                                              ; preds = %167
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @string_to_unicode_bin(i32* %186, i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %7, align 4
  %191 = sub nsw i32 %189, %190
  %192 = and i32 %191, 3
  %193 = sub nsw i32 4, %192
  %194 = and i32 %193, 3
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %5, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @unicode_to_bin(i32* %201, i32 %202, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  store %struct.TYPE_15__* %213, %struct.TYPE_15__** %17, align 8
  br label %214

214:                                              ; preds = %282, %185
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %216 = icmp ne %struct.TYPE_15__* %215, null
  br i1 %216, label %217, label %286

217:                                              ; preds = %214
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %7, align 4
  %220 = sub nsw i32 %218, %219
  %221 = and i32 %220, 3
  %222 = sub nsw i32 4, %221
  %223 = and i32 %222, 3
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %5, align 4
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @unicode_to_bin(i32* %230, i32 %231, i32 %234)
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %236, %237
  %239 = and i32 %238, 3
  %240 = sub nsw i32 4, %239
  %241 = and i32 %240, 3
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %20, align 4
  %245 = load i32*, i32** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @unicode_to_bin(i32* %245, i32 %246, i32 %249)
  store i32 %250, i32* %5, align 4
  %251 = load i32*, i32** %4, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %281

253:                                              ; preds = %217
  %254 = load i32*, i32** %4, align 8
  %255 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %18, i32 0, i32 2
  %256 = load %struct.bin_ver_info*, %struct.bin_ver_info** %255, align 8
  %257 = bitcast %struct.bin_ver_info* %256 to %struct.bin_versioninfo*
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 %258, %259
  %261 = call i32 @windres_put_16(i32* %254, %struct.bin_versioninfo* %257, i32 %260)
  %262 = load i32*, i32** %4, align 8
  %263 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %18, i32 0, i32 3
  %264 = load %struct.bin_ver_info*, %struct.bin_ver_info** %263, align 8
  %265 = bitcast %struct.bin_ver_info* %264 to %struct.bin_versioninfo*
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %20, align 4
  %268 = sub nsw i32 %266, %267
  %269 = sdiv i32 %268, 2
  %270 = call i32 @windres_put_16(i32* %262, %struct.bin_versioninfo* %265, i32 %269)
  %271 = load i32*, i32** %4, align 8
  %272 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %18, i32 0, i32 0
  %273 = load %struct.bin_ver_info*, %struct.bin_ver_info** %272, align 8
  %274 = bitcast %struct.bin_ver_info* %273 to %struct.bin_versioninfo*
  %275 = call i32 @windres_put_16(i32* %271, %struct.bin_versioninfo* %274, i32 1)
  %276 = load i32*, i32** %4, align 8
  %277 = bitcast %struct.bin_ver_info* %18 to %struct.bin_versioninfo*
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %280 = call i32 @set_windres_bfd_content(i32* %276, %struct.bin_versioninfo* %277, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %253, %217
  br label %282

282:                                              ; preds = %281
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  store %struct.TYPE_15__* %285, %struct.TYPE_15__** %17, align 8
  br label %214

286:                                              ; preds = %214
  %287 = load i32*, i32** %4, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %313

289:                                              ; preds = %286
  %290 = load i32*, i32** %4, align 8
  %291 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %15, i32 0, i32 2
  %292 = load %struct.bin_ver_info*, %struct.bin_ver_info** %291, align 8
  %293 = bitcast %struct.bin_ver_info* %292 to %struct.bin_versioninfo*
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* %16, align 4
  %296 = sub nsw i32 %294, %295
  %297 = call i32 @windres_put_16(i32* %290, %struct.bin_versioninfo* %293, i32 %296)
  %298 = load i32*, i32** %4, align 8
  %299 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %15, i32 0, i32 3
  %300 = load %struct.bin_ver_info*, %struct.bin_ver_info** %299, align 8
  %301 = bitcast %struct.bin_ver_info* %300 to %struct.bin_versioninfo*
  %302 = call i32 @windres_put_16(i32* %298, %struct.bin_versioninfo* %301, i32 0)
  %303 = load i32*, i32** %4, align 8
  %304 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %15, i32 0, i32 0
  %305 = load %struct.bin_ver_info*, %struct.bin_ver_info** %304, align 8
  %306 = bitcast %struct.bin_ver_info* %305 to %struct.bin_versioninfo*
  %307 = call i32 @windres_put_16(i32* %303, %struct.bin_versioninfo* %306, i32 0)
  %308 = load i32*, i32** %4, align 8
  %309 = bitcast %struct.bin_ver_info* %15 to %struct.bin_versioninfo*
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %312 = call i32 @set_windres_bfd_content(i32* %308, %struct.bin_versioninfo* %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %289, %286
  br label %413

314:                                              ; preds = %167
  %315 = load i32*, i32** %4, align 8
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @string_to_unicode_bin(i32* %315, i32 %316, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %317, i32* %5, align 4
  %318 = load i32, i32* %5, align 4
  %319 = load i32, i32* %7, align 4
  %320 = sub nsw i32 %318, %319
  %321 = and i32 %320, 3
  %322 = sub nsw i32 4, %321
  %323 = and i32 %322, 3
  %324 = load i32, i32* %5, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %5, align 4
  %326 = load i32, i32* %5, align 4
  store i32 %326, i32* %21, align 4
  %327 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %328 = load i32, i32* %5, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %5, align 4
  %330 = load i32*, i32** %4, align 8
  %331 = load i32, i32* %5, align 4
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @unicode_to_bin(i32* %330, i32 %331, i32 %336)
  store i32 %337, i32* %5, align 4
  %338 = load i32, i32* %5, align 4
  %339 = load i32, i32* %7, align 4
  %340 = sub nsw i32 %338, %339
  %341 = and i32 %340, 3
  %342 = sub nsw i32 4, %341
  %343 = and i32 %342, 3
  %344 = load i32, i32* %5, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %5, align 4
  %346 = load i32, i32* %5, align 4
  store i32 %346, i32* %22, align 4
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %350, align 8
  store %struct.TYPE_14__* %351, %struct.TYPE_14__** %24, align 8
  br label %352

352:                                              ; preds = %378, %314
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %354 = icmp ne %struct.TYPE_14__* %353, null
  br i1 %354, label %355, label %382

355:                                              ; preds = %352
  %356 = load i32*, i32** %4, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %375

358:                                              ; preds = %355
  %359 = load i32*, i32** %4, align 8
  %360 = getelementptr inbounds [4 x %struct.bin_versioninfo], [4 x %struct.bin_versioninfo]* %25, i64 0, i64 0
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @windres_put_16(i32* %359, %struct.bin_versioninfo* %360, i32 %363)
  %365 = load i32*, i32** %4, align 8
  %366 = getelementptr inbounds [4 x %struct.bin_versioninfo], [4 x %struct.bin_versioninfo]* %25, i64 0, i64 2
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @windres_put_16(i32* %365, %struct.bin_versioninfo* %366, i32 %369)
  %371 = load i32*, i32** %4, align 8
  %372 = getelementptr inbounds [4 x %struct.bin_versioninfo], [4 x %struct.bin_versioninfo]* %25, i64 0, i64 0
  %373 = load i32, i32* %5, align 4
  %374 = call i32 @set_windres_bfd_content(i32* %371, %struct.bin_versioninfo* %372, i32 %373, i32 4)
  br label %375

375:                                              ; preds = %358, %355
  %376 = load i32, i32* %5, align 4
  %377 = add nsw i32 %376, 4
  store i32 %377, i32* %5, align 4
  br label %378

378:                                              ; preds = %375
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %380, align 8
  store %struct.TYPE_14__* %381, %struct.TYPE_14__** %24, align 8
  br label %352

382:                                              ; preds = %352
  %383 = load i32*, i32** %4, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %412

385:                                              ; preds = %382
  %386 = load i32*, i32** %4, align 8
  %387 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %23, i32 0, i32 2
  %388 = load %struct.bin_ver_info*, %struct.bin_ver_info** %387, align 8
  %389 = bitcast %struct.bin_ver_info* %388 to %struct.bin_versioninfo*
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* %21, align 4
  %392 = sub nsw i32 %390, %391
  %393 = call i32 @windres_put_16(i32* %386, %struct.bin_versioninfo* %389, i32 %392)
  %394 = load i32*, i32** %4, align 8
  %395 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %23, i32 0, i32 3
  %396 = load %struct.bin_ver_info*, %struct.bin_ver_info** %395, align 8
  %397 = bitcast %struct.bin_ver_info* %396 to %struct.bin_versioninfo*
  %398 = load i32, i32* %5, align 4
  %399 = load i32, i32* %22, align 4
  %400 = sub nsw i32 %398, %399
  %401 = call i32 @windres_put_16(i32* %394, %struct.bin_versioninfo* %397, i32 %400)
  %402 = load i32*, i32** %4, align 8
  %403 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %23, i32 0, i32 0
  %404 = load %struct.bin_ver_info*, %struct.bin_ver_info** %403, align 8
  %405 = bitcast %struct.bin_ver_info* %404 to %struct.bin_versioninfo*
  %406 = call i32 @windres_put_16(i32* %402, %struct.bin_versioninfo* %405, i32 0)
  %407 = load i32*, i32** %4, align 8
  %408 = bitcast %struct.bin_ver_info* %23 to %struct.bin_versioninfo*
  %409 = load i32, i32* %21, align 4
  %410 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %411 = call i32 @set_windres_bfd_content(i32* %407, %struct.bin_versioninfo* %408, i32 %409, i32 %410)
  br label %412

412:                                              ; preds = %385, %382
  br label %413

413:                                              ; preds = %412, %313
  %414 = load i32*, i32** %4, align 8
  %415 = icmp ne i32* %414, null
  br i1 %415, label %416, label %440

416:                                              ; preds = %413
  %417 = load i32*, i32** %4, align 8
  %418 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %13, i32 0, i32 2
  %419 = load %struct.bin_ver_info*, %struct.bin_ver_info** %418, align 8
  %420 = bitcast %struct.bin_ver_info* %419 to %struct.bin_versioninfo*
  %421 = load i32, i32* %5, align 4
  %422 = load i32, i32* %14, align 4
  %423 = sub nsw i32 %421, %422
  %424 = call i32 @windres_put_16(i32* %417, %struct.bin_versioninfo* %420, i32 %423)
  %425 = load i32*, i32** %4, align 8
  %426 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %13, i32 0, i32 3
  %427 = load %struct.bin_ver_info*, %struct.bin_ver_info** %426, align 8
  %428 = bitcast %struct.bin_ver_info* %427 to %struct.bin_versioninfo*
  %429 = call i32 @windres_put_16(i32* %425, %struct.bin_versioninfo* %428, i32 0)
  %430 = load i32*, i32** %4, align 8
  %431 = getelementptr inbounds %struct.bin_ver_info, %struct.bin_ver_info* %13, i32 0, i32 0
  %432 = load %struct.bin_ver_info*, %struct.bin_ver_info** %431, align 8
  %433 = bitcast %struct.bin_ver_info* %432 to %struct.bin_versioninfo*
  %434 = call i32 @windres_put_16(i32* %430, %struct.bin_versioninfo* %433, i32 0)
  %435 = load i32*, i32** %4, align 8
  %436 = bitcast %struct.bin_ver_info* %13 to %struct.bin_versioninfo*
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %439 = call i32 @set_windres_bfd_content(i32* %435, %struct.bin_versioninfo* %436, i32 %437, i32 %438)
  br label %440

440:                                              ; preds = %416, %413
  br label %441

441:                                              ; preds = %440
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %442, i32 0, i32 2
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %443, align 8
  store %struct.TYPE_16__* %444, %struct.TYPE_16__** %10, align 8
  br label %164

445:                                              ; preds = %164
  %446 = load i32*, i32** %4, align 8
  %447 = icmp ne i32* %446, null
  br i1 %447, label %448, label %477

448:                                              ; preds = %445
  %449 = load i32*, i32** %4, align 8
  %450 = getelementptr inbounds %struct.bin_versioninfo, %struct.bin_versioninfo* %9, i32 0, i32 2
  %451 = load %struct.bin_versioninfo*, %struct.bin_versioninfo** %450, align 8
  %452 = load i32, i32* %5, align 4
  %453 = load i32, i32* %8, align 4
  %454 = sub nsw i32 %452, %453
  %455 = call i32 @windres_put_16(i32* %449, %struct.bin_versioninfo* %451, i32 %454)
  %456 = load i32*, i32** %4, align 8
  %457 = getelementptr inbounds %struct.bin_versioninfo, %struct.bin_versioninfo* %9, i32 0, i32 1
  %458 = load %struct.bin_versioninfo*, %struct.bin_versioninfo** %457, align 8
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_17__*, %struct.TYPE_17__** %460, align 8
  %462 = icmp eq %struct.TYPE_17__* %461, null
  br i1 %462, label %463, label %464

463:                                              ; preds = %448
  br label %466

464:                                              ; preds = %448
  %465 = load i32, i32* @BIN_FIXED_VERSIONINFO_SIZE, align 4
  br label %466

466:                                              ; preds = %464, %463
  %467 = phi i32 [ 0, %463 ], [ %465, %464 ]
  %468 = call i32 @windres_put_16(i32* %456, %struct.bin_versioninfo* %458, i32 %467)
  %469 = load i32*, i32** %4, align 8
  %470 = getelementptr inbounds %struct.bin_versioninfo, %struct.bin_versioninfo* %9, i32 0, i32 0
  %471 = load %struct.bin_versioninfo*, %struct.bin_versioninfo** %470, align 8
  %472 = call i32 @windres_put_16(i32* %469, %struct.bin_versioninfo* %471, i32 0)
  %473 = load i32*, i32** %4, align 8
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* @BIN_VER_INFO_SIZE, align 4
  %476 = call i32 @set_windres_bfd_content(i32* %473, %struct.bin_versioninfo* %9, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %466, %445
  %478 = load i32, i32* %5, align 4
  ret i32 %478
}

declare dso_local i32 @string_to_unicode_bin(i32*, i32, i8*) #1

declare dso_local i32 @windres_put_32(i32*, %struct.bin_versioninfo*, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_versioninfo*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @unicode_to_bin(i32*, i32, i32) #1

declare dso_local i32 @windres_put_16(i32*, %struct.bin_versioninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
