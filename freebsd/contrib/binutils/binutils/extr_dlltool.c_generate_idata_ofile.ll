; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_generate_idata_ofile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_generate_idata_ofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_5__* }

@import_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s Import data sections\0A\00", align 1
@ASM_C = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"\0A\09.section\09.idata$2\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09%s\09doi_idata\0A\00", align 1
@ASM_GLOBAL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"doi_idata:\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\09%slistone%d%s\09%s %s\0A\00", align 1
@ASM_RVA_BEFORE = common dso_local global i8* null, align 8
@ASM_RVA_AFTER = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"\09%s\090\0A\00", align 1
@ASM_LONG = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"\09%sdllname%d%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09%slisttwo%d%s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\0A\09.section\09.idata$4\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"listone%d:\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09%sfuncptr%d_%d%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\0A\09.section\09.idata$5\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"listtwo%d:\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0A\09.section\09.idata$6\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"funcptr%d_%d:\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\09%s\09%d\0A\00", align 1
@ASM_SHORT = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"\09%s\09\22%s\22\0A\00", align 1
@ASM_TEXT = common dso_local global i8* null, align 8
@ASM_BYTE = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"\0A\09.section\09.idata$7\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"dllname%d:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @generate_idata_ofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_idata_ofile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %221

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i8*, i8** @ASM_C, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = load i8*, i8** @ASM_GLOBAL, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  br label %23

23:                                               ; preds = %54, %11
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32*, i32** %2, align 8
  %28 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %31 = load i8*, i8** @ASM_C, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %28, i32 %29, i8* %30, i8* %31, i8* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i8*, i8** @ASM_LONG, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i8*, i8** @ASM_LONG, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %43, i32 %44, i8* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %48, i32 %49, i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %26
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %3, align 8
  br label %23

58:                                               ; preds = %23
  %59 = load i32*, i32** %2, align 8
  %60 = load i8*, i8** @ASM_LONG, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i8*, i8** @ASM_LONG, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = load i8*, i8** @ASM_LONG, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i8*, i8** @ASM_LONG, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i8*, i8** @ASM_LONG, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %3, align 8
  br label %77

77:                                               ; preds = %106, %58
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load i32*, i32** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %97, %80
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32*, i32** %2, align 8
  %92 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %92, i32 %93, i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load i32*, i32** %2, align 8
  %102 = load i8*, i8** @ASM_LONG, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %3, align 8
  br label %77

110:                                              ; preds = %77
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %3, align 8
  br label %114

114:                                              ; preds = %143, %110
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %147

117:                                              ; preds = %114
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %119)
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %134, %117
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i32*, i32** %2, align 8
  %129 = load i8*, i8** @ASM_RVA_BEFORE, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i8*, i8** @ASM_RVA_AFTER, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %129, i32 %130, i32 %131, i8* %132)
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %121

137:                                              ; preds = %121
  %138 = load i32*, i32** %2, align 8
  %139 = load i8*, i8** @ASM_LONG, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %3, align 8
  br label %114

147:                                              ; preds = %114
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  store %struct.TYPE_4__* %150, %struct.TYPE_4__** %3, align 8
  br label %151

151:                                              ; preds = %191, %147
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = icmp ne %struct.TYPE_4__* %152, null
  br i1 %153, label %154, label %195

154:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %4, align 8
  br label %158

158:                                              ; preds = %184, %154
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = icmp ne %struct.TYPE_5__* %159, null
  br i1 %160, label %161, label %188

161:                                              ; preds = %158
  %162 = load i32*, i32** %2, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %163, i32 %164)
  %166 = load i32*, i32** %2, align 8
  %167 = load i8*, i8** @ASM_SHORT, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, 65535
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %167, i32 %171)
  %173 = load i32*, i32** %2, align 8
  %174 = load i8*, i8** @ASM_TEXT, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %174, i8* %177)
  %179 = load i32*, i32** %2, align 8
  %180 = load i8*, i8** @ASM_BYTE, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %161
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  store %struct.TYPE_5__* %187, %struct.TYPE_5__** %4, align 8
  br label %158

188:                                              ; preds = %158
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  store %struct.TYPE_4__* %194, %struct.TYPE_4__** %3, align 8
  br label %151

195:                                              ; preds = %151
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @import_list, align 8
  store %struct.TYPE_4__* %198, %struct.TYPE_4__** %3, align 8
  br label %199

199:                                              ; preds = %217, %195
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %201 = icmp ne %struct.TYPE_4__* %200, null
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  %203 = load i32*, i32** %2, align 8
  %204 = load i32, i32* %5, align 4
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %2, align 8
  %207 = load i8*, i8** @ASM_TEXT, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %207, i8* %210)
  %212 = load i32*, i32** %2, align 8
  %213 = load i8*, i8** @ASM_BYTE, align 8
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %213)
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %202
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  store %struct.TYPE_4__* %220, %struct.TYPE_4__** %3, align 8
  br label %199

221:                                              ; preds = %10, %199
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
