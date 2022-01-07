; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_type_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c_ecoff_type_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%union.aux_ext = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.qual = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %union.aux_ext* }

@ecoff_type_to_string.buffer2 = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"-1 (no type)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"subrange\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"double complex\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"forward/unamed typedef\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"fixed decimal\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"float decimal\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Unknown basic type %d\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c" : %d\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ptr to \00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"far \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"func. ret. \00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"array [\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"%ld:%ld {%ld bits}\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%ld {%ld bits}\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" {%ld bits}\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"] of \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_9__*, i32)* @ecoff_type_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ecoff_type_to_string(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.aux_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca [7 x %struct.qual], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %21, i8** %15, align 8
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ecoff_type_to_string.buffer2, i64 0, i64 0), i8** %16, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_11__* @ecoff_data(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %union.aux_ext*, %union.aux_ext** %25, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %26, i64 %30
  store %union.aux_ext* %31, %union.aux_ext** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %51, %3
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 7
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.qual, %struct.qual* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.qual, %struct.qual* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.qual, %struct.qual* %49, i32 0, i32 3
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  %56 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %56, i64 %58
  %60 = call i64 @AUX_GET_ISYM(i32 %55, %union.aux_ext* %59)
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %478

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %65, i64 %68
  %70 = bitcast %union.aux_ext* %69 to i32*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %72 = call i32 @_bfd_ecoff_swap_tir_in(i32 %64, i32* %70, %struct.TYPE_12__* %71)
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 0
  %80 = getelementptr inbounds %struct.qual, %struct.qual* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 16
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 1
  %85 = getelementptr inbounds %struct.qual, %struct.qual* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 16
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 2
  %90 = getelementptr inbounds %struct.qual, %struct.qual* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 16
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 3
  %95 = getelementptr inbounds %struct.qual, %struct.qual* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 16
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 4
  %100 = getelementptr inbounds %struct.qual, %struct.qual* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 16
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 5
  %105 = getelementptr inbounds %struct.qual, %struct.qual* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 16
  %106 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 6
  %107 = getelementptr inbounds %struct.qual, %struct.qual* %106, i32 0, i32 0
  store i32 131, i32* %107, align 16
  %108 = load i32, i32* %12, align 4
  switch i32 %108, label %244 [
    i32 148, label %109
    i32 161, label %112
    i32 159, label %115
    i32 140, label %118
    i32 144, label %121
    i32 137, label %124
    i32 150, label %127
    i32 139, label %130
    i32 149, label %133
    i32 138, label %136
    i32 153, label %139
    i32 156, label %142
    i32 142, label %145
    i32 136, label %166
    i32 155, label %187
    i32 141, label %208
    i32 146, label %211
    i32 145, label %214
    i32 158, label %217
    i32 157, label %220
    i32 151, label %223
    i32 154, label %226
    i32 152, label %229
    i32 143, label %232
    i32 160, label %235
    i32 147, label %238
    i32 135, label %241
  ]

109:                                              ; preds = %63
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @strcpy(i8* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %250

112:                                              ; preds = %63
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 @strcpy(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %250

115:                                              ; preds = %63
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @strcpy(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %250

118:                                              ; preds = %63
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 @strcpy(i8* %119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %250

121:                                              ; preds = %63
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @strcpy(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %250

124:                                              ; preds = %63
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @strcpy(i8* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %250

127:                                              ; preds = %63
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @strcpy(i8* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %250

130:                                              ; preds = %63
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @strcpy(i8* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %250

133:                                              ; preds = %63
  %134 = load i8*, i8** %15, align 8
  %135 = call i32 @strcpy(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %250

136:                                              ; preds = %63
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @strcpy(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %250

139:                                              ; preds = %63
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @strcpy(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %250

142:                                              ; preds = %63
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 @strcpy(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %250

145:                                              ; preds = %63
  %146 = load i32, i32* %9, align 4
  %147 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %147, i64 %149
  %151 = bitcast %union.aux_ext* %150 to i32*
  %152 = call i32 @_bfd_ecoff_swap_rndx_in(i32 %146, i32* %151, i32* %17)
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %158 = load i32, i32* %7, align 4
  %159 = add i32 %158, 1
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %157, i64 %160
  %162 = call i64 @AUX_GET_ISYM(i32 %156, %union.aux_ext* %161)
  %163 = call i32 @ecoff_emit_aggregate(i32* %153, %struct.TYPE_9__* %154, i8* %155, i32* %17, i64 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %164 = load i32, i32* %7, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %250

166:                                              ; preds = %63
  %167 = load i32, i32* %9, align 4
  %168 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %169 = load i32, i32* %7, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %168, i64 %170
  %172 = bitcast %union.aux_ext* %171 to i32*
  %173 = call i32 @_bfd_ecoff_swap_rndx_in(i32 %167, i32* %172, i32* %17)
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %179 = load i32, i32* %7, align 4
  %180 = add i32 %179, 1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %178, i64 %181
  %183 = call i64 @AUX_GET_ISYM(i32 %177, %union.aux_ext* %182)
  %184 = call i32 @ecoff_emit_aggregate(i32* %174, %struct.TYPE_9__* %175, i8* %176, i32* %17, i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %185 = load i32, i32* %7, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %250

187:                                              ; preds = %63
  %188 = load i32, i32* %9, align 4
  %189 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %190 = load i32, i32* %7, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %189, i64 %191
  %193 = bitcast %union.aux_ext* %192 to i32*
  %194 = call i32 @_bfd_ecoff_swap_rndx_in(i32 %188, i32* %193, i32* %17)
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %200 = load i32, i32* %7, align 4
  %201 = add i32 %200, 1
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %199, i64 %202
  %204 = call i64 @AUX_GET_ISYM(i32 %198, %union.aux_ext* %203)
  %205 = call i32 @ecoff_emit_aggregate(i32* %195, %struct.TYPE_9__* %196, i8* %197, i32* %17, i64 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %206 = load i32, i32* %7, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %250

208:                                              ; preds = %63
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 @strcpy(i8* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %250

211:                                              ; preds = %63
  %212 = load i8*, i8** %15, align 8
  %213 = call i32 @strcpy(i8* %212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %250

214:                                              ; preds = %63
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 @strcpy(i8* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %250

217:                                              ; preds = %63
  %218 = load i8*, i8** %15, align 8
  %219 = call i32 @strcpy(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %250

220:                                              ; preds = %63
  %221 = load i8*, i8** %15, align 8
  %222 = call i32 @strcpy(i8* %221, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %250

223:                                              ; preds = %63
  %224 = load i8*, i8** %15, align 8
  %225 = call i32 @strcpy(i8* %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  br label %250

226:                                              ; preds = %63
  %227 = load i8*, i8** %15, align 8
  %228 = call i32 @strcpy(i8* %227, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %250

229:                                              ; preds = %63
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @strcpy(i8* %230, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  br label %250

232:                                              ; preds = %63
  %233 = load i8*, i8** %15, align 8
  %234 = call i32 @strcpy(i8* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %250

235:                                              ; preds = %63
  %236 = load i8*, i8** %15, align 8
  %237 = call i32 @strcpy(i8* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %250

238:                                              ; preds = %63
  %239 = load i8*, i8** %15, align 8
  %240 = call i32 @strcpy(i8* %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %250

241:                                              ; preds = %63
  %242 = load i8*, i8** %15, align 8
  %243 = call i32 @strcpy(i8* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %250

244:                                              ; preds = %63
  %245 = load i8*, i8** %15, align 8
  %246 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0))
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %245, i8* %246, i64 %248)
  br label %250

250:                                              ; preds = %244, %241, %238, %235, %232, %229, %226, %223, %220, %217, %214, %211, %208, %187, %166, %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109
  %251 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %252 = call i32 @strlen(i8* %251)
  %253 = load i8*, i8** %15, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  store i8* %255, i8** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 7
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %250
  %261 = load i32, i32* %9, align 4
  %262 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %263 = load i32, i32* %7, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %7, align 4
  %265 = zext i32 %263 to i64
  %266 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %262, i64 %265
  %267 = call i8* @AUX_GET_WIDTH(i32 %261, %union.aux_ext* %266)
  %268 = ptrtoint i8* %267 to i32
  store i32 %268, i32* %18, align 4
  %269 = load i8*, i8** %15, align 8
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i64 %271)
  %273 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %274 = call i32 @strlen(i8* %273)
  %275 = load i8*, i8** %15, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %15, align 8
  br label %278

278:                                              ; preds = %260, %250
  %279 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 0
  %280 = getelementptr inbounds %struct.qual, %struct.qual* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 16
  %282 = icmp ne i32 %281, 131
  br i1 %282, label %283, label %474

283:                                              ; preds = %278
  store i32 0, i32* %13, align 4
  br label %284

284:                                              ; preds = %332, %283
  %285 = load i32, i32* %13, align 4
  %286 = icmp slt i32 %285, 7
  br i1 %286, label %287, label %335

287:                                              ; preds = %284
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.qual, %struct.qual* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 16
  %293 = icmp eq i32 %292, 134
  br i1 %293, label %294, label %331

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %297 = load i32, i32* %7, align 4
  %298 = add i32 %297, 2
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %296, i64 %299
  %301 = call i32 @AUX_GET_DNLOW(i32 %295, %union.aux_ext* %300)
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.qual, %struct.qual* %304, i32 0, i32 1
  store i32 %301, i32* %305, align 4
  %306 = load i32, i32* %9, align 4
  %307 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %308 = load i32, i32* %7, align 4
  %309 = add i32 %308, 3
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %307, i64 %310
  %312 = call i32 @AUX_GET_DNHIGH(i32 %306, %union.aux_ext* %311)
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %314
  %316 = getelementptr inbounds %struct.qual, %struct.qual* %315, i32 0, i32 2
  store i32 %312, i32* %316, align 8
  %317 = load i32, i32* %9, align 4
  %318 = load %union.aux_ext*, %union.aux_ext** %8, align 8
  %319 = load i32, i32* %7, align 4
  %320 = add i32 %319, 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %318, i64 %321
  %323 = call i8* @AUX_GET_WIDTH(i32 %317, %union.aux_ext* %322)
  %324 = ptrtoint i8* %323 to i32
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %326
  %328 = getelementptr inbounds %struct.qual, %struct.qual* %327, i32 0, i32 3
  store i32 %324, i32* %328, align 4
  %329 = load i32, i32* %7, align 4
  %330 = add i32 %329, 5
  store i32 %330, i32* %7, align 4
  br label %331

331:                                              ; preds = %294, %287
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %284

335:                                              ; preds = %284
  store i32 0, i32* %13, align 4
  br label %336

336:                                              ; preds = %470, %335
  %337 = load i32, i32* %13, align 4
  %338 = icmp slt i32 %337, 6
  br i1 %338, label %339, label %473

339:                                              ; preds = %336
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %341
  %343 = getelementptr inbounds %struct.qual, %struct.qual* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 16
  switch i32 %344, label %469 [
    i32 131, label %345
    i32 132, label %345
    i32 129, label %346
    i32 128, label %351
    i32 133, label %356
    i32 130, label %361
    i32 134, label %366
  ]

345:                                              ; preds = %339, %339
  br label %469

346:                                              ; preds = %339
  %347 = load i8*, i8** %16, align 8
  %348 = call i32 @strcpy(i8* %347, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %349 = load i8*, i8** %16, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 7
  store i8* %350, i8** %16, align 8
  br label %469

351:                                              ; preds = %339
  %352 = load i8*, i8** %16, align 8
  %353 = call i32 @strcpy(i8* %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %354 = load i8*, i8** %16, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 9
  store i8* %355, i8** %16, align 8
  br label %469

356:                                              ; preds = %339
  %357 = load i8*, i8** %16, align 8
  %358 = call i32 @strcpy(i8* %357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %359 = load i8*, i8** %16, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 4
  store i8* %360, i8** %16, align 8
  br label %469

361:                                              ; preds = %339
  %362 = load i8*, i8** %16, align 8
  %363 = call i32 @strcpy(i8* %362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %364 = load i8*, i8** %16, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 12
  store i8* %365, i8** %16, align 8
  br label %469

366:                                              ; preds = %339
  %367 = load i32, i32* %13, align 4
  store i32 %367, i32* %19, align 4
  br label %368

368:                                              ; preds = %381, %366
  %369 = load i32, i32* %13, align 4
  %370 = icmp slt i32 %369, 5
  br i1 %370, label %371, label %379

371:                                              ; preds = %368
  %372 = load i32, i32* %13, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %374
  %376 = getelementptr inbounds %struct.qual, %struct.qual* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 16
  %378 = icmp eq i32 %377, 134
  br label %379

379:                                              ; preds = %371, %368
  %380 = phi i1 [ false, %368 ], [ %378, %371 ]
  br i1 %380, label %381, label %384

381:                                              ; preds = %379
  %382 = load i32, i32* %13, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %13, align 4
  br label %368

384:                                              ; preds = %379
  %385 = load i32, i32* %13, align 4
  store i32 %385, i32* %20, align 4
  br label %386

386:                                              ; preds = %465, %384
  %387 = load i32, i32* %20, align 4
  %388 = load i32, i32* %19, align 4
  %389 = icmp sge i32 %387, %388
  br i1 %389, label %390, label %468

390:                                              ; preds = %386
  %391 = load i8*, i8** %16, align 8
  %392 = call i32 @strcpy(i8* %391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  %393 = load i8*, i8** %16, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 7
  store i8* %394, i8** %16, align 8
  %395 = load i32, i32* %20, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %396
  %398 = getelementptr inbounds %struct.qual, %struct.qual* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %422

401:                                              ; preds = %390
  %402 = load i8*, i8** %16, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %404
  %406 = getelementptr inbounds %struct.qual, %struct.qual* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = load i32, i32* %20, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %410
  %412 = getelementptr inbounds %struct.qual, %struct.qual* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = load i32, i32* %20, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %416
  %418 = getelementptr inbounds %struct.qual, %struct.qual* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %402, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i64 %408, i64 %414, i64 %420)
  br label %455

422:                                              ; preds = %390
  %423 = load i32, i32* %20, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.qual, %struct.qual* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %427, -1
  br i1 %428, label %429, label %445

429:                                              ; preds = %422
  %430 = load i8*, i8** %16, align 8
  %431 = load i32, i32* %20, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %432
  %434 = getelementptr inbounds %struct.qual, %struct.qual* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %20, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %439
  %441 = getelementptr inbounds %struct.qual, %struct.qual* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  %444 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %430, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 %437, i64 %443)
  br label %454

445:                                              ; preds = %422
  %446 = load i8*, i8** %16, align 8
  %447 = load i32, i32* %20, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [7 x %struct.qual], [7 x %struct.qual]* %11, i64 0, i64 %448
  %450 = getelementptr inbounds %struct.qual, %struct.qual* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  %453 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %446, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i64 %452)
  br label %454

454:                                              ; preds = %445, %429
  br label %455

455:                                              ; preds = %454, %401
  %456 = load i8*, i8** %16, align 8
  %457 = call i32 @strlen(i8* %456)
  %458 = load i8*, i8** %16, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i8, i8* %458, i64 %459
  store i8* %460, i8** %16, align 8
  %461 = load i8*, i8** %16, align 8
  %462 = call i32 @strcpy(i8* %461, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0))
  %463 = load i8*, i8** %16, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 5
  store i8* %464, i8** %16, align 8
  br label %465

465:                                              ; preds = %455
  %466 = load i32, i32* %20, align 4
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %20, align 4
  br label %386

468:                                              ; preds = %386
  br label %469

469:                                              ; preds = %339, %468, %361, %356, %351, %346, %345
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %13, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %13, align 4
  br label %336

473:                                              ; preds = %336
  br label %474

474:                                              ; preds = %473, %278
  %475 = load i8*, i8** %16, align 8
  %476 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %477 = call i32 @strcpy(i8* %475, i8* %476)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ecoff_type_to_string.buffer2, i64 0, i64 0), i8** %4, align 8
  br label %478

478:                                              ; preds = %474, %62
  %479 = load i8*, i8** %4, align 8
  ret i8* %479
}

declare dso_local %struct.TYPE_11__* @ecoff_data(i32*) #1

declare dso_local i64 @AUX_GET_ISYM(i32, %union.aux_ext*) #1

declare dso_local i32 @_bfd_ecoff_swap_tir_in(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @_bfd_ecoff_swap_rndx_in(i32, i32*, i32*) #1

declare dso_local i32 @ecoff_emit_aggregate(i32*, %struct.TYPE_9__*, i8*, i32*, i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @AUX_GET_WIDTH(i32, %union.aux_ext*) #1

declare dso_local i32 @AUX_GET_DNLOW(i32, %union.aux_ext*) #1

declare dso_local i32 @AUX_GET_DNHIGH(i32, %union.aux_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
