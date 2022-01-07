; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_get_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_intel_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_token = type { i8, i8*, i32* }
%struct.TYPE_2__ = type { i8* }

@T_NIL = common dso_local global i8 0, align 1
@prev_token = common dso_local global %struct.intel_token zeroinitializer, align 8
@cur_token = common dso_local global %struct.intel_token zeroinitializer, align 8
@intel_parser = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@T_CONST = common dso_local global i8 0, align 1
@T_ID = common dso_local global i8* null, align 8
@T_REG = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MOD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"XOR\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SHL\00", align 1
@T_SHL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"SHR\00", align 1
@T_SHR = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@T_BYTE = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@T_WORD = common dso_local global i8 0, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"DWORD\00", align 1
@T_DWORD = common dso_local global i8 0, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FWORD\00", align 1
@T_FWORD = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"QWORD\00", align 1
@T_QWORD = common dso_local global i8 0, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"TBYTE\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"XWORD\00", align 1
@T_TBYTE = common dso_local global i8 0, align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"XMMWORD\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"OWORD\00", align 1
@T_XMMWORD = common dso_local global i8 0, align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"PTR\00", align 1
@T_PTR = common dso_local global i8 0, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SHORT\00", align 1
@T_SHORT = common dso_local global i8 0, align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@T_OFFSET = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c" FLAT:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"FLAT\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"`:' expected\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"+-/*%|&^:[]()~\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Unrecognized token `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_get_token() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.intel_token, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i8, i8* @T_NIL, align 1
  %10 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %9, i8* %10, align 8
  %11 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.intel_token, %struct.intel_token* @prev_token, i32 0, i32 1), align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** getelementptr inbounds (%struct.intel_token, %struct.intel_token* @prev_token, i32 0, i32 1), align 8
  %17 = call i32 @free(i8* %16)
  br label %18

18:                                               ; preds = %15, %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.intel_token, %struct.intel_token* @prev_token, i32 0, i32 0), i8* align 8 getelementptr inbounds (%struct.intel_token, %struct.intel_token* @cur_token, i32 0, i32 0), i64 24, i1 false)
  br label %19

19:                                               ; preds = %24, %18
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @is_space_char(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = bitcast %struct.intel_token* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.intel_token, %struct.intel_token* @cur_token, i32 0, i32 0), i8* align 8 %33, i64 24, i1 false)
  br label %432

34:                                               ; preds = %27
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = call i64 @xmalloc(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %4, align 8
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* @T_CONST, align 1
  %53 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %52, i8* %53, align 8
  br label %54

54:                                               ; preds = %59, %48
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @is_identifier_char(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  %62 = load i8, i8* %60, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  store i8 %62, i8* %63, align 1
  br label %54

65:                                               ; preds = %54
  %66 = load i8*, i8** %4, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 98
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 102
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %70
  %83 = load i8*, i8** @T_ID, align 8
  %84 = ptrtoint i8* %83 to i8
  %85 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %84, i8* %85, align 8
  br label %86

86:                                               ; preds = %82, %76, %65
  br label %424

87:                                               ; preds = %34
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %89 = bitcast i8* %88 to float*
  %90 = call i32* @parse_register(float* %89, i8** %1)
  store i32* %90, i32** %2, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load i8*, i8** %1, align 8
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  store i64 %97, i64* %6, align 8
  %98 = load i8, i8* @T_REG, align 1
  %99 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %98, i8* %99, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 2
  store i32* %100, i32** %101, align 8
  %102 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @memcpy(i8* %103, i8* %104, i64 %105)
  %107 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 0, i8* %110, align 1
  br label %423

111:                                              ; preds = %87
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @is_identifier_char(i8 signext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %359

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %7, align 8
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  store i8* %119, i8** %8, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %129, label %124

124:                                              ; preds = %116
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 36
  br i1 %128, label %129, label %143

129:                                              ; preds = %124, %116
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @is_identifier_char(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 46, i8* %136, align 8
  %137 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  store i8 46, i8* %139, align 1
  %140 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  store i8 0, i8* %142, align 1
  br label %358

143:                                              ; preds = %129, %124
  br label %144

144:                                              ; preds = %156, %143
  %145 = load i8*, i8** %8, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @is_identifier_char(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %8, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 64
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ true, %144 ], [ %153, %149 ]
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  %159 = load i8, i8* %157, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %7, align 8
  store i8 %159, i8* %160, align 1
  br label %144

162:                                              ; preds = %154
  %163 = load i8*, i8** %7, align 8
  store i8 0, i8* %163, align 1
  %164 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcasecmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 126, i8* %169, align 8
  br label %357

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @strcasecmp(i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 37, i8* %176, align 8
  br label %356

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @strcasecmp(i8* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 38, i8* %183, align 8
  br label %355

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strcasecmp(i8* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 124, i8* %190, align 8
  br label %354

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcasecmp(i8* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 94, i8* %197, align 8
  br label %353

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @strcasecmp(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i8*, i8** @T_SHL, align 8
  %205 = ptrtoint i8* %204 to i8
  %206 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %205, i8* %206, align 8
  br label %352

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @strcasecmp(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i8*, i8** @T_SHR, align 8
  %214 = ptrtoint i8* %213 to i8
  %215 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %214, i8* %215, align 8
  br label %351

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i64 @strcasecmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i8, i8* @T_BYTE, align 1
  %223 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %222, i8* %223, align 8
  br label %350

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strcasecmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i8, i8* @T_WORD, align 1
  %231 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %230, i8* %231, align 8
  br label %349

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = call i64 @strcasecmp(i8* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i8, i8* @T_DWORD, align 1
  %239 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %238, i8* %239, align 8
  br label %348

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i64 @strcasecmp(i8* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i8, i8* @T_FWORD, align 1
  %247 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %246, i8* %247, align 8
  br label %347

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 @strcasecmp(i8* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i8, i8* @T_QWORD, align 1
  %255 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %254, i8* %255, align 8
  br label %346

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i64 @strcasecmp(i8* %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %266, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i64 @strcasecmp(i8* %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261, %256
  %267 = load i8, i8* @T_TBYTE, align 1
  %268 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %267, i8* %268, align 8
  br label %345

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = call i64 @strcasecmp(i8* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @strcasecmp(i8* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274, %269
  %280 = load i8, i8* @T_XMMWORD, align 1
  %281 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %280, i8* %281, align 8
  br label %344

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = call i64 @strcasecmp(i8* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i8, i8* @T_PTR, align 1
  %289 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %288, i8* %289, align 8
  br label %343

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @strcasecmp(i8* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i8, i8* @T_SHORT, align 1
  %297 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %296, i8* %297, align 8
  br label %342

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i64 @strcasecmp(i8* %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %298
  %304 = load i8*, i8** @T_OFFSET, align 8
  %305 = ptrtoint i8* %304 to i8
  %306 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %305, i8* %306, align 8
  %307 = load i8*, i8** %8, align 8
  %308 = call i64 @strncasecmp(i8* %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 6)
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @strcat(i8* %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %314

314:                                              ; preds = %310, %303
  br label %341

315:                                              ; preds = %298
  %316 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = call i64 @strcasecmp(i8* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %336

320:                                              ; preds = %315
  %321 = load i8*, i8** @T_OFFSET, align 8
  %322 = ptrtoint i8* %321 to i8
  %323 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %322, i8* %323, align 8
  %324 = load i8*, i8** %8, align 8
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 58
  br i1 %327, label %328, label %332

328:                                              ; preds = %320
  %329 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @strcat(i8* %330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %335

332:                                              ; preds = %320
  %333 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %334 = call i32 (i32, ...) @as_bad(i32 %333)
  br label %335

335:                                              ; preds = %332, %328
  br label %340

336:                                              ; preds = %315
  %337 = load i8*, i8** @T_ID, align 8
  %338 = ptrtoint i8* %337 to i8
  %339 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %338, i8* %339, align 8
  br label %340

340:                                              ; preds = %336, %335
  br label %341

341:                                              ; preds = %340, %314
  br label %342

342:                                              ; preds = %341, %295
  br label %343

343:                                              ; preds = %342, %287
  br label %344

344:                                              ; preds = %343, %279
  br label %345

345:                                              ; preds = %344, %266
  br label %346

346:                                              ; preds = %345, %253
  br label %347

347:                                              ; preds = %346, %245
  br label %348

348:                                              ; preds = %347, %237
  br label %349

349:                                              ; preds = %348, %229
  br label %350

350:                                              ; preds = %349, %221
  br label %351

351:                                              ; preds = %350, %212
  br label %352

352:                                              ; preds = %351, %203
  br label %353

353:                                              ; preds = %352, %196
  br label %354

354:                                              ; preds = %353, %189
  br label %355

355:                                              ; preds = %354, %182
  br label %356

356:                                              ; preds = %355, %175
  br label %357

357:                                              ; preds = %356, %168
  br label %358

358:                                              ; preds = %357, %135
  br label %422

359:                                              ; preds = %111
  %360 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %361 = load i8, i8* %360, align 1
  %362 = call i64 @strchr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8 signext %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %359
  %365 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %366 = load i8, i8* %365, align 1
  %367 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %366, i8* %367, align 8
  %368 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %369 = load i8, i8* %368, align 1
  %370 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  store i8 %369, i8* %372, align 1
  %373 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %374 = load i8*, i8** %373, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 1
  store i8 0, i8* %375, align 1
  br label %421

376:                                              ; preds = %359
  %377 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %378 = load i8, i8* %377, align 1
  %379 = call i64 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8 signext %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %416

381:                                              ; preds = %376
  %382 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %383 = load i8, i8* %382, align 1
  %384 = sext i8 %383 to i32
  %385 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 1
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %384, %388
  br i1 %389, label %390, label %416

390:                                              ; preds = %381
  %391 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 60
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load i8*, i8** @T_SHL, align 8
  br label %399

397:                                              ; preds = %390
  %398 = load i8*, i8** @T_SHR, align 8
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i8* [ %396, %395 ], [ %398, %397 ]
  %401 = ptrtoint i8* %400 to i8
  %402 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 0
  store i8 %401, i8* %402, align 8
  %403 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %404 = load i8, i8* %403, align 1
  %405 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 0
  store i8 %404, i8* %407, align 1
  %408 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %409 = load i8, i8* %408, align 1
  %410 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %411 = load i8*, i8** %410, align 8
  %412 = getelementptr inbounds i8, i8* %411, i64 1
  store i8 %409, i8* %412, align 1
  %413 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 2
  store i8 0, i8* %415, align 1
  br label %420

416:                                              ; preds = %381, %376
  %417 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %418 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %419 = call i32 (i32, ...) @as_bad(i32 %417, i8* %418)
  br label %420

420:                                              ; preds = %416, %399
  br label %421

421:                                              ; preds = %420, %364
  br label %422

422:                                              ; preds = %421, %358
  br label %423

423:                                              ; preds = %422, %92
  br label %424

424:                                              ; preds = %423, %86
  %425 = getelementptr inbounds %struct.intel_token, %struct.intel_token* %3, i32 0, i32 1
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 @strlen(i8* %426)
  %428 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %429 = sext i32 %427 to i64
  %430 = getelementptr inbounds i8, i8* %428, i64 %429
  store i8* %430, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_parser, i32 0, i32 0), align 8
  %431 = bitcast %struct.intel_token* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.intel_token, %struct.intel_token* @cur_token, i32 0, i32 0), i8* align 8 %431, i64 24, i1 false)
  br label %432

432:                                              ; preds = %424, %32
  ret void
}

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_space_char(i8 signext) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @is_identifier_char(i8 signext) #1

declare dso_local i32* @parse_register(float*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
