; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printf_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_printf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*)*, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_PRINTF_FMT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s( ) format string is empty\0A\00", align 1
@DTRACEAGG_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@D_TYPE_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to lookup agg type %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@pfprint_pct = common dso_local global i32 0, align 4
@DT_PFCONV_DYNPREC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@DT_PFCONV_DYNWIDTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@D_PRINTF_DYN_PROTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [90 x i8] c"%s( ) prototype mismatch: conversion #%d (%%%s) is missing a corresponding \22%s\22 argument\0A\00", align 1
@D_PRINTF_DYN_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [122 x i8] c"%s( ) argument #%d is incompatible with conversion #%d prototype:\0A\09conversion: %% %s %s\0A\09 prototype: int\0A\09  argument: %s\0A\00", align 1
@DT_PFCONV_AGG = common dso_local global i32 0, align 4
@DT_PRINTF_AGGREGATION = common dso_local global i32 0, align 4
@D_PRINTF_AGG_CONV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [70 x i8] c"%%@ conversion requires an aggregation and is not for use with %s( )\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"aggregating action\00", align 1
@D_PRINTF_ARG_PROTO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [91 x i8] c"%s( ) prototype mismatch: conversion #%d (%%%s) is missing a corresponding value argument\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"argument #%d\00", align 1
@pfprint_sint = common dso_local global i32 0, align 4
@pfprint_uint = common dso_local global i32 0, align 4
@pfprint_dint = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@pfprint_fp = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@D_PRINTF_ARG_TYPE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [107 x i8] c"%s( ) %s is incompatible with conversion #%d prototype:\0A\09conversion: %%%s\0A\09 prototype: %s\0A\09  argument: %s\0A\00", align 1
@DT_PRINTF_EXACTLEN = common dso_local global i32 0, align 4
@D_PRINTF_ARG_EXTRA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [76 x i8] c"%s( ) prototype mismatch: only %d arguments required by this format string\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_printf_validate(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_24__* %2, i32 %3, i64 %4, %struct.TYPE_23__* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_23__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca [2 x i8*], align 16
  %24 = alloca i32, align 4
  %25 = alloca [64 x i8], align 16
  %26 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %12, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %13, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %15, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %6
  %45 = load i32, i32* @D_PRINTF_FMT_EMPTY, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %6
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @DTRACEAGG_COUNT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %57

56:                                               ; preds = %48
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i8*, i8** %18, align 8
  %59 = call i64 @dt_type_lookup(i8* %58, %struct.TYPE_19__* %17)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @D_TYPE_ERR, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = call i32 @bzero(%struct.TYPE_23__* %19, i32 8)
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @B_FALSE, align 4
  %72 = call i32 @dt_node_type_assign(%struct.TYPE_23__* %19, i32 %68, i32 %70, i32 %71)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %299, %65
  %74 = load i32, i32* %20, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %305

79:                                               ; preds = %73
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %22, align 8
  store i32 0, i32* %24, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %84 = icmp eq %struct.TYPE_20__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %299

86:                                               ; preds = %79
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, @pfprint_pct
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcat(i32 %94, i32 %97)
  br label %299

99:                                               ; preds = %86
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DT_PFCONV_DYNPREC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %24, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %109
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %110, align 8
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DT_PFCONV_DYNWIDTH, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i32, i32* %24, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %24, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %121
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %111
  br label %124

124:                                              ; preds = %175, %123
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %178

127:                                              ; preds = %124
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %129 = icmp eq %struct.TYPE_23__* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i32, i32* @D_PRINTF_DYN_PROTO, align 4
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %24, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %131, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i8* %132, i32 %134, i32 %137, i8* %142)
  br label %144

144:                                              ; preds = %130, %127
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %146 = call i64 @dt_node_is_integer(%struct.TYPE_23__* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %144
  %149 = load i32, i32* @D_PRINTF_DYN_TYPE, align 4
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* %24, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %166 = trunc i64 %34 to i32
  %167 = call i32 @dt_node_type_name(%struct.TYPE_23__* %165, i8* %36, i32 %166)
  %168 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %149, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0), i8* %150, i32 %154, i32 %156, i8* %161, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %148, %144
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %171, align 8
  store %struct.TYPE_23__* %172, %struct.TYPE_23__** %12, align 8
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %21, align 4
  br label %175

