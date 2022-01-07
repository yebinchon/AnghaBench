; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_subexp_body_standard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_dump_subexp_body_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Type @\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"), value %ld (0x%lx)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"), value %g\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Block @\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c", symbol @\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"History element %ld\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Register %ld\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Internal var @\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Number of args: %d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Bounds [%d:%d]\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Element name: `%.*s'\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Field name: `%.*s'\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Unknown format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_subexp_body_standard(%struct.expression* %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.expression* %0, %struct.expression** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.expression*, %struct.expression** %4, align 8
  %18 = getelementptr inbounds %struct.expression, %struct.expression* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %439 [
    i32 159, label %27
    i32 158, label %27
    i32 157, label %27
    i32 220, label %32
    i32 188, label %32
    i32 194, label %32
    i32 212, label %32
    i32 191, label %32
    i32 195, label %32
    i32 198, label %32
    i32 189, label %32
    i32 200, label %32
    i32 199, label %32
    i32 217, label %32
    i32 216, label %32
    i32 215, label %32
    i32 210, label %32
    i32 193, label %32
    i32 201, label %32
    i32 206, label %32
    i32 202, label %32
    i32 207, label %32
    i32 190, label %32
    i32 219, label %32
    i32 214, label %32
    i32 187, label %32
    i32 208, label %32
    i32 196, label %32
    i32 197, label %32
    i32 203, label %32
    i32 218, label %32
    i32 186, label %32
    i32 204, label %32
    i32 209, label %32
    i32 213, label %32
    i32 205, label %32
    i32 192, label %32
    i32 211, label %32
    i32 138, label %37
    i32 143, label %37
    i32 148, label %37
    i32 145, label %37
    i32 155, label %37
    i32 131, label %37
    i32 133, label %37
    i32 132, label %37
    i32 134, label %37
    i32 130, label %37
    i32 135, label %37
    i32 154, label %37
    i32 149, label %37
    i32 136, label %37
    i32 156, label %37
    i32 147, label %37
    i32 146, label %37
    i32 141, label %37
    i32 139, label %37
    i32 137, label %37
    i32 129, label %37
    i32 142, label %37
    i32 128, label %37
    i32 144, label %37
    i32 153, label %37
    i32 151, label %37
    i32 150, label %37
    i32 173, label %42
    i32 180, label %89
    i32 164, label %128
    i32 174, label %168
    i32 169, label %181
    i32 176, label %194
    i32 177, label %221
    i32 184, label %250
    i32 140, label %292
    i32 152, label %292
    i32 165, label %324
    i32 160, label %353
    i32 161, label %353
    i32 168, label %384
    i32 170, label %440
    i32 163, label %440
    i32 162, label %440
    i32 185, label %440
    i32 178, label %440
    i32 181, label %440
    i32 167, label %440
    i32 183, label %440
    i32 182, label %440
    i32 172, label %440
    i32 166, label %440
    i32 175, label %440
    i32 171, label %440
    i32 179, label %440
  ]

27:                                               ; preds = %3, %3, %3
  %28 = load %struct.expression*, %struct.expression** %4, align 8
  %29 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dump_subexp(%struct.expression* %28, %struct.ui_file* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %27
  %33 = load %struct.expression*, %struct.expression** %4, align 8
  %34 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dump_subexp(%struct.expression* %33, %struct.ui_file* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %32
  %38 = load %struct.expression*, %struct.expression** %4, align 8
  %39 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dump_subexp(%struct.expression* %38, %struct.ui_file* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %443

42:                                               ; preds = %3
  %43 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %44 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.expression*, %struct.expression** %4, align 8
  %46 = getelementptr inbounds %struct.expression, %struct.expression* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %54 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %52, %struct.ui_file* %53)
  %55 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %56 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.expression*, %struct.expression** %4, align 8
  %58 = getelementptr inbounds %struct.expression, %struct.expression* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %66 = call i32 @type_print(%struct.TYPE_6__* %64, i32* null, %struct.ui_file* %65, i32 0)
  %67 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %68 = load %struct.expression*, %struct.expression** %4, align 8
  %69 = getelementptr inbounds %struct.expression, %struct.expression* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.expression*, %struct.expression** %4, align 8
  %78 = getelementptr inbounds %struct.expression, %struct.expression* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %76, i64 %85)
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 3
  store i32 %88, i32* %6, align 4
  br label %443

89:                                               ; preds = %3
  %90 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %91 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.expression*, %struct.expression** %4, align 8
  %93 = getelementptr inbounds %struct.expression, %struct.expression* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %101 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %99, %struct.ui_file* %100)
  %102 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %103 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.expression*, %struct.expression** %4, align 8
  %105 = getelementptr inbounds %struct.expression, %struct.expression* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %113 = call i32 @type_print(%struct.TYPE_6__* %111, i32* null, %struct.ui_file* %112, i32 0)
  %114 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %115 = load %struct.expression*, %struct.expression** %4, align 8
  %116 = getelementptr inbounds %struct.expression, %struct.expression* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = sitofp i64 %123 to double
  %125 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double %124)
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 3
  store i32 %127, i32* %6, align 4
  br label %443

