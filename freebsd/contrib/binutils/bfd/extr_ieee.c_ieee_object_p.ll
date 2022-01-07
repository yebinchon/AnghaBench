; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i8*, %struct.TYPE_28__, i32*, i32, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_34__, %struct.TYPE_30__, %struct.TYPE_29__, i64, i32*, i64, i32, i32, i64, i64, i8*, i8* }
%struct.TYPE_31__ = type { %struct.TYPE_27__, i32* }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_34__ = type { i8*, i64, %struct.TYPE_33__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { i8*, i8* }

@SEEK_SET = common dso_local global i32 0, align 4
@Module_Beginning = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IEEE_PUBLIC_BASE = common dso_local global i32 0, align 4
@IEEE_REFERENCE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"68000\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"68332\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"68030\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cpu32\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CPU32\00", align 1
@ieee_address_descriptor_enum = common dso_local global i64 0, align 8
@ieee_variable_L_enum = common dso_local global i64 0, align 8
@ieee_variable_M_enum = common dso_local global i64 0, align 8
@N_W_VARIABLES = common dso_local global i32 0, align 4
@ieee_assign_value_to_variable_enum = common dso_local global i64 0, align 8
@HAS_SYMS = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_33__*)* @ieee_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee_object_p(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca [300 x i8], align 16
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %14 = call %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__* %13)
  store %struct.TYPE_32__* %14, %struct.TYPE_32__** %8, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %17, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %19 = call i32 @ieee_mkobject(%struct.TYPE_33__* %18)
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %21 = call %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__* %20)
  store %struct.TYPE_32__* %21, %struct.TYPE_32__** %6, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %23 = load i32, i32* @SEEK_SET, align 4
  %24 = call i64 @bfd_seek(%struct.TYPE_33__* %22, i32 0, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %381

27:                                               ; preds = %1
  %28 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %30 = call i32 @bfd_bread(i8* %28, i64 300, %struct.TYPE_33__* %29)
  %31 = getelementptr inbounds [300 x i8], [300 x i8]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 1
  %37 = call i32 @this_byte_and_next(%struct.TYPE_34__* %36)
  %38 = load i32, i32* @Module_Beginning, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %378

41:                                               ; preds = %27
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 12
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 10
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 9
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @IEEE_PUBLIC_BASE, align 4
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @IEEE_REFERENCE_BASE, align 4
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 2
  store %struct.TYPE_33__* %60, %struct.TYPE_33__** %63, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 5
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 1
  %70 = call i8* @read_id(%struct.TYPE_34__* %69)
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  store i8* %70, i8** %4, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %41
  br label %378

78:                                               ; preds = %41
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = call i8* @read_id(%struct.TYPE_34__* %80)
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %89, %78
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 54
  br i1 %101, label %102, label %196

102:                                              ; preds = %96
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 56
  br i1 %107, label %108, label %196

108:                                              ; preds = %102
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 51
  br i1 %113, label %114, label %142

114:                                              ; preds = %108
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  switch i32 %118, label %138 [
    i32 48, label %119
    i32 50, label %119
    i32 53, label %119
    i32 51, label %122
    i32 54, label %122
    i32 55, label %122
    i32 52, label %125
  ]

119:                                              ; preds = %114, %114, %114
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %121 = call i32 @strcpy(i8* %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %141

122:                                              ; preds = %114, %114, %114
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %141

125:                                              ; preds = %114
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 57
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %133 = call i32 @strcpy(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %137

134:                                              ; preds = %125
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %136 = call i32 @strcpy(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %131
  br label %141

138:                                              ; preds = %114
  %139 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %140 = call i32 @strcpy(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %137, %122, %119
  br label %195

142:                                              ; preds = %108
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = call signext i8 @TOUPPER(i8 signext %145)
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 70
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %151 = call i32 @strcpy(i8* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %194

152:                                              ; preds = %142
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 3
  %155 = load i8, i8* %154, align 1
  %156 = call signext i8 @TOUPPER(i8 signext %155)
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 67
  br i1 %158, label %159, label %188

159:                                              ; preds = %152
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = call signext i8 @TOUPPER(i8 signext %162)
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 69
  br i1 %165, label %180, label %166

166:                                              ; preds = %159
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = call signext i8 @TOUPPER(i8 signext %169)
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 72
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = call signext i8 @TOUPPER(i8 signext %176)
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 76
  br i1 %179, label %180, label %188

180:                                              ; preds = %173, %166, %159
  %181 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %182 = call i32 @strcpy(i8* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %183 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  %186 = call i32 @strncat(i8* %183, i8* %185, i32 7)
  %187 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 9
  store i8 0, i8* %187, align 1
  br label %193

188:                                              ; preds = %173, %152
  %189 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %190 = load i8*, i8** %4, align 8
  %191 = call i32 @strncpy(i8* %189, i8* %190, i32 9)
  %192 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 9
  store i8 0, i8* %192, align 1
  br label %193

193:                                              ; preds = %188, %180
  br label %194

194:                                              ; preds = %193, %149
  br label %195

195:                                              ; preds = %194, %141
  br label %213

196:                                              ; preds = %102, %96
  %197 = load i8*, i8** %4, align 8
  %198 = call i64 @CONST_STRNEQ(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %4, align 8
  %202 = call i64 @CONST_STRNEQ(i8* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200, %196
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %206 = call i32 @strcpy(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %212

207:                                              ; preds = %200
  %208 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %209 = load i8*, i8** %4, align 8
  %210 = call i32 @strncpy(i8* %208, i8* %209, i32 9)
  %211 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 9
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %207, %204
  br label %213

213:                                              ; preds = %212, %195
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %215 = call i32* @bfd_scan_arch(i8* %214)
  store i32* %215, i32** %10, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %378

219:                                              ; preds = %213
  %220 = load i32*, i32** %10, align 8
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 4
  store i32* %220, i32** %222, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 1
  %225 = call i32 @this_byte(%struct.TYPE_34__* %224)
  %226 = load i64, i64* @ieee_address_descriptor_enum, align 8
  %227 = trunc i64 %226 to i32
  %228 = icmp ne i32 %225, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %219
  br label %381

230:                                              ; preds = %219
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 1
  %233 = call i32 @next_byte(%struct.TYPE_34__* %232)
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %237, i32 0, i32 1
  %239 = call i32 @parse_int(%struct.TYPE_34__* %235, i32* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %230
  br label %381

242:                                              ; preds = %230
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = call i32 @parse_int(%struct.TYPE_34__* %244, i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %242
  br label %381

251:                                              ; preds = %242
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 1
  %254 = call i32 @this_byte(%struct.TYPE_34__* %253)
  %255 = load i64, i64* @ieee_variable_L_enum, align 8
  %256 = trunc i64 %255 to i32
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %265, label %258

258:                                              ; preds = %251
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 1
  %261 = call i32 @this_byte(%struct.TYPE_34__* %260)
  %262 = load i64, i64* @ieee_variable_M_enum, align 8
  %263 = trunc i64 %262 to i32
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %258, %251
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 1
  %268 = call i32 @next_byte(%struct.TYPE_34__* %267)
  br label %269

269:                                              ; preds = %265, %258
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %304, %269
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* @N_W_VARIABLES, align 4
  %273 = icmp ult i32 %271, %272
  br i1 %273, label %274, label %307

274:                                              ; preds = %270
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 1
  %277 = call i32 @read_2bytes(%struct.TYPE_34__* %276)
  %278 = load i64, i64* @ieee_assign_value_to_variable_enum, align 8
  %279 = trunc i64 %278 to i32
  %280 = icmp ne i32 %277, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %381

282:                                              ; preds = %274
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 1
  %285 = call i32 @this_byte_and_next(%struct.TYPE_34__* %284)
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  br label %381

289:                                              ; preds = %282
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 1
  %292 = call i32 @parse_i(%struct.TYPE_34__* %291, i32* %12)
  %293 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32 %292, i32* %299, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %289
  br label %381

303:                                              ; preds = %289
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %5, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %5, align 4
  br label %270

307:                                              ; preds = %270
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load i32, i32* @HAS_SYMS, align 4
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 3
  store i32 %315, i32* %317, align 8
  br label %318

318:                                              ; preds = %314, %307
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %323, 1
  store i64 %324, i64* %9, align 8
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_33__*, %struct.TYPE_33__** %327, align 8
  %329 = load i64, i64* %9, align 8
  %330 = call i64 @bfd_alloc(%struct.TYPE_33__* %328, i64 %329)
  %331 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %332 = call %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__* %331)
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %333, i32 0, i32 1
  store i64 %330, i64* %334, align 8
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %336 = call %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__* %335)
  %337 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %318
  br label %381

342:                                              ; preds = %318
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %344 = load i32, i32* @SEEK_SET, align 4
  %345 = call i64 @bfd_seek(%struct.TYPE_33__* %343, i32 0, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %342
  br label %381

348:                                              ; preds = %342
  %349 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %350 = call %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__* %349)
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = inttoptr i64 %353 to i8*
  %355 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %359, 1
  %361 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %362 = call i32 @bfd_bread(i8* %354, i64 %360, %struct.TYPE_33__* %361)
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %364 = call i32 @ieee_slurp_sections(%struct.TYPE_33__* %363)
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %366 = call i32 @ieee_slurp_debug(%struct.TYPE_33__* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %348
  br label %381

369:                                              ; preds = %348
  %370 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %371 = call i32 @ieee_slurp_section_data(%struct.TYPE_33__* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  br label %381

374:                                              ; preds = %369
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %375, i32 0, i32 2
  %377 = load i32*, i32** %376, align 8
  store i32* %377, i32** %2, align 8
  br label %389

378:                                              ; preds = %218, %77, %40
  %379 = load i32, i32* @bfd_error_wrong_format, align 4
  %380 = call i32 @bfd_set_error(i32 %379)
  br label %381

381:                                              ; preds = %378, %373, %368, %347, %341, %302, %288, %281, %250, %241, %229, %26
  %382 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %383 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %384 = call i32 @bfd_release(%struct.TYPE_33__* %382, %struct.TYPE_32__* %383)
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %386 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 0
  store %struct.TYPE_32__* %385, %struct.TYPE_32__** %388, align 8
  store i32* null, i32** %2, align 8
  br label %389

389:                                              ; preds = %381, %374
  %390 = load i32*, i32** %2, align 8
  ret i32* %390
}

declare dso_local %struct.TYPE_32__* @IEEE_DATA(%struct.TYPE_33__*) #1

declare dso_local i32 @ieee_mkobject(%struct.TYPE_33__*) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i64, %struct.TYPE_33__*) #1

declare dso_local i32 @this_byte_and_next(%struct.TYPE_34__*) #1

declare dso_local i8* @read_id(%struct.TYPE_34__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32* @bfd_scan_arch(i8*) #1

declare dso_local i32 @this_byte(%struct.TYPE_34__*) #1

declare dso_local i32 @next_byte(%struct.TYPE_34__*) #1

declare dso_local i32 @parse_int(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @read_2bytes(%struct.TYPE_34__*) #1

declare dso_local i32 @parse_i(%struct.TYPE_34__*, i32*) #1

declare dso_local i64 @bfd_alloc(%struct.TYPE_33__*, i64) #1

declare dso_local i32 @ieee_slurp_sections(%struct.TYPE_33__*) #1

declare dso_local i32 @ieee_slurp_debug(%struct.TYPE_33__*) #1

declare dso_local i32 @ieee_slurp_section_data(%struct.TYPE_33__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_release(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