175:                                              ; preds = %169
  %176 = load i32, i32* %24, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %24, align 4
  br label %124

178:                                              ; preds = %124
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @DT_PFCONV_AGG, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @DT_PRINTF_AGGREGATION, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @D_PRINTF_AGG_CONV, align 4
  %192 = load i8*, i8** %14, align 8
  %193 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %191, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i8* %192)
  br label %194

194:                                              ; preds = %190, %185
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %196 = call i32 @strlcpy(i8* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 64)
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %26, align 8
  br label %223

197:                                              ; preds = %178
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %199 = icmp eq %struct.TYPE_23__* %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i32, i32* @D_PRINTF_ARG_PROTO, align 4
  %202 = load i8*, i8** %14, align 8
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %201, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.10, i64 0, i64 0), i8* %202, i32 %204, i32 %207)
  br label %222

209:                                              ; preds = %197
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %211 = load i32, i32* %21, align 4
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %211, %212
  %214 = add nsw i32 %213, 1
  %215 = call i32 @snprintf(i8* %210, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %214)
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %216, %struct.TYPE_23__** %26, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %218, align 8
  store %struct.TYPE_23__* %219, %struct.TYPE_23__** %12, align 8
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %222

222:                                              ; preds = %209, %200
  br label %223

223:                                              ; preds = %222, %194
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, @pfprint_sint
  br i1 %227, label %238, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = icmp eq i32* %231, @pfprint_uint
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = icmp eq i32* %236, @pfprint_dint
  br i1 %237, label %238, label %249

238:                                              ; preds = %233, %228, %223
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %240 = call i32 @dt_node_type_size(%struct.TYPE_23__* %239)
  %241 = sext i32 %240 to i64
  %242 = icmp eq i64 %241, 4
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @strcpy(i32 %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %248

248:                                              ; preds = %243, %238
  br label %266

249:                                              ; preds = %233
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = icmp eq i32* %252, @pfprint_fp
  br i1 %253, label %254, label %265

254:                                              ; preds = %249
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %256 = call i32 @dt_node_type_size(%struct.TYPE_23__* %255)
  %257 = sext i32 %256 to i64
  %258 = icmp eq i64 %257, 16
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @strcpy(i32 %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %264

264:                                              ; preds = %259, %254
  br label %265

265:                                              ; preds = %264, %249
  br label %266

266:                                              ; preds = %265, %248
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @strcat(i32 %269, i32 %272)
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_23__*)** %275, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %280 = call i64 %276(%struct.TYPE_21__* %277, %struct.TYPE_22__* %278, %struct.TYPE_23__* %279)
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %266
  %283 = load i32, i32* @D_PRINTF_ARG_TYPE, align 4
  %284 = load i8*, i8** %14, align 8
  %285 = getelementptr inbounds [64 x i8], [64 x i8]* %25, i64 0, i64 0
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, 1
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %295 = trunc i64 %34 to i32
  %296 = call i32 @dt_node_type_name(%struct.TYPE_23__* %294, i8* %36, i32 %295)
  %297 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %283, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.14, i64 0, i64 0), i8* %284, i8* %285, i32 %287, i32 %290, i32 %293, i32 %296)
  br label %298

298:                                              ; preds = %282, %266
  br label %299

299:                                              ; preds = %298, %91, %85
  %300 = load i32, i32* %20, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %20, align 4
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %303, align 8
  store %struct.TYPE_22__* %304, %struct.TYPE_22__** %13, align 8
  br label %73

305:                                              ; preds = %73
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @DT_PRINTF_EXACTLEN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %312 = icmp ne %struct.TYPE_23__* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i32, i32* @D_PRINTF_ARG_EXTRA, align 4
  %315 = load i8*, i8** %14, align 8
  %316 = load i32, i32* %21, align 4
  %317 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %314, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0), i8* %315, i32 %316)
  br label %318

318:                                              ; preds = %313, %310, %305
  %319 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %319)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #2

declare dso_local i64 @dt_type_lookup(i8*, %struct.TYPE_19__*) #2

declare dso_local i32 @bzero(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_23__*, i32, i32, i32) #2

declare dso_local i32 @strcat(i32, i32) #2

declare dso_local i64 @dt_node_is_integer(%struct.TYPE_23__*) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_23__*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @dt_node_type_size(%struct.TYPE_23__*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
