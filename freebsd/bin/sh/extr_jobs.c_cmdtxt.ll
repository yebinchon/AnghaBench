; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdtxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_cmdtxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %union.node* }
%struct.nodelist = type { %struct.nodelist*, %union.node* }
%struct.TYPE_19__ = type { %union.node*, %union.node* }
%struct.TYPE_16__ = type { %struct.nodelist* }
%struct.TYPE_17__ = type { %union.node* }
%struct.TYPE_18__ = type { %union.node*, %union.node* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_24__ = type { %union.node* }
%struct.TYPE_13__ = type { %union.node*, %union.node* }
%struct.TYPE_14__ = type { %union.node* }

@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"if \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"; then \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"while \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"until \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" in ...\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"() ...\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"! \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c">&\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c">|\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<&\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"<<...\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*)* @cmdtxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdtxt(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca %union.node*, align 8
  %4 = alloca %struct.nodelist*, align 8
  store %union.node* %0, %union.node** %2, align 8
  %5 = load %union.node*, %union.node** %2, align 8
  %6 = icmp eq %union.node* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %215

8:                                                ; preds = %1
  %9 = load %union.node*, %union.node** %2, align 8
  %10 = bitcast %union.node* %9 to i32*
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %213 [
    i32 134, label %12
    i32 152, label %22
    i32 137, label %32
    i32 136, label %42
    i32 133, label %66
    i32 135, label %73
    i32 149, label %73
    i32 139, label %78
    i32 129, label %90
    i32 130, label %101
    i32 144, label %112
    i32 148, label %120
    i32 145, label %131
    i32 138, label %138
    i32 146, label %144
    i32 150, label %184
    i32 132, label %190
    i32 151, label %193
    i32 131, label %196
    i32 147, label %199
    i32 143, label %202
    i32 141, label %205
    i32 142, label %208
    i32 140, label %211
    i32 128, label %211
  ]

12:                                               ; preds = %8
  %13 = load %union.node*, %union.node** %2, align 8
  %14 = bitcast %union.node* %13 to %struct.TYPE_19__*
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %union.node*, %union.node** %15, align 8
  call void @cmdtxt(%union.node* %16)
  %17 = call i32 @cmdputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %union.node*, %union.node** %2, align 8
  %19 = bitcast %union.node* %18 to %struct.TYPE_19__*
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %union.node*, %union.node** %20, align 8
  call void @cmdtxt(%union.node* %21)
  br label %215

22:                                               ; preds = %8
  %23 = load %union.node*, %union.node** %2, align 8
  %24 = bitcast %union.node* %23 to %struct.TYPE_19__*
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %union.node*, %union.node** %25, align 8
  call void @cmdtxt(%union.node* %26)
  %27 = call i32 @cmdputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %union.node*, %union.node** %2, align 8
  %29 = bitcast %union.node* %28 to %struct.TYPE_19__*
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %union.node*, %union.node** %30, align 8
  call void @cmdtxt(%union.node* %31)
  br label %215

32:                                               ; preds = %8
  %33 = load %union.node*, %union.node** %2, align 8
  %34 = bitcast %union.node* %33 to %struct.TYPE_19__*
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %union.node*, %union.node** %35, align 8
  call void @cmdtxt(%union.node* %36)
  %37 = call i32 @cmdputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %union.node*, %union.node** %2, align 8
  %39 = bitcast %union.node* %38 to %struct.TYPE_19__*
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %union.node*, %union.node** %40, align 8
  call void @cmdtxt(%union.node* %41)
  br label %215

42:                                               ; preds = %8
  %43 = load %union.node*, %union.node** %2, align 8
  %44 = bitcast %union.node* %43 to %struct.TYPE_16__*
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.nodelist*, %struct.nodelist** %45, align 8
  store %struct.nodelist* %46, %struct.nodelist** %4, align 8
  br label %47

47:                                               ; preds = %61, %42
  %48 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %49 = icmp ne %struct.nodelist* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %52 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %51, i32 0, i32 1
  %53 = load %union.node*, %union.node** %52, align 8
  call void @cmdtxt(%union.node* %53)
  %54 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %55 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %54, i32 0, i32 0
  %56 = load %struct.nodelist*, %struct.nodelist** %55, align 8
  %57 = icmp ne %struct.nodelist* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @cmdputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %50
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %63 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %62, i32 0, i32 0
  %64 = load %struct.nodelist*, %struct.nodelist** %63, align 8
  store %struct.nodelist* %64, %struct.nodelist** %4, align 8
  br label %47

65:                                               ; preds = %47
  br label %215

66:                                               ; preds = %8
  %67 = call i32 @cmdputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %union.node*, %union.node** %2, align 8
  %69 = bitcast %union.node* %68 to %struct.TYPE_17__*
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %union.node*, %union.node** %70, align 8
  call void @cmdtxt(%union.node* %71)
  %72 = call i32 @cmdputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %215

73:                                               ; preds = %8, %8
  %74 = load %union.node*, %union.node** %2, align 8
  %75 = bitcast %union.node* %74 to %struct.TYPE_17__*
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %union.node*, %union.node** %76, align 8
  call void @cmdtxt(%union.node* %77)
  br label %215

78:                                               ; preds = %8
  %79 = call i32 @cmdputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %union.node*, %union.node** %2, align 8
  %81 = bitcast %union.node* %80 to %struct.TYPE_18__*
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %union.node*, %union.node** %82, align 8
  call void @cmdtxt(%union.node* %83)
  %84 = call i32 @cmdputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %union.node*, %union.node** %2, align 8
  %86 = bitcast %union.node* %85 to %struct.TYPE_18__*
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %union.node*, %union.node** %87, align 8
  call void @cmdtxt(%union.node* %88)
  %89 = call i32 @cmdputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %215

90:                                               ; preds = %8
  %91 = call i32 @cmdputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %92 = load %union.node*, %union.node** %2, align 8
  %93 = bitcast %union.node* %92 to %struct.TYPE_19__*
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %union.node*, %union.node** %94, align 8
  call void @cmdtxt(%union.node* %95)
  %96 = load %union.node*, %union.node** %2, align 8
  %97 = bitcast %union.node* %96 to %struct.TYPE_19__*
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load %union.node*, %union.node** %98, align 8
  %100 = call i32 @cmdtxtdogroup(%union.node* %99)
  br label %215

101:                                              ; preds = %8
  %102 = call i32 @cmdputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %103 = load %union.node*, %union.node** %2, align 8
  %104 = bitcast %union.node* %103 to %struct.TYPE_19__*
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %union.node*, %union.node** %105, align 8
  call void @cmdtxt(%union.node* %106)
  %107 = load %union.node*, %union.node** %2, align 8
  %108 = bitcast %union.node* %107 to %struct.TYPE_19__*
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load %union.node*, %union.node** %109, align 8
  %111 = call i32 @cmdtxtdogroup(%union.node* %110)
  br label %215

112:                                              ; preds = %8
  %113 = call i32 @cmdputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %114 = load %union.node*, %union.node** %2, align 8
  %115 = bitcast %union.node* %114 to %struct.TYPE_20__*
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @cmdputs(i8* %117)
  %119 = call i32 @cmdputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %215

120:                                              ; preds = %8
  %121 = call i32 @cmdputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %122 = load %union.node*, %union.node** %2, align 8
  %123 = bitcast %union.node* %122 to %struct.TYPE_23__*
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @cmdputs(i8* %128)
  %130 = call i32 @cmdputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %215

131:                                              ; preds = %8
  %132 = load %union.node*, %union.node** %2, align 8
  %133 = bitcast %union.node* %132 to %struct.TYPE_15__*
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @cmdputs(i8* %135)
  %137 = call i32 @cmdputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %215

138:                                              ; preds = %8
  %139 = call i32 @cmdputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %140 = load %union.node*, %union.node** %2, align 8
  %141 = bitcast %union.node* %140 to %struct.TYPE_24__*
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %union.node*, %union.node** %142, align 8
  call void @cmdtxt(%union.node* %143)
  br label %215

144:                                              ; preds = %8
  %145 = load %union.node*, %union.node** %2, align 8
  %146 = bitcast %union.node* %145 to %struct.TYPE_13__*
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %union.node*, %union.node** %147, align 8
  store %union.node* %148, %union.node** %3, align 8
  br label %149

149:                                              ; preds = %162, %144
  %150 = load %union.node*, %union.node** %3, align 8
  %151 = icmp ne %union.node* %150, null
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load %union.node*, %union.node** %3, align 8
  call void @cmdtxt(%union.node* %153)
  %154 = load %union.node*, %union.node** %3, align 8
  %155 = bitcast %union.node* %154 to %struct.TYPE_15__*
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %union.node*, %union.node** %156, align 8
  %158 = icmp ne %union.node* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 @cmdputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %152
  br label %162

162:                                              ; preds = %161
  %163 = load %union.node*, %union.node** %3, align 8
  %164 = bitcast %union.node* %163 to %struct.TYPE_15__*
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load %union.node*, %union.node** %165, align 8
  store %union.node* %166, %union.node** %3, align 8
  br label %149

167:                                              ; preds = %149
  %168 = load %union.node*, %union.node** %2, align 8
  %169 = bitcast %union.node* %168 to %struct.TYPE_13__*
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %union.node*, %union.node** %170, align 8
  store %union.node* %171, %union.node** %3, align 8
  br label %172

172:                                              ; preds = %178, %167
  %173 = load %union.node*, %union.node** %3, align 8
  %174 = icmp ne %union.node* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = call i32 @cmdputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %177 = load %union.node*, %union.node** %3, align 8
  call void @cmdtxt(%union.node* %177)
  br label %178

178:                                              ; preds = %175
  %179 = load %union.node*, %union.node** %3, align 8
  %180 = bitcast %union.node* %179 to %struct.TYPE_14__*
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %union.node*, %union.node** %181, align 8
  store %union.node* %182, %union.node** %3, align 8
  br label %172

183:                                              ; preds = %172
  br label %215

184:                                              ; preds = %8
  %185 = load %union.node*, %union.node** %2, align 8
  %186 = bitcast %union.node* %185 to %struct.TYPE_15__*
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @cmdputs(i8* %188)
  br label %215

190:                                              ; preds = %8
  %191 = load %union.node*, %union.node** %2, align 8
  %192 = call i32 @cmdtxtredir(%union.node* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 1)
  br label %215

193:                                              ; preds = %8
  %194 = load %union.node*, %union.node** %2, align 8
  %195 = call i32 @cmdtxtredir(%union.node* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 1)
  br label %215

196:                                              ; preds = %8
  %197 = load %union.node*, %union.node** %2, align 8
  %198 = call i32 @cmdtxtredir(%union.node* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 1)
  br label %215

199:                                              ; preds = %8
  %200 = load %union.node*, %union.node** %2, align 8
  %201 = call i32 @cmdtxtredir(%union.node* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 1)
  br label %215

202:                                              ; preds = %8
  %203 = load %union.node*, %union.node** %2, align 8
  %204 = call i32 @cmdtxtredir(%union.node* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 0)
  br label %215

205:                                              ; preds = %8
  %206 = load %union.node*, %union.node** %2, align 8
  %207 = call i32 @cmdtxtredir(%union.node* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 0)
  br label %215

208:                                              ; preds = %8
  %209 = load %union.node*, %union.node** %2, align 8
  %210 = call i32 @cmdtxtredir(%union.node* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 0)
  br label %215

211:                                              ; preds = %8, %8
  %212 = call i32 @cmdputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  br label %215

213:                                              ; preds = %8
  %214 = call i32 @cmdputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %215

215:                                              ; preds = %7, %213, %211, %208, %205, %202, %199, %196, %193, %190, %184, %183, %138, %131, %120, %112, %101, %90, %78, %73, %66, %65, %32, %22, %12
  ret void
}

declare dso_local i32 @cmdputs(i8*) #1

declare dso_local i32 @cmdtxtdogroup(%union.node*) #1

declare dso_local i32 @cmdtxtredir(%union.node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
