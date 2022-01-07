; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_v3_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }
%struct.demangle_component = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.demangle_component*, %struct.demangle_component* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unrecognized demangle component %d\0A\00", align 1
@DEBUG_FIELD_NULL = common dso_local global i32 0, align 4
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to print demangled template\0A\00", align 1
@DEBUG_KIND_CLASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Couldn't get demangled builtin type\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Unexpected demangled varargs\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Unrecognized demangled builtin type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.stab_handle*, %struct.demangle_component*, i32*, i32*)* @stab_demangle_v3_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stab_demangle_v3_arg(i8* %0, %struct.stab_handle* %1, %struct.demangle_component* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store %struct.demangle_component* %2, %struct.demangle_component** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %30 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %33 [
    i32 143, label %32
    i32 132, label %32
    i32 133, label %32
    i32 148, label %32
    i32 147, label %32
    i32 144, label %32
    i32 136, label %32
    i32 128, label %32
    i32 149, label %32
    i32 130, label %32
    i32 151, label %32
    i32 145, label %32
    i32 131, label %32
    i32 153, label %32
    i32 140, label %32
    i32 154, label %32
    i32 142, label %40
    i32 139, label %115
    i32 134, label %138
    i32 135, label %161
    i32 137, label %176
    i32 129, label %176
    i32 150, label %176
    i32 141, label %176
    i32 138, label %176
    i32 146, label %212
    i32 152, label %253
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %33

33:                                               ; preds = %28, %32
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %37 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35, i32 %38)
  store i32* null, i32** %6, align 8
  br label %462

40:                                               ; preds = %28
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %100

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @debug_get_fields(i8* %44, i32* %45)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %99

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %95, %49
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DEBUG_FIELD_NULL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @debug_get_field_type(i8* %56, i32 %58)
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32* null, i32** %6, align 8
  br label %462

63:                                               ; preds = %55
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i8* @debug_get_type_name(i8* %64, i32* %65)
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %73 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %71, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %81 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %86 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @strncmp(i8* %79, i8* %84, i32 %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32*, i32** %14, align 8
  store i32* %93, i32** %6, align 8
  br label %462

94:                                               ; preds = %78, %69, %63
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %13, align 8
  br label %50

98:                                               ; preds = %50
  br label %99

99:                                               ; preds = %98, %43
  br label %100

100:                                              ; preds = %99, %40
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %103 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %104 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %109 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %114 = call i32* @stab_find_tagged_type(i8* %101, %struct.stab_handle* %102, i8* %107, i32 %112, i32 %113)
  store i32* %114, i32** %6, align 8
  br label %462

115:                                              ; preds = %28
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %118 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %119 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.demangle_component*, %struct.demangle_component** %121, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = call i32* @stab_demangle_v3_arg(i8* %116, %struct.stab_handle* %117, %struct.demangle_component* %122, i32* %123, i32* null)
  store i32* %124, i32** %10, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  store i32* null, i32** %6, align 8
  br label %462

128:                                              ; preds = %115
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %131 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %132 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.demangle_component*, %struct.demangle_component** %134, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = call i32* @stab_demangle_v3_arg(i8* %129, %struct.stab_handle* %130, %struct.demangle_component* %135, i32* %136, i32* null)
  store i32* %137, i32** %6, align 8
  br label %462

138:                                              ; preds = %28
  %139 = load i32, i32* @DMGL_PARAMS, align 4
  %140 = load i32, i32* @DMGL_ANSI, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %143 = call i8* @cplus_demangle_print(i32 %141, %struct.demangle_component* %142, i32 20, i64* %17)
  store i8* %143, i8** %16, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @stderr, align 4
  %148 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* %148)
  store i32* null, i32** %6, align 8
  br label %462