128:                                              ; preds = %3
  %129 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %130 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.expression*, %struct.expression** %4, align 8
  %132 = getelementptr inbounds %struct.expression, %struct.expression* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %140 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %138, %struct.ui_file* %139)
  %141 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %142 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %143 = load %struct.expression*, %struct.expression** %4, align 8
  %144 = getelementptr inbounds %struct.expression, %struct.expression* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %153 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %151, %struct.ui_file* %152)
  %154 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %155 = load %struct.expression*, %struct.expression** %4, align 8
  %156 = getelementptr inbounds %struct.expression, %struct.expression* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.TYPE_6__* %163)
  %165 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 3
  store i32 %167, i32* %6, align 4
  br label %443

168:                                              ; preds = %3
  %169 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %170 = load %struct.expression*, %struct.expression** %4, align 8
  %171 = getelementptr inbounds %struct.expression, %struct.expression* %170, i32 0, i32 0
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 2
  store i32 %180, i32* %6, align 4
  br label %443

181:                                              ; preds = %3
  %182 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %183 = load %struct.expression*, %struct.expression** %4, align 8
  %184 = getelementptr inbounds %struct.expression, %struct.expression* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %6, align 4
  br label %443

194:                                              ; preds = %3
  %195 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %196 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %197 = load %struct.expression*, %struct.expression** %4, align 8
  %198 = getelementptr inbounds %struct.expression, %struct.expression* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %206 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %204, %struct.ui_file* %205)
  %207 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %208 = load %struct.expression*, %struct.expression** %4, align 8
  %209 = getelementptr inbounds %struct.expression, %struct.expression* %208, i32 0, i32 0
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %6, align 4
  br label %443

221:                                              ; preds = %3
  %222 = load %struct.expression*, %struct.expression** %4, align 8
  %223 = getelementptr inbounds %struct.expression, %struct.expression* %222, i32 0, i32 0
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @longest_to_int(i64 %229)
  store i32 %230, i32* %9, align 4
  %231 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %232 = load i32, i32* %9, align 4
  %233 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %231, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 2
  store i32 %235, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %236

236:                                              ; preds = %246, %221
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = add nsw i32 %238, 1
  %240 = icmp sle i32 %237, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %236
  %242 = load %struct.expression*, %struct.expression** %4, align 8
  %243 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @dump_subexp(%struct.expression* %242, %struct.ui_file* %243, i32 %244)
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  br label %236

249:                                              ; preds = %236
  br label %443

250:                                              ; preds = %3
  %251 = load %struct.expression*, %struct.expression** %4, align 8
  %252 = getelementptr inbounds %struct.expression, %struct.expression* %251, i32 0, i32 0
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @longest_to_int(i64 %258)
  store i32 %259, i32* %10, align 4
  %260 = load %struct.expression*, %struct.expression** %4, align 8
  %261 = getelementptr inbounds %struct.expression, %struct.expression* %260, i32 0, i32 0
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @longest_to_int(i64 %268)
  store i32 %269, i32* %11, align 4
  %270 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %271, i32 %272)
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 3
  store i32 %275, i32* %6, align 4
  store i32 1, i32* %12, align 4
  br label %276

276:                                              ; preds = %288, %250
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %10, align 4
  %280 = sub nsw i32 %278, %279
  %281 = add nsw i32 %280, 1
  %282 = icmp sle i32 %277, %281
  br i1 %282, label %283, label %291

283:                                              ; preds = %276
  %284 = load %struct.expression*, %struct.expression** %4, align 8
  %285 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @dump_subexp(%struct.expression* %284, %struct.ui_file* %285, i32 %286)
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %283
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %276

291:                                              ; preds = %276
  br label %443

292:                                              ; preds = %3, %3
  %293 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %294 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %295 = load %struct.expression*, %struct.expression** %4, align 8
  %296 = getelementptr inbounds %struct.expression, %struct.expression* %295, i32 0, i32 0
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %304 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %302, %struct.ui_file* %303)
  %305 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %306 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %305, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %307 = load %struct.expression*, %struct.expression** %4, align 8
  %308 = getelementptr inbounds %struct.expression, %struct.expression* %307, i32 0, i32 0
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %313, align 8
  %315 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %316 = call i32 @type_print(%struct.TYPE_6__* %314, i32* null, %struct.ui_file* %315, i32 0)
  %317 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %318 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %319 = load %struct.expression*, %struct.expression** %4, align 8
  %320 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 2
  %323 = call i32 @dump_subexp(%struct.expression* %319, %struct.ui_file* %320, i32 %322)
  store i32 %323, i32* %6, align 4
  br label %443

