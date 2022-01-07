; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_typdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_typdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee_write_type }
%struct.ieee_write_type = type { i32, i8*, i32, i32, i64 }
%struct.ieee_name_type_hash_entry = type { %struct.ieee_name_type* }
%struct.ieee_name_type = type { i32, %struct.ieee_name_type*, i32, %struct.ieee_write_type }
%struct.ieee_buflist = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@builtin_bcd_float = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"signed short int\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"short int\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"signed short\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"unsigned short int\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"short unsigned int\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"signed long\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"long int\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"long unsigned int\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"signed long long\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"long long int\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"long long unsigned int\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"long long double\00", align 1
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @ieee_typdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_typdef(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca %struct.ieee_write_type, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee_name_type_hash_entry*, align 8
  %12 = alloca %struct.ieee_name_type*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ieee_handle*
  store %struct.ieee_handle* %14, %struct.ieee_handle** %6, align 8
  %15 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %16 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast %struct.ieee_write_type* %7 to i8*
  %20 = bitcast %struct.ieee_write_type* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 32, i1 false)
  %21 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i64, i64* @builtin_bcd_float, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp ule i32 %24, %26
  br i1 %27, label %28, label %212

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %30 [
    i32 128, label %31
    i32 140, label %38
    i32 149, label %38
    i32 134, label %52
    i32 136, label %59
    i32 142, label %59
    i32 141, label %59
    i32 137, label %59
    i32 129, label %87
    i32 130, label %87
    i32 139, label %105
    i32 146, label %105
    i32 145, label %105
    i32 132, label %130
    i32 135, label %130
    i32 133, label %130
    i32 138, label %155
    i32 131, label %166
    i32 147, label %177
    i32 148, label %184
    i32 144, label %191
    i32 143, label %198
  ]

30:                                               ; preds = %28
  br label %205

31:                                               ; preds = %28
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %205

38:                                               ; preds = %28, %28
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  store i32 140, i32* %8, align 4
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %9, align 8
  br label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  store i32 149, i32* %8, align 4
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %42
  br label %205

52:                                               ; preds = %28
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %205

59:                                               ; preds = %28, %28, %28, %28
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  store i32 136, i32* %8, align 4
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %9, align 8
  br label %86

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  store i32 142, i32* %8, align 4
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %9, align 8
  br label %85

71:                                               ; preds = %65
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  store i32 141, i32* %8, align 4
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %9, align 8
  br label %84

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  store i32 137, i32* %8, align 4
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %63
  br label %205

87:                                               ; preds = %28, %28
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %87
  store i32 129, i32* %8, align 4
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %9, align 8
  br label %104

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  store i32 130, i32* %8, align 4
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %101, %97
  br label %104

104:                                              ; preds = %103, %95
  br label %205

105:                                              ; preds = %28, %28, %28
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  store i32 139, i32* %8, align 4
  %110 = load i64, i64* @TRUE, align 8
  store i64 %110, i64* %9, align 8
  br label %129

111:                                              ; preds = %105
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  store i32 146, i32* %8, align 4
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %9, align 8
  br label %128

117:                                              ; preds = %111
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121, %117
  store i32 145, i32* %8, align 4
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %125, %121
  br label %128

128:                                              ; preds = %127, %115
  br label %129

129:                                              ; preds = %128, %109
  br label %205

130:                                              ; preds = %28, %28, %28
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134, %130
  store i32 132, i32* %8, align 4
  %139 = load i64, i64* @TRUE, align 8
  store i64 %139, i64* %9, align 8
  br label %154

140:                                              ; preds = %134
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  store i32 135, i32* %8, align 4
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %9, align 8
  br label %153

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  store i32 133, i32* %8, align 4
  %151 = load i64, i64* @TRUE, align 8
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %150, %146
  br label %153

153:                                              ; preds = %152, %144
  br label %154

154:                                              ; preds = %153, %138
  br label %205

155:                                              ; preds = %28
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @strcmp(i8* %156, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159, %155
  %164 = load i64, i64* @TRUE, align 8
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %163, %159
  br label %205

166:                                              ; preds = %28
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170, %166
  %175 = load i64, i64* @TRUE, align 8
  store i64 %175, i64* %9, align 8
  br label %176

176:                                              ; preds = %174, %170
  br label %205

177:                                              ; preds = %28
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i64, i64* @TRUE, align 8
  store i64 %182, i64* %9, align 8
  br label %183

183:                                              ; preds = %181, %177
  br label %205

184:                                              ; preds = %28
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i64, i64* @TRUE, align 8
  store i64 %189, i64* %9, align 8
  br label %190

190:                                              ; preds = %188, %184
  br label %205

191:                                              ; preds = %28
  %192 = load i8*, i8** %5, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i64, i64* @TRUE, align 8
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %195, %191
  br label %205

198:                                              ; preds = %28
  %199 = load i8*, i8** %5, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i64, i64* @TRUE, align 8
  store i64 %203, i64* %9, align 8
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204, %197, %190, %183, %176, %165, %154, %129, %104, %86, %58, %51, %37, %30
  %206 = load i64, i64* %9, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* %8, align 4
  %210 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %7, i32 0, i32 0
  store i32 %209, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %211, %2
  %213 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %214 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %213, i32 0, i32 0
  %215 = load i8*, i8** %5, align 8
  %216 = load i64, i64* @TRUE, align 8
  %217 = load i64, i64* @FALSE, align 8
  %218 = call %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32* %214, i8* %215, i64 %216, i64 %217)
  store %struct.ieee_name_type_hash_entry* %218, %struct.ieee_name_type_hash_entry** %11, align 8
  %219 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %11, align 8
  %220 = icmp eq %struct.ieee_name_type_hash_entry* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i64, i64* @FALSE, align 8
  store i64 %222, i64* %3, align 8
  br label %320