150:                                              ; preds = %138
  %151 = load i8*, i8** %7, align 8
  %152 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  %157 = call i32* @stab_find_tagged_type(i8* %151, %struct.stab_handle* %152, i8* %153, i32 %155, i32 %156)
  store i32* %157, i32** %12, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i32*, i32** %12, align 8
  store i32* %160, i32** %6, align 8
  br label %462

161:                                              ; preds = %28
  %162 = load i8*, i8** %7, align 8
  %163 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %164 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %165 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %170 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %175 = call i32* @stab_find_tagged_type(i8* %162, %struct.stab_handle* %163, i8* %168, i32 %173, i32 %174)
  store i32* %175, i32** %6, align 8
  br label %462

176:                                              ; preds = %28, %28, %28, %28, %28
  %177 = load i8*, i8** %7, align 8
  %178 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %179 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %180 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load %struct.demangle_component*, %struct.demangle_component** %182, align 8
  %184 = call i32* @stab_demangle_v3_arg(i8* %177, %struct.stab_handle* %178, %struct.demangle_component* %183, i32* null, i32* null)
  store i32* %184, i32** %12, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  store i32* null, i32** %6, align 8
  br label %462

188:                                              ; preds = %176
  %189 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %190 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  switch i32 %191, label %192 [
    i32 137, label %194
    i32 129, label %196
    i32 150, label %200
    i32 141, label %204
    i32 138, label %208
  ]

192:                                              ; preds = %188
  %193 = call i32 (...) @abort() #3
  unreachable

194:                                              ; preds = %188
  %195 = load i32*, i32** %12, align 8
  store i32* %195, i32** %6, align 8
  br label %462

196:                                              ; preds = %188
  %197 = load i8*, i8** %7, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = call i32* @debug_make_volatile_type(i8* %197, i32* %198)
  store i32* %199, i32** %6, align 8
  br label %462

200:                                              ; preds = %188
  %201 = load i8*, i8** %7, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = call i32* @debug_make_const_type(i8* %201, i32* %202)
  store i32* %203, i32** %6, align 8
  br label %462

204:                                              ; preds = %188
  %205 = load i8*, i8** %7, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = call i32* @debug_make_pointer_type(i8* %205, i32* %206)
  store i32* %207, i32** %6, align 8
  br label %462

208:                                              ; preds = %188
  %209 = load i8*, i8** %7, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = call i32* @debug_make_reference_type(i8* %209, i32* %210)
  store i32* %211, i32** %6, align 8
  br label %462

212:                                              ; preds = %28
  %213 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %214 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load %struct.demangle_component*, %struct.demangle_component** %216, align 8
  %218 = icmp eq %struct.demangle_component* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load i8*, i8** %7, align 8
  %221 = call i32* @debug_make_void_type(i8* %220)
  store i32* %221, i32** %12, align 8
  br label %231

222:                                              ; preds = %212
  %223 = load i8*, i8** %7, align 8
  %224 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %225 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %226 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load %struct.demangle_component*, %struct.demangle_component** %228, align 8
  %230 = call i32* @stab_demangle_v3_arg(i8* %223, %struct.stab_handle* %224, %struct.demangle_component* %229, i32* null, i32* null)
  store i32* %230, i32** %12, align 8
  br label %231

231:                                              ; preds = %222, %219
  %232 = load i32*, i32** %12, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32* null, i32** %6, align 8
  br label %462

235:                                              ; preds = %231
  %236 = load i8*, i8** %7, align 8
  %237 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %238 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %239 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load %struct.demangle_component*, %struct.demangle_component** %241, align 8
  %243 = call i32** @stab_demangle_v3_arglist(i8* %236, %struct.stab_handle* %237, %struct.demangle_component* %242, i32* %19)
  store i32** %243, i32*** %18, align 8
  %244 = load i32**, i32*** %18, align 8
  %245 = icmp eq i32** %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %235
  store i32* null, i32** %6, align 8
  br label %462

