; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_init_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_init_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)* }

@intSI_type_node = common dso_local global i8* null, align 8
@V2SI_type_node = common dso_local global i8* null, align 8
@float_type_node = common dso_local global i8* null, align 8
@V2SF_type_node = common dso_local global i8* null, align 8
@intHI_type_node = common dso_local global i8* null, align 8
@V4HI_type_node = common dso_local global i8* null, align 8
@V4SI_type_node = common dso_local global i8* null, align 8
@V4SF_type_node = common dso_local global i8* null, align 8
@V8HI_type_node = common dso_local global i8* null, align 8
@intQI_type_node = common dso_local global i8* null, align 8
@V16QI_type_node = common dso_local global i8* null, align 8
@unsigned_intQI_type_node = common dso_local global i8* null, align 8
@unsigned_V16QI_type_node = common dso_local global i8* null, align 8
@unsigned_intHI_type_node = common dso_local global i8* null, align 8
@unsigned_V8HI_type_node = common dso_local global i8* null, align 8
@unsigned_intSI_type_node = common dso_local global i8* null, align 8
@unsigned_V4SI_type_node = common dso_local global i8* null, align 8
@opaque_V2SF_type_node = common dso_local global i8* null, align 8
@opaque_V2SI_type_node = common dso_local global i8* null, align 8
@opaque_p_V2SI_type_node = common dso_local global i32 0, align 4
@opaque_V4SI_type_node = common dso_local global i32 0, align 4
@bool_char_type_node = common dso_local global i8* null, align 8
@bool_short_type_node = common dso_local global i8* null, align 8
@bool_int_type_node = common dso_local global i8* null, align 8
@pixel_type_node = common dso_local global i8* null, align 8
@long_integer_type_node = common dso_local global i32 0, align 4
@long_integer_type_internal_node = common dso_local global i32 0, align 4
@long_unsigned_type_node = common dso_local global i32 0, align 4
@long_unsigned_type_internal_node = common dso_local global i32 0, align 4
@intQI_type_internal_node = common dso_local global i8* null, align 8
@uintQI_type_internal_node = common dso_local global i8* null, align 8
@intHI_type_internal_node = common dso_local global i8* null, align 8
@uintHI_type_internal_node = common dso_local global i8* null, align 8
@intSI_type_internal_node = common dso_local global i8* null, align 8
@uintSI_type_internal_node = common dso_local global i8* null, align 8
@float_type_internal_node = common dso_local global i8* null, align 8
@void_type_node = common dso_local global i32 0, align 4
@void_type_internal_node = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TYPE_DECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"__bool char\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__bool short\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__bool int\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"__pixel\00", align 1
@bool_V16QI_type_node = common dso_local global i8* null, align 8
@bool_V8HI_type_node = common dso_local global i8* null, align 8
@bool_V4SI_type_node = common dso_local global i8* null, align 8
@pixel_V8HI_type_node = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"__vector unsigned char\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__vector signed char\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"__vector __bool char\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"__vector unsigned short\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"__vector signed short\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"__vector __bool short\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"__vector unsigned int\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"__vector signed int\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"__vector __bool int\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"__vector float\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"__vector __pixel\00", align 1
@TARGET_SPE = common dso_local global i64 0, align 8
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@BUILT_IN_CLOG = common dso_local global i64 0, align 8
@built_in_decls = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs6000_init_builtins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_init_builtins() #0 {
  %1 = load i8*, i8** @intSI_type_node, align 8
  %2 = call i8* @build_vector_type(i8* %1, i32 2)
  store i8* %2, i8** @V2SI_type_node, align 8
  %3 = load i8*, i8** @float_type_node, align 8
  %4 = call i8* @build_vector_type(i8* %3, i32 2)
  store i8* %4, i8** @V2SF_type_node, align 8
  %5 = load i8*, i8** @intHI_type_node, align 8
  %6 = call i8* @build_vector_type(i8* %5, i32 4)
  store i8* %6, i8** @V4HI_type_node, align 8
  %7 = load i8*, i8** @intSI_type_node, align 8
  %8 = call i8* @build_vector_type(i8* %7, i32 4)
  store i8* %8, i8** @V4SI_type_node, align 8
  %9 = load i8*, i8** @float_type_node, align 8
  %10 = call i8* @build_vector_type(i8* %9, i32 4)
  store i8* %10, i8** @V4SF_type_node, align 8
  %11 = load i8*, i8** @intHI_type_node, align 8
  %12 = call i8* @build_vector_type(i8* %11, i32 8)
  store i8* %12, i8** @V8HI_type_node, align 8
  %13 = load i8*, i8** @intQI_type_node, align 8
  %14 = call i8* @build_vector_type(i8* %13, i32 16)
  store i8* %14, i8** @V16QI_type_node, align 8
  %15 = load i8*, i8** @unsigned_intQI_type_node, align 8
  %16 = call i8* @build_vector_type(i8* %15, i32 16)
  store i8* %16, i8** @unsigned_V16QI_type_node, align 8
  %17 = load i8*, i8** @unsigned_intHI_type_node, align 8
  %18 = call i8* @build_vector_type(i8* %17, i32 8)
  store i8* %18, i8** @unsigned_V8HI_type_node, align 8
  %19 = load i8*, i8** @unsigned_intSI_type_node, align 8
  %20 = call i8* @build_vector_type(i8* %19, i32 4)
  store i8* %20, i8** @unsigned_V4SI_type_node, align 8
  %21 = load i8*, i8** @float_type_node, align 8
  %22 = call i8* @build_opaque_vector_type(i8* %21, i32 2)
  store i8* %22, i8** @opaque_V2SF_type_node, align 8
  %23 = load i8*, i8** @intSI_type_node, align 8
  %24 = call i8* @build_opaque_vector_type(i8* %23, i32 2)
  store i8* %24, i8** @opaque_V2SI_type_node, align 8
  %25 = load i8*, i8** @opaque_V2SI_type_node, align 8
  %26 = call i32 @build_pointer_type(i8* %25)
  store i32 %26, i32* @opaque_p_V2SI_type_node, align 4
  %27 = load i8*, i8** @V4SI_type_node, align 8
  %28 = call i32 @copy_node(i8* %27)
  store i32 %28, i32* @opaque_V4SI_type_node, align 4
  %29 = load i8*, i8** @unsigned_intQI_type_node, align 8
  %30 = call i8* @build_distinct_type_copy(i8* %29)
  store i8* %30, i8** @bool_char_type_node, align 8
  %31 = load i8*, i8** @unsigned_intHI_type_node, align 8
  %32 = call i8* @build_distinct_type_copy(i8* %31)
  store i8* %32, i8** @bool_short_type_node, align 8
  %33 = load i8*, i8** @unsigned_intSI_type_node, align 8
  %34 = call i8* @build_distinct_type_copy(i8* %33)
  store i8* %34, i8** @bool_int_type_node, align 8
  %35 = load i8*, i8** @unsigned_intHI_type_node, align 8
  %36 = call i8* @build_distinct_type_copy(i8* %35)
  store i8* %36, i8** @pixel_type_node, align 8
  %37 = load i32, i32* @long_integer_type_node, align 4
  store i32 %37, i32* @long_integer_type_internal_node, align 4
  %38 = load i32, i32* @long_unsigned_type_node, align 4
  store i32 %38, i32* @long_unsigned_type_internal_node, align 4
  %39 = load i8*, i8** @intQI_type_node, align 8
  store i8* %39, i8** @intQI_type_internal_node, align 8
  %40 = load i8*, i8** @unsigned_intQI_type_node, align 8
  store i8* %40, i8** @uintQI_type_internal_node, align 8
  %41 = load i8*, i8** @intHI_type_node, align 8
  store i8* %41, i8** @intHI_type_internal_node, align 8
  %42 = load i8*, i8** @unsigned_intHI_type_node, align 8
  store i8* %42, i8** @uintHI_type_internal_node, align 8
  %43 = load i8*, i8** @intSI_type_node, align 8
  store i8* %43, i8** @intSI_type_internal_node, align 8
  %44 = load i8*, i8** @unsigned_intSI_type_node, align 8
  store i8* %44, i8** @uintSI_type_internal_node, align 8
  %45 = load i8*, i8** @float_type_node, align 8
  store i8* %45, i8** @float_type_internal_node, align 8
  %46 = load i32, i32* @void_type_node, align 4
  store i32 %46, i32* @void_type_internal_node, align 4
  %47 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %48 = load i32, i32* @TYPE_DECL, align 4
  %49 = call i32 @get_identifier(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** @bool_char_type_node, align 8
  %51 = call i32 @build_decl(i32 %48, i32 %49, i8* %50)
  %52 = call i32 %47(i32 %51)
  %53 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %54 = load i32, i32* @TYPE_DECL, align 4
  %55 = call i32 @get_identifier(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** @bool_short_type_node, align 8
  %57 = call i32 @build_decl(i32 %54, i32 %55, i8* %56)
  %58 = call i32 %53(i32 %57)
  %59 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %60 = load i32, i32* @TYPE_DECL, align 4
  %61 = call i32 @get_identifier(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** @bool_int_type_node, align 8
  %63 = call i32 @build_decl(i32 %60, i32 %61, i8* %62)
  %64 = call i32 %59(i32 %63)
  %65 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %66 = load i32, i32* @TYPE_DECL, align 4
  %67 = call i32 @get_identifier(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i8*, i8** @pixel_type_node, align 8
  %69 = call i32 @build_decl(i32 %66, i32 %67, i8* %68)
  %70 = call i32 %65(i32 %69)
  %71 = load i8*, i8** @bool_char_type_node, align 8
  %72 = call i8* @build_vector_type(i8* %71, i32 16)
  store i8* %72, i8** @bool_V16QI_type_node, align 8
  %73 = load i8*, i8** @bool_short_type_node, align 8
  %74 = call i8* @build_vector_type(i8* %73, i32 8)
  store i8* %74, i8** @bool_V8HI_type_node, align 8
  %75 = load i8*, i8** @bool_int_type_node, align 8
  %76 = call i8* @build_vector_type(i8* %75, i32 4)
  store i8* %76, i8** @bool_V4SI_type_node, align 8
  %77 = load i8*, i8** @pixel_type_node, align 8
  %78 = call i8* @build_vector_type(i8* %77, i32 8)
  store i8* %78, i8** @pixel_V8HI_type_node, align 8
  %79 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %80 = load i32, i32* @TYPE_DECL, align 4
  %81 = call i32 @get_identifier(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i8*, i8** @unsigned_V16QI_type_node, align 8
  %83 = call i32 @build_decl(i32 %80, i32 %81, i8* %82)
  %84 = call i32 %79(i32 %83)
  %85 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %86 = load i32, i32* @TYPE_DECL, align 4
  %87 = call i32 @get_identifier(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i8*, i8** @V16QI_type_node, align 8
  %89 = call i32 @build_decl(i32 %86, i32 %87, i8* %88)
  %90 = call i32 %85(i32 %89)
  %91 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %92 = load i32, i32* @TYPE_DECL, align 4
  %93 = call i32 @get_identifier(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i8*, i8** @bool_V16QI_type_node, align 8
  %95 = call i32 @build_decl(i32 %92, i32 %93, i8* %94)
  %96 = call i32 %91(i32 %95)
  %97 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* @TYPE_DECL, align 4
  %99 = call i32 @get_identifier(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i8*, i8** @unsigned_V8HI_type_node, align 8
  %101 = call i32 @build_decl(i32 %98, i32 %99, i8* %100)
  %102 = call i32 %97(i32 %101)
  %103 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %104 = load i32, i32* @TYPE_DECL, align 4
  %105 = call i32 @get_identifier(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i8*, i8** @V8HI_type_node, align 8
  %107 = call i32 @build_decl(i32 %104, i32 %105, i8* %106)
  %108 = call i32 %103(i32 %107)
  %109 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %110 = load i32, i32* @TYPE_DECL, align 4
  %111 = call i32 @get_identifier(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %112 = load i8*, i8** @bool_V8HI_type_node, align 8
  %113 = call i32 @build_decl(i32 %110, i32 %111, i8* %112)
  %114 = call i32 %109(i32 %113)
  %115 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %116 = load i32, i32* @TYPE_DECL, align 4
  %117 = call i32 @get_identifier(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %118 = load i8*, i8** @unsigned_V4SI_type_node, align 8
  %119 = call i32 @build_decl(i32 %116, i32 %117, i8* %118)
  %120 = call i32 %115(i32 %119)
  %121 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %122 = load i32, i32* @TYPE_DECL, align 4
  %123 = call i32 @get_identifier(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %124 = load i8*, i8** @V4SI_type_node, align 8
  %125 = call i32 @build_decl(i32 %122, i32 %123, i8* %124)
  %126 = call i32 %121(i32 %125)
  %127 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %128 = load i32, i32* @TYPE_DECL, align 4
  %129 = call i32 @get_identifier(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %130 = load i8*, i8** @bool_V4SI_type_node, align 8
  %131 = call i32 @build_decl(i32 %128, i32 %129, i8* %130)
  %132 = call i32 %127(i32 %131)
  %133 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %134 = load i32, i32* @TYPE_DECL, align 4
  %135 = call i32 @get_identifier(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %136 = load i8*, i8** @V4SF_type_node, align 8
  %137 = call i32 @build_decl(i32 %134, i32 %135, i8* %136)
  %138 = call i32 %133(i32 %137)
  %139 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %140 = load i32, i32* @TYPE_DECL, align 4
  %141 = call i32 @get_identifier(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %142 = load i8*, i8** @pixel_V8HI_type_node, align 8
  %143 = call i32 @build_decl(i32 %140, i32 %141, i8* %142)
  %144 = call i32 %139(i32 %143)
  %145 = load i64, i64* @TARGET_SPE, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %0
  %148 = call i32 (...) @spe_init_builtins()
  br label %149

149:                                              ; preds = %147, %0
  %150 = load i64, i64* @TARGET_ALTIVEC, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 (...) @altivec_init_builtins()
  br label %154

154:                                              ; preds = %152, %149
  %155 = load i64, i64* @TARGET_ALTIVEC, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* @TARGET_SPE, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157, %154
  %161 = call i32 (...) @rs6000_common_init_builtins()
  br label %162

162:                                              ; preds = %160, %157
  ret void
}

declare dso_local i8* @build_vector_type(i8*, i32) #1

declare dso_local i8* @build_opaque_vector_type(i8*, i32) #1

declare dso_local i32 @build_pointer_type(i8*) #1

declare dso_local i32 @copy_node(i8*) #1

declare dso_local i8* @build_distinct_type_copy(i8*) #1

declare dso_local i32 @build_decl(i32, i32, i8*) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @spe_init_builtins(...) #1

declare dso_local i32 @altivec_init_builtins(...) #1

declare dso_local i32 @rs6000_common_init_builtins(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