223:                                              ; preds = %212
  %224 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %7, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %10, align 8
  %226 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %11, align 8
  %227 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %226, i32 0, i32 0
  %228 = load %struct.ieee_name_type*, %struct.ieee_name_type** %227, align 8
  store %struct.ieee_name_type* %228, %struct.ieee_name_type** %12, align 8
  br label %229

229:                                              ; preds = %252, %223
  %230 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %231 = icmp ne %struct.ieee_name_type* %230, null
  br i1 %231, label %232, label %256

232:                                              ; preds = %229
  %233 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %234 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %232
  %239 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %240 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %238
  %245 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %246 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %245)
  %247 = load i64, i64* @TRUE, align 8
  store i64 %247, i64* %3, align 8
  br label %320

248:                                              ; preds = %238
  br label %251

249:                                              ; preds = %232
  %250 = load i64, i64* @TRUE, align 8
  store i64 %250, i64* %10, align 8
  br label %251

251:                                              ; preds = %249, %248
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %254 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %253, i32 0, i32 1
  %255 = load %struct.ieee_name_type*, %struct.ieee_name_type** %254, align 8
  store %struct.ieee_name_type* %255, %struct.ieee_name_type** %12, align 8
  br label %229

256:                                              ; preds = %229
  %257 = call i64 @xmalloc(i32 56)
  %258 = inttoptr i64 %257 to %struct.ieee_name_type*
  store %struct.ieee_name_type* %258, %struct.ieee_name_type** %12, align 8
  %259 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %260 = call i32 @memset(%struct.ieee_name_type* %259, i32 0, i32 56)
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %263 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %265 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %264, i32 0, i32 3
  %266 = bitcast %struct.ieee_write_type* %265 to i8*
  %267 = bitcast %struct.ieee_write_type* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 %267, i64 32, i1 false)
  %268 = load i8*, i8** %5, align 8
  %269 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %270 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  %272 = load i64, i64* %10, align 8
  %273 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %274 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %274, i32 0, i32 4
  store i64 %272, i64* %275, align 8
  %276 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %277 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %278 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %11, align 8
  %280 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %279, i32 0, i32 0
  %281 = load %struct.ieee_name_type*, %struct.ieee_name_type** %280, align 8
  %282 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %283 = getelementptr inbounds %struct.ieee_name_type, %struct.ieee_name_type* %282, i32 0, i32 1
  store %struct.ieee_name_type* %281, %struct.ieee_name_type** %283, align 8
  %284 = load %struct.ieee_name_type*, %struct.ieee_name_type** %12, align 8
  %285 = load %struct.ieee_name_type_hash_entry*, %struct.ieee_name_type_hash_entry** %11, align 8
  %286 = getelementptr inbounds %struct.ieee_name_type_hash_entry, %struct.ieee_name_type_hash_entry* %285, i32 0, i32 0
  store %struct.ieee_name_type* %284, %struct.ieee_name_type** %286, align 8
  %287 = load i64, i64* %9, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %256
  %290 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %291 = call i32 @ieee_pop_unused_type(%struct.ieee_handle* %290)
  %292 = load i64, i64* @TRUE, align 8
  store i64 %292, i64* %3, align 8
  br label %320

293:                                              ; preds = %256
  %294 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %295 = call i32 @ieee_pop_type(%struct.ieee_handle* %294)
  store i32 %295, i32* %8, align 4
  %296 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %7, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.ieee_write_type, %struct.ieee_write_type* %7, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load i64, i64* %10, align 8
  %303 = call i32 @ieee_define_named_type(%struct.ieee_handle* %296, i8* %297, i32 -1, i32 %299, i32 %301, i64 %302, %struct.ieee_buflist* null)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %293
  %306 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %307 = call i32 @ieee_write_number(%struct.ieee_handle* %306, i32 84)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @ieee_write_number(%struct.ieee_handle* %310, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %309, %305, %293
  %315 = load i64, i64* @FALSE, align 8
  store i64 %315, i64* %3, align 8
  br label %320

316:                                              ; preds = %309
  %317 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %318 = call i32 @ieee_pop_type(%struct.ieee_handle* %317)
  %319 = load i64, i64* @TRUE, align 8
  store i64 %319, i64* %3, align 8
  br label %320

320:                                              ; preds = %316, %314, %289, %244, %221
  %321 = load i64, i64* %3, align 8
  ret i64 %321
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.ieee_name_type_hash_entry* @ieee_name_type_hash_lookup(i32*, i8*, i64, i64) #2

declare dso_local i32 @ieee_pop_unused_type(%struct.ieee_handle*) #2

declare dso_local i64 @xmalloc(i32) #2

declare dso_local i32 @memset(%struct.ieee_name_type*, i32, i32) #2

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #2

declare dso_local i32 @ieee_define_named_type(%struct.ieee_handle*, i8*, i32, i32, i32, i64, %struct.ieee_buflist*) #2

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
