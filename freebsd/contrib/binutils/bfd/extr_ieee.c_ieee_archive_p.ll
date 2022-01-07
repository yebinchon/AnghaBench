; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_archive_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_archive_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__, %struct.TYPE_25__*, i64 }
%struct.TYPE_30__ = type { i8*, i8*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_29__*, i64 }

@Module_Beginning = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@ieee_assign_value_to_variable_enum = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_29__*)* @ieee_archive_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee_archive_p(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  store i32 48, i32* %12, align 4
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i8* @bfd_alloc(%struct.TYPE_29__* %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_28__*
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %26, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = icmp ne %struct.TYPE_28__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %287

33:                                               ; preds = %1
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %35 = call %struct.TYPE_28__* @IEEE_AR_DATA(%struct.TYPE_29__* %34)
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %9, align 8
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %38 = call i32 @bfd_bread(i8* %36, i32 512, %struct.TYPE_29__* %37)
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 2
  store %struct.TYPE_29__* %47, %struct.TYPE_29__** %50, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = call i64 @this_byte(%struct.TYPE_30__* %52)
  %54 = load i64, i64* @Module_Beginning, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %33
  br label %274

57:                                               ; preds = %33
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = call i32 @next_byte(%struct.TYPE_30__* %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = call i8* @read_id(%struct.TYPE_30__* %62)
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %274

68:                                               ; preds = %57
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = call i8* @read_id(%struct.TYPE_30__* %70)
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = call i32 @next_byte(%struct.TYPE_30__* %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = call i64 @must_parse_int(%struct.TYPE_30__* %80)
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  %84 = call i64 @must_parse_int(%struct.TYPE_30__* %83)
  store i32 10, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 16
  %88 = trunc i64 %87 to i32
  %89 = call %struct.TYPE_27__* @bfd_malloc(i32 %88)
  store %struct.TYPE_27__* %89, %struct.TYPE_27__** %11, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %91 = icmp eq %struct.TYPE_27__* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %277

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %172
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = call i32 @read_2bytes(%struct.TYPE_30__* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i64, i64* @ieee_assign_value_to_variable_enum, align 8
  %100 = trunc i64 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %173

103:                                              ; preds = %94
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 2
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 16
  %116 = trunc i64 %115 to i32
  %117 = call %struct.TYPE_27__* @bfd_realloc(%struct.TYPE_27__* %112, i32 %116)
  store %struct.TYPE_27__* %117, %struct.TYPE_27__** %15, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %119 = icmp eq %struct.TYPE_27__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %277

121:                                              ; preds = %109
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %122, %struct.TYPE_27__** %11, align 8
  br label %123

123:                                              ; preds = %121, %103
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i64 %128
  store %struct.TYPE_27__* %129, %struct.TYPE_27__** %14, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = call i64 @must_parse_int(%struct.TYPE_30__* %135)
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  %139 = call i64 @must_parse_int(%struct.TYPE_30__* %138)
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %143, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %145 = call i32 @IEEE_DATA(%struct.TYPE_29__* %144)
  %146 = call i64 @ieee_pos(i32 %145)
  %147 = icmp ugt i64 %146, 256
  br i1 %147, label %148, label %172

148:                                              ; preds = %123
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %150 = call i32 @IEEE_DATA(%struct.TYPE_29__* %149)
  %151 = call i64 @ieee_pos(i32 %150)
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %7, align 8
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* @SEEK_SET, align 4
  %157 = call i64 @bfd_seek(%struct.TYPE_29__* %154, i64 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  br label %277

160:                                              ; preds = %148
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %163 = call i32 @bfd_bread(i8* %161, i32 512, %struct.TYPE_29__* %162)
  %164 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  store i8* %164, i8** %167, align 8
  %168 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %160, %123
  br label %94

173:                                              ; preds = %102
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %12, align 4
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i8* @bfd_alloc(%struct.TYPE_29__* %181, i32 %182)
  %184 = bitcast i8* %183 to %struct.TYPE_25__*
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 2
  store %struct.TYPE_25__* %184, %struct.TYPE_25__** %186, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = icmp eq %struct.TYPE_25__* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %173
  br label %277

192:                                              ; preds = %173
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 @memcpy(%struct.TYPE_25__* %195, %struct.TYPE_27__* %196, i64 %198)
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %201 = call i32 @free(%struct.TYPE_27__* %200)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %11, align 8
  store i32 2, i32* %5, align 4
  br label %202

202:                                              ; preds = %267, %192
  %203 = load i32, i32* %5, align 4
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ult i32 %203, %206
  br i1 %207, label %208, label %270

208:                                              ; preds = %202
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %211, align 8
  %213 = load i32, i32* %5, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @SEEK_SET, align 4
  %219 = call i64 @bfd_seek(%struct.TYPE_29__* %209, i64 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %208
  br label %277

222:                                              ; preds = %208
  %223 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %225 = call i32 @bfd_bread(i8* %223, i32 512, %struct.TYPE_29__* %224)
  %226 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 0
  store i8* %226, i8** %229, align 8
  %230 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 1
  store i8* %230, i8** %233, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = call i32 @next_byte(%struct.TYPE_30__* %235)
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 1
  %239 = call i32 @next_byte(%struct.TYPE_30__* %238)
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = call i64 @must_parse_int(%struct.TYPE_30__* %241)
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 1
  %245 = call i64 @must_parse_int(%struct.TYPE_30__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %222
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  store i64 0, i64* %254, align 8
  br label %266

255:                                              ; preds = %222
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 1
  %258 = call i64 @must_parse_int(%struct.TYPE_30__* %257)
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 0
  store i64 %258, i64* %265, align 8
  br label %266

266:                                              ; preds = %255, %247
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %5, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %5, align 4
  br label %202

270:                                              ; preds = %202
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  store i32* %273, i32** %2, align 8
  br label %292

274:                                              ; preds = %67, %56
  %275 = load i32, i32* @bfd_error_wrong_format, align 4
  %276 = call i32 @bfd_set_error(i32 %275)
  br label %277

277:                                              ; preds = %274, %221, %191, %159, %120, %92
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %279 = icmp ne %struct.TYPE_27__* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %282 = call i32 @free(%struct.TYPE_27__* %281)
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %286 = call i32 @bfd_release(%struct.TYPE_29__* %284, %struct.TYPE_28__* %285)
  br label %287

287:                                              ; preds = %283, %32
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 0
  store %struct.TYPE_28__* %288, %struct.TYPE_28__** %291, align 8
  store i32* null, i32** %2, align 8
  br label %292

292:                                              ; preds = %287, %270
  %293 = load i32*, i32** %2, align 8
  ret i32* %293
}

declare dso_local i8* @bfd_alloc(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @IEEE_AR_DATA(%struct.TYPE_29__*) #1

declare dso_local i32 @bfd_bread(i8*, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @this_byte(%struct.TYPE_30__*) #1

declare dso_local i32 @next_byte(%struct.TYPE_30__*) #1

declare dso_local i8* @read_id(%struct.TYPE_30__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @must_parse_int(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @bfd_malloc(i32) #1

declare dso_local i32 @read_2bytes(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @bfd_realloc(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ieee_pos(i32) #1

declare dso_local i32 @IEEE_DATA(%struct.TYPE_29__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_29__*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @free(%struct.TYPE_27__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_release(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