247:                                              ; preds = %235
  %248 = load i8*, i8** %7, align 8
  %249 = load i32*, i32** %12, align 8
  %250 = load i32**, i32*** %18, align 8
  %251 = load i32, i32* %19, align 4
  %252 = call i32* @debug_make_function_type(i8* %248, i32* %249, i32** %250, i32 %251)
  store i32* %252, i32** %6, align 8
  br label %462

253:                                              ; preds = %28
  %254 = load i32, i32* @DMGL_PARAMS, align 4
  %255 = load i32, i32* @DMGL_ANSI, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %258 = call i8* @cplus_demangle_print(i32 %256, %struct.demangle_component* %257, i32 20, i64* %21)
  store i8* %258, i8** %20, align 8
  %259 = load i8*, i8** %20, align 8
  %260 = icmp eq i8* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %253
  %262 = load i32, i32* @stderr, align 4
  %263 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* %263)
  store i32* null, i32** %6, align 8
  br label %462

265:                                              ; preds = %253
  %266 = load i8*, i8** %20, align 8
  %267 = call i32 @strcmp(i8* %266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load i8*, i8** %7, align 8
  %271 = load i32, i32* @FALSE, align 4
  %272 = call i32* @debug_make_int_type(i8* %270, i32 1, i32 %271)
  store i32* %272, i32** %22, align 8
  br label %458

273:                                              ; preds = %265
  %274 = load i8*, i8** %20, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load i8*, i8** %7, align 8
  %279 = call i32* @debug_make_bool_type(i8* %278, i32 1)
  store i32* %279, i32** %22, align 8
  br label %457

280:                                              ; preds = %273
  %281 = load i8*, i8** %20, align 8
  %282 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load i8*, i8** %7, align 8
  %286 = load i32, i32* @FALSE, align 4
  %287 = call i32* @debug_make_int_type(i8* %285, i32 1, i32 %286)
  store i32* %287, i32** %22, align 8
  br label %456

288:                                              ; preds = %280
  %289 = load i8*, i8** %20, align 8
  %290 = call i32 @strcmp(i8* %289, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load i8*, i8** %7, align 8
  %294 = call i32* @debug_make_float_type(i8* %293, i32 8)
  store i32* %294, i32** %22, align 8
  br label %455

295:                                              ; preds = %288
  %296 = load i8*, i8** %20, align 8
  %297 = call i32 @strcmp(i8* %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i8*, i8** %7, align 8
  %301 = call i32* @debug_make_float_type(i8* %300, i32 8)
  store i32* %301, i32** %22, align 8
  br label %454

302:                                              ; preds = %295
  %303 = load i8*, i8** %20, align 8
  %304 = call i32 @strcmp(i8* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i8*, i8** %7, align 8
  %308 = call i32* @debug_make_float_type(i8* %307, i32 4)
  store i32* %308, i32** %22, align 8
  br label %453

309:                                              ; preds = %302
  %310 = load i8*, i8** %20, align 8
  %311 = call i32 @strcmp(i8* %310, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i8*, i8** %7, align 8
  %315 = call i32* @debug_make_float_type(i8* %314, i32 16)
  store i32* %315, i32** %22, align 8
  br label %452

316:                                              ; preds = %309
  %317 = load i8*, i8** %20, align 8
  %318 = call i32 @strcmp(i8* %317, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = load i8*, i8** %7, align 8
  %322 = load i32, i32* @TRUE, align 4
  %323 = call i32* @debug_make_int_type(i8* %321, i32 1, i32 %322)
  store i32* %323, i32** %22, align 8
  br label %451

324:                                              ; preds = %316
  %325 = load i8*, i8** %20, align 8
  %326 = call i32 @strcmp(i8* %325, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %324
  %329 = load i8*, i8** %7, align 8
  %330 = load i32, i32* @FALSE, align 4
  %331 = call i32* @debug_make_int_type(i8* %329, i32 4, i32 %330)
  store i32* %331, i32** %22, align 8
  br label %450

332:                                              ; preds = %324
  %333 = load i8*, i8** %20, align 8
  %334 = call i32 @strcmp(i8* %333, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = load i8*, i8** %7, align 8
  %338 = load i32, i32* @TRUE, align 4
  %339 = call i32* @debug_make_int_type(i8* %337, i32 4, i32 %338)
  store i32* %339, i32** %22, align 8
  br label %449

340:                                              ; preds = %332
  %341 = load i8*, i8** %20, align 8
  %342 = call i32 @strcmp(i8* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load i8*, i8** %7, align 8
  %346 = load i32, i32* @FALSE, align 4
  %347 = call i32* @debug_make_int_type(i8* %345, i32 4, i32 %346)
  store i32* %347, i32** %22, align 8
  br label %448

348:                                              ; preds = %340
  %349 = load i8*, i8** %20, align 8
  %350 = call i32 @strcmp(i8* %349, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load i8*, i8** %7, align 8
  %354 = load i32, i32* @TRUE, align 4
  %355 = call i32* @debug_make_int_type(i8* %353, i32 4, i32 %354)
  store i32* %355, i32** %22, align 8
  br label %447

356:                                              ; preds = %348
  %357 = load i8*, i8** %20, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = load i8*, i8** %7, align 8
  %362 = load i32, i32* @FALSE, align 4
  %363 = call i32* @debug_make_int_type(i8* %361, i32 16, i32 %362)
  store i32* %363, i32** %22, align 8
  br label %446

364:                                              ; preds = %356
  %365 = load i8*, i8** %20, align 8
  %366 = call i32 @strcmp(i8* %365, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i8*, i8** %7, align 8
  %370 = load i32, i32* @TRUE, align 4
  %371 = call i32* @debug_make_int_type(i8* %369, i32 16, i32 %370)
  store i32* %371, i32** %22, align 8
  br label %445

372:                                              ; preds = %364
  %373 = load i8*, i8** %20, align 8
  %374 = call i32 @strcmp(i8* %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load i8*, i8** %7, align 8
  %378 = load i32, i32* @FALSE, align 4
  %379 = call i32* @debug_make_int_type(i8* %377, i32 2, i32 %378)
  store i32* %379, i32** %22, align 8
  br label %444

380:                                              ; preds = %372
  %381 = load i8*, i8** %20, align 8
  %382 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = load i8*, i8** %7, align 8
  %386 = load i32, i32* @TRUE, align 4
  %387 = call i32* @debug_make_int_type(i8* %385, i32 2, i32 %386)
  store i32* %387, i32** %22, align 8
  br label %443

388:                                              ; preds = %380
  %389 = load i8*, i8** %20, align 8
  %390 = call i32 @strcmp(i8* %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i8*, i8** %7, align 8
  %394 = call i32* @debug_make_void_type(i8* %393)
  store i32* %394, i32** %22, align 8
  br label %442

395:                                              ; preds = %388
  %396 = load i8*, i8** %20, align 8
  %397 = call i32 @strcmp(i8* %396, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i8*, i8** %7, align 8
  %401 = load i32, i32* @TRUE, align 4
  %402 = call i32* @debug_make_int_type(i8* %400, i32 4, i32 %401)
  store i32* %402, i32** %22, align 8
  br label %441

403:                                              ; preds = %395
  %404 = load i8*, i8** %20, align 8
  %405 = call i32 @strcmp(i8* %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load i8*, i8** %7, align 8
  %409 = load i32, i32* @FALSE, align 4
  %410 = call i32* @debug_make_int_type(i8* %408, i32 8, i32 %409)
  store i32* %410, i32** %22, align 8
  br label %440

411:                                              ; preds = %403
  %412 = load i8*, i8** %20, align 8
  %413 = call i32 @strcmp(i8* %412, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i8*, i8** %7, align 8
  %417 = load i32, i32* @TRUE, align 4
  %418 = call i32* @debug_make_int_type(i8* %416, i32 8, i32 %417)
  store i32* %418, i32** %22, align 8
  br label %439

419:                                              ; preds = %411
  %420 = load i8*, i8** %20, align 8
  %421 = call i32 @strcmp(i8* %420, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %434

423:                                              ; preds = %419
  %424 = load i32*, i32** %11, align 8
  %425 = icmp eq i32* %424, null
  br i1 %425, label %426, label %430

426:                                              ; preds = %423
  %427 = load i32, i32* @stderr, align 4
  %428 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %429 = call i32 (i32, i8*, ...) @fprintf(i32 %427, i8* %428)
  br label %433

430:                                              ; preds = %423
  %431 = load i32, i32* @TRUE, align 4
  %432 = load i32*, i32** %11, align 8
  store i32 %431, i32* %432, align 4
  br label %433

433:                                              ; preds = %430, %426
  store i32* null, i32** %22, align 8
  br label %438

434:                                              ; preds = %419
  %435 = load i32, i32* @stderr, align 4
  %436 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0))
  %437 = call i32 (i32, i8*, ...) @fprintf(i32 %435, i8* %436)
  store i32* null, i32** %22, align 8
  br label %438

438:                                              ; preds = %434, %433
  br label %439

439:                                              ; preds = %438, %415
  br label %440

440:                                              ; preds = %439, %407
  br label %441

441:                                              ; preds = %440, %399
  br label %442

442:                                              ; preds = %441, %392
  br label %443

443:                                              ; preds = %442, %384
  br label %444

444:                                              ; preds = %443, %376
  br label %445

445:                                              ; preds = %444, %368
  br label %446

446:                                              ; preds = %445, %360
  br label %447

447:                                              ; preds = %446, %352
  br label %448

448:                                              ; preds = %447, %344
  br label %449

449:                                              ; preds = %448, %336
  br label %450

450:                                              ; preds = %449, %328
  br label %451

451:                                              ; preds = %450, %320
  br label %452

452:                                              ; preds = %451, %313
  br label %453

453:                                              ; preds = %452, %306
  br label %454

454:                                              ; preds = %453, %299
  br label %455

455:                                              ; preds = %454, %292
  br label %456

456:                                              ; preds = %455, %284
  br label %457

457:                                              ; preds = %456, %277
  br label %458

458:                                              ; preds = %457, %269
  %459 = load i8*, i8** %20, align 8
  %460 = call i32 @free(i8* %459)
  %461 = load i32*, i32** %22, align 8
  store i32* %461, i32** %6, align 8
  br label %462

462:                                              ; preds = %458, %261, %247, %246, %234, %208, %204, %200, %196, %194, %187, %161, %150, %146, %128, %127, %100, %92, %62, %33
  %463 = load i32*, i32** %6, align 8
  ret i32* %463
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @debug_get_fields(i8*, i32*) #1

declare dso_local i32* @debug_get_field_type(i8*, i32) #1

declare dso_local i8* @debug_get_type_name(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @stab_find_tagged_type(i8*, %struct.stab_handle*, i8*, i32, i32) #1

declare dso_local i8* @cplus_demangle_print(i32, %struct.demangle_component*, i32, i64*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @debug_make_volatile_type(i8*, i32*) #1

declare dso_local i32* @debug_make_const_type(i8*, i32*) #1

declare dso_local i32* @debug_make_pointer_type(i8*, i32*) #1

declare dso_local i32* @debug_make_reference_type(i8*, i32*) #1

declare dso_local i32* @debug_make_void_type(i8*) #1

declare dso_local i32** @stab_demangle_v3_arglist(i8*, %struct.stab_handle*, %struct.demangle_component*, i32*) #1

declare dso_local i32* @debug_make_function_type(i8*, i32*, i32**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @debug_make_int_type(i8*, i32, i32) #1

declare dso_local i32* @debug_make_bool_type(i8*, i32) #1

declare dso_local i32* @debug_make_float_type(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