324:                                              ; preds = %3
  %325 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %326 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %327 = load %struct.expression*, %struct.expression** %4, align 8
  %328 = getelementptr inbounds %struct.expression, %struct.expression* %327, i32 0, i32 0
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %333, align 8
  %335 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %336 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %334, %struct.ui_file* %335)
  %337 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %338 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %337, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %339 = load %struct.expression*, %struct.expression** %4, align 8
  %340 = getelementptr inbounds %struct.expression, %struct.expression* %339, i32 0, i32 0
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 3
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %345, align 8
  %347 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %348 = call i32 @type_print(%struct.TYPE_6__* %346, i32* null, %struct.ui_file* %347, i32 0)
  %349 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %350 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %351 = load i32, i32* %6, align 4
  %352 = add nsw i32 %351, 2
  store i32 %352, i32* %6, align 4
  br label %443

353:                                              ; preds = %3, %3
  %354 = load %struct.expression*, %struct.expression** %4, align 8
  %355 = getelementptr inbounds %struct.expression, %struct.expression* %354, i32 0, i32 0
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = call i32 @longest_to_int(i64 %361)
  store i32 %362, i32* %14, align 4
  %363 = load %struct.expression*, %struct.expression** %4, align 8
  %364 = getelementptr inbounds %struct.expression, %struct.expression* %363, i32 0, i32 0
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %364, align 8
  %366 = load i32, i32* %6, align 4
  %367 = add nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  store i8* %370, i8** %13, align 8
  %371 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %372 = load i32, i32* %14, align 4
  %373 = load i8*, i8** %13, align 8
  %374 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %371, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %372, i8* %373)
  %375 = load %struct.expression*, %struct.expression** %4, align 8
  %376 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %377 = load i32, i32* %6, align 4
  %378 = add nsw i32 %377, 3
  %379 = load i32, i32* %14, align 4
  %380 = add nsw i32 %379, 1
  %381 = call i32 @BYTES_TO_EXP_ELEM(i32 %380)
  %382 = add nsw i32 %378, %381
  %383 = call i32 @dump_subexp(%struct.expression* %375, %struct.ui_file* %376, i32 %382)
  store i32 %383, i32* %6, align 4
  br label %443

384:                                              ; preds = %3
  %385 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %386 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %385, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %387 = load %struct.expression*, %struct.expression** %4, align 8
  %388 = getelementptr inbounds %struct.expression, %struct.expression* %387, i32 0, i32 0
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %396 = call i32 @gdb_print_host_address(%struct.TYPE_6__* %394, %struct.ui_file* %395)
  %397 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %398 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %397, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %399 = load %struct.expression*, %struct.expression** %4, align 8
  %400 = getelementptr inbounds %struct.expression, %struct.expression* %399, i32 0, i32 0
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 3
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %405, align 8
  %407 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %408 = call i32 @type_print(%struct.TYPE_6__* %406, i32* null, %struct.ui_file* %407, i32 0)
  %409 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %410 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %411 = load %struct.expression*, %struct.expression** %4, align 8
  %412 = getelementptr inbounds %struct.expression, %struct.expression* %411, i32 0, i32 0
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %412, align 8
  %414 = load i32, i32* %6, align 4
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = call i32 @longest_to_int(i64 %419)
  store i32 %420, i32* %16, align 4
  %421 = load %struct.expression*, %struct.expression** %4, align 8
  %422 = getelementptr inbounds %struct.expression, %struct.expression* %421, i32 0, i32 0
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %422, align 8
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, 2
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 1
  store i8* %428, i8** %15, align 8
  %429 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %430 = load i32, i32* %16, align 4
  %431 = load i8*, i8** %15, align 8
  %432 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %429, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %430, i8* %431)
  %433 = load i32, i32* %16, align 4
  %434 = add nsw i32 %433, 1
  %435 = call i32 @BYTES_TO_EXP_ELEM(i32 %434)
  %436 = add nsw i32 4, %435
  %437 = load i32, i32* %6, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %6, align 4
  br label %443

439:                                              ; preds = %3
  br label %440

440:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %439
  %441 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %442 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %441, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %443

443:                                              ; preds = %440, %384, %353, %324, %292, %291, %249, %194, %181, %168, %128, %89, %42, %37
  %444 = load i32, i32* %6, align 4
  ret i32 %444
}

declare dso_local i32 @dump_subexp(%struct.expression*, %struct.ui_file*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @gdb_print_host_address(%struct.TYPE_6__*, %struct.ui_file*) #1

declare dso_local i32 @type_print(%struct.TYPE_6__*, i32*, %struct.ui_file*, i32) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.TYPE_6__*) #1

declare dso_local i32 @longest_to_int(i64) #1

declare dso_local i32 @BYTES_TO_EXP_ELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
