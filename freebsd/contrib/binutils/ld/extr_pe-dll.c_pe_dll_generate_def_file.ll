; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_generate_def_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_generate_def_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__*, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: Can't open output def file %s\0A\00", align 1
@program_name = common dso_local global i32 0, align 4
@pe_def_file = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"LIBRARY \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"NAME \00", align 1
@output_bfd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" BASE=0x%lx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"DESCRIPTION \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"VERSION %d.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"VERSION %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"STACKSIZE 0x%x,0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"STACKSIZE 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"HEAPSIZE 0x%x,0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"HEAPSIZE 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"\0ASECTIONS\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c" CLASS \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" READ\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" WRITE\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c" EXECUTE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c" SHARED\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"EXPORTS\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" @%d\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c" PRIVATE\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c" CONSTANT\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" NONAME\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" DATA\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"\0AIMPORTS\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"; no contents available\0A\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [29 x i8] c"%P: Error closing file `%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_dll_generate_def_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @program_name, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 (i8*, i8*, ...) @einfo(i8* %12, i8* %15, i8* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %456

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 13
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %37

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @quoteput(i64 %40, i32* %41, i32 1)
  %43 = load i32, i32* @output_bfd, align 4
  %44 = call %struct.TYPE_14__* @pe_data(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @output_bfd, align 4
  %52 = call %struct.TYPE_14__* @pe_data(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %49, %37
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %21
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 12
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 12
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @quoteput(i64 %70, i32* %71, i32 1)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32 %87)
  br label %101

89:                                               ; preds = %75
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %80
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106, %101
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %123, i32 %126)
  br label %140

128:                                              ; preds = %114
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %133, %128
  br label %140

140:                                              ; preds = %139, %119
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, -1
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %149, i32 %152)
  br label %166

154:                                              ; preds = %140
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32*, i32** %4, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %159, %154
  br label %166

166:                                              ; preds = %165, %145
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %274

171:                                              ; preds = %166
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %270, %171
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %273

180:                                              ; preds = %174
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 11
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @quoteput(i64 %190, i32* %191, i32 0)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 11
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %180
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 11
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @quoteput(i64 %212, i32* %213, i32 0)
  br label %215

