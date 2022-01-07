; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_builtin_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_builtin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_info = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32** }

@BUILTIN_TYPE_COUNT = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"unknown builtin type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"signed short int\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unsigned short int\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"signed long\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"signed long long\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"long long double\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"QUOTED STRING\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"instruction address\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"short int\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"signed short\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"BCD float type not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ieee_info*, i32*, i32)* @ieee_builtin_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee_builtin_type(%struct.ieee_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.ieee_info* %0, %struct.ieee_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BUILTIN_TYPE_COUNT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %16 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** @DEBUG_TYPE_NULL, align 8
  %24 = icmp ne i32* %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %27 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  br label %201

34:                                               ; preds = %14, %3
  %35 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %36 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp uge i32 %38, 32
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 64
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub i32 %47, 32
  %49 = call i32* @ieee_builtin_type(%struct.ieee_info* %45, i32* %46, i32 %48)
  %50 = call i32* @debug_make_pointer_type(i8* %44, i32* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BUILTIN_TYPE_COUNT, align 4
  %53 = icmp ult i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %58 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* %56, i32** %63, align 8
  %64 = load i32*, i32** %9, align 8
  store i32* %64, i32** %4, align 8
  br label %201

65:                                               ; preds = %40, %34
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %67 [
    i32 136, label %72
    i32 128, label %75
    i32 141, label %78
    i32 134, label %82
    i32 137, label %86
    i32 129, label %90
    i32 140, label %94
    i32 132, label %98
    i32 139, label %102
    i32 131, label %106
    i32 150, label %110
    i32 151, label %113
    i32 146, label %116
    i32 145, label %119
    i32 144, label %122
    i32 149, label %132
    i32 148, label %136
    i32 135, label %140
    i32 133, label %144
    i32 152, label %148
    i32 147, label %152
    i32 143, label %156
    i32 130, label %160
    i32 142, label %164
    i32 138, label %168
    i32 153, label %172
  ]

67:                                               ; preds = %65
  %68 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @ieee_error(%struct.ieee_info* %68, i32* %69, i32 %70)
  store i32* null, i32** %4, align 8
  br label %201

72:                                               ; preds = %65
  %73 = load i8*, i8** %8, align 8
  %74 = call i32* @debug_make_void_type(i8* %73)
  store i32* %74, i32** %9, align 8
  store i8* null, i8** %10, align 8
  br label %178

75:                                               ; preds = %65
  %76 = load i8*, i8** %8, align 8
  %77 = call i32* @debug_make_void_type(i8* %76)
  store i32* %77, i32** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %178

78:                                               ; preds = %65
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32* @debug_make_int_type(i8* %79, i32 1, i32 %80)
  store i32* %81, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %178

82:                                               ; preds = %65
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i32* @debug_make_int_type(i8* %83, i32 1, i32 %84)
  store i32* %85, i32** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %178

86:                                               ; preds = %65
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32* @debug_make_int_type(i8* %87, i32 2, i32 %88)
  store i32* %89, i32** %9, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %178

90:                                               ; preds = %65
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32* @debug_make_int_type(i8* %91, i32 2, i32 %92)
  store i32* %93, i32** %9, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %178

94:                                               ; preds = %65
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32* @debug_make_int_type(i8* %95, i32 4, i32 %96)
  store i32* %97, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %178

98:                                               ; preds = %65
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32* @debug_make_int_type(i8* %99, i32 4, i32 %100)
  store i32* %101, i32** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %178

102:                                              ; preds = %65
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* @FALSE, align 4
  %105 = call i32* @debug_make_int_type(i8* %103, i32 8, i32 %104)
  store i32* %105, i32** %9, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %178

106:                                              ; preds = %65
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i32* @debug_make_int_type(i8* %107, i32 8, i32 %108)
  store i32* %109, i32** %9, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %178

110:                                              ; preds = %65
  %111 = load i8*, i8** %8, align 8
  %112 = call i32* @debug_make_float_type(i8* %111, i32 4)
  store i32* %112, i32** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %178

113:                                              ; preds = %65
  %114 = load i8*, i8** %8, align 8
  %115 = call i32* @debug_make_float_type(i8* %114, i32 8)
  store i32* %115, i32** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %178

116:                                              ; preds = %65
  %117 = load i8*, i8** %8, align 8
  %118 = call i32* @debug_make_float_type(i8* %117, i32 12)
  store i32* %118, i32** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %178

119:                                              ; preds = %65
  %120 = load i8*, i8** %8, align 8
  %121 = call i32* @debug_make_float_type(i8* %120, i32 16)
  store i32* %121, i32** %9, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %178

122:                                              ; preds = %65
  %123 = load i8*, i8** %8, align 8
  %124 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = call i32* @ieee_builtin_type(%struct.ieee_info* %124, i32* %125, i32 152)
  %127 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i32* @ieee_builtin_type(%struct.ieee_info* %127, i32* %128, i32 148)
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32* @debug_make_array_type(i8* %123, i32* %126, i32* %129, i32 0, i32 -1, i32 %130)
  store i32* %131, i32** %9, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %178

132:                                              ; preds = %65
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* @TRUE, align 4
  %135 = call i32* @debug_make_int_type(i8* %133, i32 4, i32 %134)
  store i32* %135, i32** %9, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %178

136:                                              ; preds = %65
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* @FALSE, align 4
  %139 = call i32* @debug_make_int_type(i8* %137, i32 4, i32 %138)
  store i32* %139, i32** %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %178

140:                                              ; preds = %65
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32* @debug_make_int_type(i8* %141, i32 4, i32 %142)
  store i32* %143, i32** %9, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  br label %178

144:                                              ; preds = %65
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32* @debug_make_int_type(i8* %145, i32 4, i32 %146)
  store i32* %147, i32** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %178

148:                                              ; preds = %65
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* @FALSE, align 4
  %151 = call i32* @debug_make_int_type(i8* %149, i32 1, i32 %150)
  store i32* %151, i32** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %178

152:                                              ; preds = %65
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* @FALSE, align 4
  %155 = call i32* @debug_make_int_type(i8* %153, i32 4, i32 %154)
  store i32* %155, i32** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %10, align 8
  br label %178

156:                                              ; preds = %65
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* @FALSE, align 4
  %159 = call i32* @debug_make_int_type(i8* %157, i32 2, i32 %158)
  store i32* %159, i32** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %10, align 8
  br label %178

160:                                              ; preds = %65
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32* @debug_make_int_type(i8* %161, i32 2, i32 %162)
  store i32* %163, i32** %9, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8** %10, align 8
  br label %178

164:                                              ; preds = %65
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* @FALSE, align 4
  %167 = call i32* @debug_make_int_type(i8* %165, i32 2, i32 %166)
  store i32* %167, i32** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %10, align 8
  br label %178

168:                                              ; preds = %65
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32* @debug_make_int_type(i8* %169, i32 2, i32 %170)
  store i32* %171, i32** %9, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8** %10, align 8
  br label %178

172:                                              ; preds = %65
  %173 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %176 = call i32 @ieee_error(%struct.ieee_info* %173, i32* %174, i32 %175)
  %177 = load i32*, i32** @DEBUG_TYPE_NULL, align 8
  store i32* %177, i32** %4, align 8
  br label %201

178:                                              ; preds = %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %122, %119, %116, %113, %110, %106, %102, %98, %94, %90, %86, %82, %78, %75, %72
  %179 = load i8*, i8** %10, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i8*, i8** %8, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = call i32* @debug_name_type(i8* %182, i8* %183, i32* %184)
  store i32* %185, i32** %9, align 8
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @BUILTIN_TYPE_COUNT, align 4
  %189 = icmp ult i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i32*, i32** %9, align 8
  %193 = load %struct.ieee_info*, %struct.ieee_info** %5, align 8
  %194 = getelementptr inbounds %struct.ieee_info, %struct.ieee_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  store i32* %192, i32** %199, align 8
  %200 = load i32*, i32** %9, align 8
  store i32* %200, i32** %4, align 8
  br label %201

201:                                              ; preds = %186, %172, %67, %43, %25
  %202 = load i32*, i32** %4, align 8
  ret i32* %202
}

declare dso_local i32* @debug_make_pointer_type(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee_error(%struct.ieee_info*, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @debug_make_void_type(i8*) #1

declare dso_local i32* @debug_make_int_type(i8*, i32, i32) #1

declare dso_local i32* @debug_make_float_type(i8*, i32) #1

declare dso_local i32* @debug_make_array_type(i8*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @debug_name_type(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