215:                                              ; preds = %202, %180
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 11
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %215
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %215
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 11
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %228
  %239 = load i32*, i32** %4, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %228
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 11
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %241
  %252 = load i32*, i32** %4, align 8
  %253 = call i32 (i32*, i8*, ...) @fprintf(i32* %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %241
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 11
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = load i32, i32* %3, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %254
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 (i32*, i8*, ...) @fprintf(i32* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %254
  %268 = load i32*, i32** %4, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %3, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %3, align 4
  br label %174

273:                                              ; preds = %174
  br label %274

274:                                              ; preds = %273, %166
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %373

279:                                              ; preds = %274
  %280 = load i32*, i32** %4, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %369, %279
  %283 = load i32, i32* %3, align 4
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 7
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %372

288:                                              ; preds = %282
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 10
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i64 %293
  store %struct.TYPE_12__* %294, %struct.TYPE_12__** %5, align 8
  %295 = load i32*, i32** %4, align 8
  %296 = call i32 (i32*, i8*, ...) @fprintf(i32* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 6
  %299 = load i64, i64* %298, align 8
  %300 = load i32*, i32** %4, align 8
  %301 = call i32 @quoteput(i64 %299, i32* %300, i32 0)
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %323

306:                                              ; preds = %288
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 6
  %312 = load i64, i64* %311, align 8
  %313 = call i64 @strcmp(i64 %309, i64 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %306
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 (i32*, i8*, ...) @fprintf(i32* %316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 5
  %320 = load i64, i64* %319, align 8
  %321 = load i32*, i32** %4, align 8
  %322 = call i32 @quoteput(i64 %320, i32* %321, i32 0)
  br label %323

323:                                              ; preds = %315, %306, %288
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, -1
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load i32*, i32** %4, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i32*, i8*, ...) @fprintf(i32* %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %328, %323
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 (i32*, i8*, ...) @fprintf(i32* %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %334
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load i32*, i32** %4, align 8
  %349 = call i32 (i32*, i8*, ...) @fprintf(i32* %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %350

350:                                              ; preds = %347, %342
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load i32*, i32** %4, align 8
  %357 = call i32 (i32*, i8*, ...) @fprintf(i32* %356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  br label %358

358:                                              ; preds = %355, %350
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load i32*, i32** %4, align 8
  %365 = call i32 (i32*, i8*, ...) @fprintf(i32* %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %366

366:                                              ; preds = %363, %358
  %367 = load i32*, i32** %4, align 8
  %368 = call i32 (i32*, i8*, ...) @fprintf(i32* %367, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %3, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %3, align 4
  br label %282

372:                                              ; preds = %282
  br label %373

373:                                              ; preds = %372, %274
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 8
  %376 = load i32, i32* %375, align 8
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %455

378:                                              ; preds = %373
  %379 = load i32*, i32** %4, align 8
  %380 = call i32 (i32*, i8*, ...) @fprintf(i32* %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %381

381:                                              ; preds = %451, %378
  %382 = load i32, i32* %3, align 4
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 8
  %385 = load i32, i32* %384, align 8
  %386 = icmp slt i32 %382, %385
  br i1 %386, label %387, label %454

387:                                              ; preds = %381
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pe_def_file, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 9
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %389, align 8
  %391 = load i32, i32* %3, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i64 %392
  store %struct.TYPE_11__* %393, %struct.TYPE_11__** %6, align 8
  %394 = load i32*, i32** %4, align 8
  %395 = call i32 (i32*, i8*, ...) @fprintf(i32* %394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %422

400:                                              ; preds = %387
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %400
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = call i64 @strcmp(i64 %408, i64 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %405, %400
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i32 0, i32 3
  %417 = load i64, i64* %416, align 8
  %418 = load i32*, i32** %4, align 8
  %419 = call i32 @quoteput(i64 %417, i32* %418, i32 0)
  %420 = load i32*, i32** %4, align 8
  %421 = call i32 (i32*, i8*, ...) @fprintf(i32* %420, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %422

422:                                              ; preds = %414, %405, %387
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i32*, i32** %4, align 8
  %429 = call i32 @quoteput(i64 %427, i32* %428, i32 0)
  %430 = load i32*, i32** %4, align 8
  %431 = call i32 (i32*, i8*, ...) @fprintf(i32* %430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %442

436:                                              ; preds = %422
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load i32*, i32** %4, align 8
  %441 = call i32 @quoteput(i64 %439, i32* %440, i32 0)
  br label %448

442:                                              ; preds = %422
  %443 = load i32*, i32** %4, align 8
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i32 (i32*, i8*, ...) @fprintf(i32* %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 %446)
  br label %448

448:                                              ; preds = %442, %436
  %449 = load i32*, i32** %4, align 8
  %450 = call i32 (i32*, i8*, ...) @fprintf(i32* %449, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %451

451:                                              ; preds = %448
  %452 = load i32, i32* %3, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %3, align 4
  br label %381

454:                                              ; preds = %381
  br label %455

455:                                              ; preds = %454, %373
  br label %460

456:                                              ; preds = %18
  %457 = load i32*, i32** %4, align 8
  %458 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %459 = call i32 (i32*, i8*, ...) @fprintf(i32* %457, i8* %458)
  br label %460

460:                                              ; preds = %456, %455
  %461 = load i32*, i32** %4, align 8
  %462 = call i64 @fclose(i32* %461)
  %463 = load i64, i64* @EOF, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %469

465:                                              ; preds = %460
  %466 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %467 = load i8*, i8** %2, align 8
  %468 = call i32 (i8*, i8*, ...) @einfo(i8* %466, i8* %467)
  br label %469

469:                                              ; preds = %465, %460
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @einfo(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @quoteput(i64, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @pe_data(i32) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
