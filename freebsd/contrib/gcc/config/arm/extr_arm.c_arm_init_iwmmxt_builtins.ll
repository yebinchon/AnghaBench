; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_init_iwmmxt_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_init_iwmmxt_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.builtin_description = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@void_list_node = common dso_local global i32 0, align 4
@intSI_type_node = common dso_local global i32 0, align 4
@intHI_type_node = common dso_local global i32 0, align 4
@intQI_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@long_long_integer_type_node = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@long_long_unsigned_type_node = common dso_local global i32 0, align 4
@bdesc_2arg = common dso_local global %struct.builtin_description* null, align 8
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@FL_IWMMXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"__builtin_arm_wzero\00", align 1
@ARM_BUILTIN_WZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"__builtin_arm_setwcx\00", align 1
@ARM_BUILTIN_SETWCX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"__builtin_arm_getwcx\00", align 1
@ARM_BUILTIN_GETWCX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsllh\00", align 1
@ARM_BUILTIN_WSLLH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsllw\00", align 1
@ARM_BUILTIN_WSLLW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wslld\00", align 1
@ARM_BUILTIN_WSLLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsllhi\00", align 1
@ARM_BUILTIN_WSLLHI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsllwi\00", align 1
@ARM_BUILTIN_WSLLWI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wslldi\00", align 1
@ARM_BUILTIN_WSLLDI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsrlh\00", align 1
@ARM_BUILTIN_WSRLH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsrlw\00", align 1
@ARM_BUILTIN_WSRLW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsrld\00", align 1
@ARM_BUILTIN_WSRLD = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsrlhi\00", align 1
@ARM_BUILTIN_WSRLHI = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsrlwi\00", align 1
@ARM_BUILTIN_WSRLWI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsrldi\00", align 1
@ARM_BUILTIN_WSRLDI = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsrah\00", align 1
@ARM_BUILTIN_WSRAH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsraw\00", align 1
@ARM_BUILTIN_WSRAW = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsrad\00", align 1
@ARM_BUILTIN_WSRAD = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsrahi\00", align 1
@ARM_BUILTIN_WSRAHI = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsrawi\00", align 1
@ARM_BUILTIN_WSRAWI = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsradi\00", align 1
@ARM_BUILTIN_WSRADI = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wrorh\00", align 1
@ARM_BUILTIN_WRORH = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wrorw\00", align 1
@ARM_BUILTIN_WRORW = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wrord\00", align 1
@ARM_BUILTIN_WRORD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wrorhi\00", align 1
@ARM_BUILTIN_WRORHI = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wrorwi\00", align 1
@ARM_BUILTIN_WRORWI = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wrordi\00", align 1
@ARM_BUILTIN_WRORDI = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wshufh\00", align 1
@ARM_BUILTIN_WSHUFH = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsadb\00", align 1
@ARM_BUILTIN_WSADB = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wsadh\00", align 1
@ARM_BUILTIN_WSADH = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsadbz\00", align 1
@ARM_BUILTIN_WSADBZ = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wsadhz\00", align 1
@ARM_BUILTIN_WSADHZ = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmsb\00", align 1
@ARM_BUILTIN_TEXTRMSB = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmsh\00", align 1
@ARM_BUILTIN_TEXTRMSH = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmsw\00", align 1
@ARM_BUILTIN_TEXTRMSW = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmub\00", align 1
@ARM_BUILTIN_TEXTRMUB = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmuh\00", align 1
@ARM_BUILTIN_TEXTRMUH = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"__builtin_arm_textrmuw\00", align 1
@ARM_BUILTIN_TEXTRMUW = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tinsrb\00", align 1
@ARM_BUILTIN_TINSRB = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tinsrh\00", align 1
@ARM_BUILTIN_TINSRH = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tinsrw\00", align 1
@ARM_BUILTIN_TINSRW = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [20 x i8] c"__builtin_arm_waccb\00", align 1
@ARM_BUILTIN_WACCB = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wacch\00", align 1
@ARM_BUILTIN_WACCH = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c"__builtin_arm_waccw\00", align 1
@ARM_BUILTIN_WACCW = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [23 x i8] c"__builtin_arm_tmovmskb\00", align 1
@ARM_BUILTIN_TMOVMSKB = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [23 x i8] c"__builtin_arm_tmovmskh\00", align 1
@ARM_BUILTIN_TMOVMSKH = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [23 x i8] c"__builtin_arm_tmovmskw\00", align 1
@ARM_BUILTIN_TMOVMSKW = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackhss\00", align 1
@ARM_BUILTIN_WPACKHSS = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackhus\00", align 1
@ARM_BUILTIN_WPACKHUS = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackwus\00", align 1
@ARM_BUILTIN_WPACKWUS = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackwss\00", align 1
@ARM_BUILTIN_WPACKWSS = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackdus\00", align 1
@ARM_BUILTIN_WPACKDUS = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [23 x i8] c"__builtin_arm_wpackdss\00", align 1
@ARM_BUILTIN_WPACKDSS = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehub\00", align 1
@ARM_BUILTIN_WUNPCKEHUB = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehuh\00", align 1
@ARM_BUILTIN_WUNPCKEHUH = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehuw\00", align 1
@ARM_BUILTIN_WUNPCKEHUW = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehsb\00", align 1
@ARM_BUILTIN_WUNPCKEHSB = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehsh\00", align 1
@ARM_BUILTIN_WUNPCKEHSH = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckehsw\00", align 1
@ARM_BUILTIN_WUNPCKEHSW = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckelub\00", align 1
@ARM_BUILTIN_WUNPCKELUB = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckeluh\00", align 1
@ARM_BUILTIN_WUNPCKELUH = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckeluw\00", align 1
@ARM_BUILTIN_WUNPCKELUW = common dso_local global i32 0, align 4
@.str.62 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckelsb\00", align 1
@ARM_BUILTIN_WUNPCKELSB = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckelsh\00", align 1
@ARM_BUILTIN_WUNPCKELSH = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [25 x i8] c"__builtin_arm_wunpckelsw\00", align 1
@ARM_BUILTIN_WUNPCKELSW = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wmacs\00", align 1
@ARM_BUILTIN_WMACS = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wmacsz\00", align 1
@ARM_BUILTIN_WMACSZ = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"__builtin_arm_wmacu\00", align 1
@ARM_BUILTIN_WMACU = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [21 x i8] c"__builtin_arm_wmacuz\00", align 1
@ARM_BUILTIN_WMACUZ = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [21 x i8] c"__builtin_arm_walign\00", align 1
@ARM_BUILTIN_WALIGN = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [19 x i8] c"__builtin_arm_tmia\00", align 1
@ARM_BUILTIN_TMIA = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tmiaph\00", align 1
@ARM_BUILTIN_TMIAPH = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tmiabb\00", align 1
@ARM_BUILTIN_TMIABB = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tmiabt\00", align 1
@ARM_BUILTIN_TMIABT = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tmiatb\00", align 1
@ARM_BUILTIN_TMIATB = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [21 x i8] c"__builtin_arm_tmiatt\00", align 1
@ARM_BUILTIN_TMIATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arm_init_iwmmxt_builtins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_init_iwmmxt_builtins() #0 {
  %1 = alloca %struct.builtin_description*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = load i32, i32* @void_list_node, align 4
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @intSI_type_node, align 4
  %46 = call i32 @build_vector_type_for_mode(i32 %45, i32 130)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @intHI_type_node, align 4
  %48 = call i32 @build_vector_type_for_mode(i32 %47, i32 129)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @intQI_type_node, align 4
  %50 = call i32 @build_vector_type_for_mode(i32 %49, i32 128)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @integer_type_node, align 4
  %52 = load i32, i32* @NULL_TREE, align 4
  %53 = load i32, i32* @integer_type_node, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @tree_cons(i32 %52, i32 %53, i32 %54)
  %56 = call i32 @build_function_type(i32 %51, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NULL_TREE, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NULL_TREE, align 4
  %63 = load i32, i32* @integer_type_node, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @tree_cons(i32 %62, i32 %63, i32 %64)
  %66 = call i32 @tree_cons(i32 %60, i32 %61, i32 %65)
  %67 = call i32 @tree_cons(i32 %58, i32 %59, i32 %66)
  %68 = call i32 @build_function_type(i32 %57, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @NULL_TREE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @NULL_TREE, align 4
  %73 = load i32, i32* @integer_type_node, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @tree_cons(i32 %72, i32 %73, i32 %74)
  %76 = call i32 @tree_cons(i32 %70, i32 %71, i32 %75)
  %77 = call i32 @build_function_type(i32 %69, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @NULL_TREE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @NULL_TREE, align 4
  %82 = load i32, i32* @integer_type_node, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @tree_cons(i32 %81, i32 %82, i32 %83)
  %85 = call i32 @tree_cons(i32 %79, i32 %80, i32 %84)
  %86 = call i32 @build_function_type(i32 %78, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @NULL_TREE, align 4
  %89 = load i32, i32* @long_long_integer_type_node, align 4
  %90 = load i32, i32* @NULL_TREE, align 4
  %91 = load i32, i32* @long_long_integer_type_node, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @tree_cons(i32 %90, i32 %91, i32 %92)
  %94 = call i32 @tree_cons(i32 %88, i32 %89, i32 %93)
  %95 = call i32 @build_function_type(i32 %87, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @long_long_integer_type_node, align 4
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = load i32, i32* @long_long_integer_type_node, align 4
  %99 = load i32, i32* @NULL_TREE, align 4
  %100 = load i32, i32* @integer_type_node, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @tree_cons(i32 %99, i32 %100, i32 %101)
  %103 = call i32 @tree_cons(i32 %97, i32 %98, i32 %102)
  %104 = call i32 @build_function_type(i32 %96, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @long_long_integer_type_node, align 4
  %106 = load i32, i32* @NULL_TREE, align 4
  %107 = load i32, i32* @long_long_integer_type_node, align 4
  %108 = load i32, i32* @NULL_TREE, align 4
  %109 = load i32, i32* @integer_type_node, align 4
  %110 = load i32, i32* @NULL_TREE, align 4
  %111 = load i32, i32* @integer_type_node, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @tree_cons(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @tree_cons(i32 %108, i32 %109, i32 %113)
  %115 = call i32 @tree_cons(i32 %106, i32 %107, i32 %114)
  %116 = call i32 @build_function_type(i32 %105, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @integer_type_node, align 4
  %118 = load i32, i32* @NULL_TREE, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @tree_cons(i32 %118, i32 %119, i32 %120)
  %122 = call i32 @build_function_type(i32 %117, i32 %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* @integer_type_node, align 4
  %124 = load i32, i32* @NULL_TREE, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @tree_cons(i32 %124, i32 %125, i32 %126)
  %128 = call i32 @build_function_type(i32 %123, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* @integer_type_node, align 4
  %130 = load i32, i32* @NULL_TREE, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @tree_cons(i32 %130, i32 %131, i32 %132)
  %134 = call i32 @build_function_type(i32 %129, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* @integer_type_node, align 4
  %136 = load i32, i32* @NULL_TREE, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = load i32, i32* @integer_type_node, align 4
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @tree_cons(i32 %138, i32 %139, i32 %140)
  %142 = call i32 @tree_cons(i32 %136, i32 %137, i32 %141)
  %143 = call i32 @build_function_type(i32 %135, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* @integer_type_node, align 4
  %145 = load i32, i32* @NULL_TREE, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @NULL_TREE, align 4
  %148 = load i32, i32* @integer_type_node, align 4
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @tree_cons(i32 %147, i32 %148, i32 %149)
  %151 = call i32 @tree_cons(i32 %145, i32 %146, i32 %150)
  %152 = call i32 @build_function_type(i32 %144, i32 %151)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* @integer_type_node, align 4
  %154 = load i32, i32* @NULL_TREE, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @NULL_TREE, align 4
  %157 = load i32, i32* @integer_type_node, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @tree_cons(i32 %156, i32 %157, i32 %158)
  %160 = call i32 @tree_cons(i32 %154, i32 %155, i32 %159)
  %161 = call i32 @build_function_type(i32 %153, i32 %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @NULL_TREE, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @NULL_TREE, align 4
  %166 = load i32, i32* @integer_type_node, align 4
  %167 = load i32, i32* @NULL_TREE, align 4
  %168 = load i32, i32* @integer_type_node, align 4
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @tree_cons(i32 %167, i32 %168, i32 %169)
  %171 = call i32 @tree_cons(i32 %165, i32 %166, i32 %170)
  %172 = call i32 @tree_cons(i32 %163, i32 %164, i32 %171)
  %173 = call i32 @build_function_type(i32 %162, i32 %172)
  store i32 %173, i32* %20, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @NULL_TREE, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @NULL_TREE, align 4
  %178 = load i32, i32* @integer_type_node, align 4
  %179 = load i32, i32* @NULL_TREE, align 4
  %180 = load i32, i32* @integer_type_node, align 4
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @tree_cons(i32 %179, i32 %180, i32 %181)
  %183 = call i32 @tree_cons(i32 %177, i32 %178, i32 %182)
  %184 = call i32 @tree_cons(i32 %175, i32 %176, i32 %183)
  %185 = call i32 @build_function_type(i32 %174, i32 %184)
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @NULL_TREE, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @NULL_TREE, align 4
  %190 = load i32, i32* @integer_type_node, align 4
  %191 = load i32, i32* @NULL_TREE, align 4
  %192 = load i32, i32* @integer_type_node, align 4
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @tree_cons(i32 %191, i32 %192, i32 %193)
  %195 = call i32 @tree_cons(i32 %189, i32 %190, i32 %194)
  %196 = call i32 @tree_cons(i32 %187, i32 %188, i32 %195)
  %197 = call i32 @build_function_type(i32 %186, i32 %196)
  store i32 %197, i32* %22, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @NULL_TREE, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @NULL_TREE, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @tree_cons(i32 %201, i32 %202, i32 %203)
  %205 = call i32 @tree_cons(i32 %199, i32 %200, i32 %204)
  %206 = call i32 @build_function_type(i32 %198, i32 %205)
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @NULL_TREE, align 4
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @NULL_TREE, align 4
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @tree_cons(i32 %210, i32 %211, i32 %212)
  %214 = call i32 @tree_cons(i32 %208, i32 %209, i32 %213)
  %215 = call i32 @build_function_type(i32 %207, i32 %214)
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @NULL_TREE, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @NULL_TREE, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @tree_cons(i32 %219, i32 %220, i32 %221)
  %223 = call i32 @tree_cons(i32 %217, i32 %218, i32 %222)
  %224 = call i32 @build_function_type(i32 %216, i32 %223)
  store i32 %224, i32* %25, align 4
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @NULL_TREE, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @NULL_TREE, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @tree_cons(i32 %228, i32 %229, i32 %230)
  %232 = call i32 @tree_cons(i32 %226, i32 %227, i32 %231)
  %233 = call i32 @build_function_type(i32 %225, i32 %232)
  store i32 %233, i32* %26, align 4
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @NULL_TREE, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @NULL_TREE, align 4
  %238 = load i32, i32* @long_long_integer_type_node, align 4
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @tree_cons(i32 %237, i32 %238, i32 %239)
  %241 = call i32 @tree_cons(i32 %235, i32 %236, i32 %240)
  %242 = call i32 @build_function_type(i32 %234, i32 %241)
  store i32 %242, i32* %27, align 4
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @NULL_TREE, align 4
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @NULL_TREE, align 4
  %247 = load i32, i32* @long_long_integer_type_node, align 4
  %248 = load i32, i32* %3, align 4
  %249 = call i32 @tree_cons(i32 %246, i32 %247, i32 %248)
  %250 = call i32 @tree_cons(i32 %244, i32 %245, i32 %249)
  %251 = call i32 @build_function_type(i32 %243, i32 %250)
  store i32 %251, i32* %28, align 4
  %252 = load i32, i32* @void_type_node, align 4
  %253 = load i32, i32* @NULL_TREE, align 4
  %254 = load i32, i32* @integer_type_node, align 4
  %255 = load i32, i32* @NULL_TREE, align 4
  %256 = load i32, i32* @integer_type_node, align 4
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @tree_cons(i32 %255, i32 %256, i32 %257)
  %259 = call i32 @tree_cons(i32 %253, i32 %254, i32 %258)
  %260 = call i32 @build_function_type(i32 %252, i32 %259)
  store i32 %260, i32* %29, align 4
  %261 = load i32, i32* @long_long_unsigned_type_node, align 4
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @build_function_type(i32 %261, i32 %262)
  store i32 %263, i32* %30, align 4
  %264 = load i32, i32* @long_long_integer_type_node, align 4
  %265 = load i32, i32* @NULL_TREE, align 4
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* %3, align 4
  %268 = call i32 @tree_cons(i32 %265, i32 %266, i32 %267)
  %269 = call i32 @build_function_type(i32 %264, i32 %268)
  store i32 %269, i32* %31, align 4
  %270 = load i32, i32* @long_long_integer_type_node, align 4
  %271 = load i32, i32* @NULL_TREE, align 4
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %3, align 4
  %274 = call i32 @tree_cons(i32 %271, i32 %272, i32 %273)
  %275 = call i32 @build_function_type(i32 %270, i32 %274)
  store i32 %275, i32* %32, align 4
  %276 = load i32, i32* @long_long_integer_type_node, align 4
  %277 = load i32, i32* @NULL_TREE, align 4
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* %3, align 4
  %280 = call i32 @tree_cons(i32 %277, i32 %278, i32 %279)
  %281 = call i32 @build_function_type(i32 %276, i32 %280)
  store i32 %281, i32* %33, align 4
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @NULL_TREE, align 4
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @tree_cons(i32 %283, i32 %284, i32 %285)
  %287 = call i32 @build_function_type(i32 %282, i32 %286)
  store i32 %287, i32* %34, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @NULL_TREE, align 4
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %3, align 4
  %292 = call i32 @tree_cons(i32 %289, i32 %290, i32 %291)
  %293 = call i32 @build_function_type(i32 %288, i32 %292)
  store i32 %293, i32* %35, align 4
  %294 = load i32, i32* @long_long_unsigned_type_node, align 4
  %295 = load i32, i32* @NULL_TREE, align 4
  %296 = load i32, i32* @long_long_unsigned_type_node, align 4
  %297 = load i32, i32* @NULL_TREE, align 4
  %298 = load i32, i32* %5, align 4
  %299 = load i32, i32* @NULL_TREE, align 4
  %300 = load i32, i32* %5, align 4
  %301 = load i32, i32* %3, align 4
  %302 = call i32 @tree_cons(i32 %299, i32 %300, i32 %301)
  %303 = call i32 @tree_cons(i32 %297, i32 %298, i32 %302)
  %304 = call i32 @tree_cons(i32 %295, i32 %296, i32 %303)
  %305 = call i32 @build_function_type(i32 %294, i32 %304)
  store i32 %305, i32* %36, align 4
  %306 = load i32, i32* @long_long_unsigned_type_node, align 4
  %307 = load i32, i32* @NULL_TREE, align 4
  %308 = load i32, i32* %5, align 4
  %309 = load i32, i32* @NULL_TREE, align 4
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @tree_cons(i32 %309, i32 %310, i32 %311)
  %313 = call i32 @tree_cons(i32 %307, i32 %308, i32 %312)
  %314 = call i32 @build_function_type(i32 %306, i32 %313)
  store i32 %314, i32* %37, align 4
  %315 = load i32, i32* %6, align 4
  %316 = load i32, i32* @NULL_TREE, align 4
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* @NULL_TREE, align 4
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @tree_cons(i32 %318, i32 %319, i32 %320)
  %322 = call i32 @tree_cons(i32 %316, i32 %317, i32 %321)
  %323 = call i32 @build_function_type(i32 %315, i32 %322)
  store i32 %323, i32* %38, align 4
  %324 = load i32, i32* %5, align 4
  %325 = load i32, i32* @NULL_TREE, align 4
  %326 = load i32, i32* %5, align 4
  %327 = load i32, i32* @NULL_TREE, align 4
  %328 = load i32, i32* %5, align 4
  %329 = load i32, i32* %3, align 4
  %330 = call i32 @tree_cons(i32 %327, i32 %328, i32 %329)
  %331 = call i32 @tree_cons(i32 %325, i32 %326, i32 %330)
  %332 = call i32 @build_function_type(i32 %324, i32 %331)
  store i32 %332, i32* %39, align 4
  %333 = load i32, i32* %4, align 4
  %334 = load i32, i32* @NULL_TREE, align 4
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* @NULL_TREE, align 4
  %337 = load i32, i32* %4, align 4
  %338 = load i32, i32* %3, align 4
  %339 = call i32 @tree_cons(i32 %336, i32 %337, i32 %338)
  %340 = call i32 @tree_cons(i32 %334, i32 %335, i32 %339)
  %341 = call i32 @build_function_type(i32 %333, i32 %340)
  store i32 %341, i32* %40, align 4
  %342 = load i32, i32* @long_long_unsigned_type_node, align 4
  %343 = load i32, i32* @NULL_TREE, align 4
  %344 = load i32, i32* @long_long_unsigned_type_node, align 4
  %345 = load i32, i32* @NULL_TREE, align 4
  %346 = load i32, i32* @long_long_unsigned_type_node, align 4
  %347 = load i32, i32* %3, align 4
  %348 = call i32 @tree_cons(i32 %345, i32 %346, i32 %347)
  %349 = call i32 @tree_cons(i32 %343, i32 %344, i32 %348)
  %350 = call i32 @build_function_type(i32 %342, i32 %349)
  store i32 %350, i32* %41, align 4
  store i64 0, i64* %2, align 8
  %351 = load %struct.builtin_description*, %struct.builtin_description** @bdesc_2arg, align 8
  store %struct.builtin_description* %351, %struct.builtin_description** %1, align 8
  br label %352

352:                                              ; preds = %398, %0
  %353 = load i64, i64* %2, align 8
  %354 = load %struct.builtin_description*, %struct.builtin_description** @bdesc_2arg, align 8
  %355 = call i64 @ARRAY_SIZE(%struct.builtin_description* %354)
  %356 = icmp ult i64 %353, %355
  br i1 %356, label %357, label %403

357:                                              ; preds = %352
  %358 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %359 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  br label %398

363:                                              ; preds = %357
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %365 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %366 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i64 1
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %42, align 4
  %374 = load i32, i32* %42, align 4
  switch i32 %374, label %383 [
    i32 128, label %375
    i32 129, label %377
    i32 130, label %379
    i32 131, label %381
  ]

375:                                              ; preds = %363
  %376 = load i32, i32* %38, align 4
  store i32 %376, i32* %43, align 4
  br label %385

377:                                              ; preds = %363
  %378 = load i32, i32* %39, align 4
  store i32 %378, i32* %43, align 4
  br label %385

379:                                              ; preds = %363
  %380 = load i32, i32* %40, align 4
  store i32 %380, i32* %43, align 4
  br label %385

381:                                              ; preds = %363
  %382 = load i32, i32* %41, align 4
  store i32 %382, i32* %43, align 4
  br label %385

383:                                              ; preds = %363
  %384 = call i32 (...) @gcc_unreachable()
  br label %385

385:                                              ; preds = %383, %381, %379, %377, %375
  %386 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %387 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %390 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = inttoptr i64 %391 to i8*
  %393 = load i32, i32* %43, align 4
  %394 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %395 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @def_mbuiltin(i32 %388, i8* %392, i32 %393, i32 %396)
  br label %398

398:                                              ; preds = %385, %362
  %399 = load i64, i64* %2, align 8
  %400 = add i64 %399, 1
  store i64 %400, i64* %2, align 8
  %401 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %402 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %401, i32 1
  store %struct.builtin_description* %402, %struct.builtin_description** %1, align 8
  br label %352

403:                                              ; preds = %352
  %404 = load i32, i32* @FL_IWMMXT, align 4
  %405 = load i32, i32* %30, align 4
  %406 = load i32, i32* @ARM_BUILTIN_WZERO, align 4
  %407 = call i32 @def_mbuiltin(i32 %404, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %405, i32 %406)
  %408 = load i32, i32* @FL_IWMMXT, align 4
  %409 = load i32, i32* %29, align 4
  %410 = load i32, i32* @ARM_BUILTIN_SETWCX, align 4
  %411 = call i32 @def_mbuiltin(i32 %408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %409, i32 %410)
  %412 = load i32, i32* @FL_IWMMXT, align 4
  %413 = load i32, i32* %7, align 4
  %414 = load i32, i32* @ARM_BUILTIN_GETWCX, align 4
  %415 = call i32 @def_mbuiltin(i32 %412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %413, i32 %414)
  %416 = load i32, i32* @FL_IWMMXT, align 4
  %417 = load i32, i32* %27, align 4
  %418 = load i32, i32* @ARM_BUILTIN_WSLLH, align 4
  %419 = call i32 @def_mbuiltin(i32 %416, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %417, i32 %418)
  %420 = load i32, i32* @FL_IWMMXT, align 4
  %421 = load i32, i32* %28, align 4
  %422 = load i32, i32* @ARM_BUILTIN_WSLLW, align 4
  %423 = call i32 @def_mbuiltin(i32 %420, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %421, i32 %422)
  %424 = load i32, i32* @FL_IWMMXT, align 4
  %425 = load i32, i32* %41, align 4
  %426 = load i32, i32* @ARM_BUILTIN_WSLLD, align 4
  %427 = call i32 @def_mbuiltin(i32 %424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %425, i32 %426)
  %428 = load i32, i32* @FL_IWMMXT, align 4
  %429 = load i32, i32* %9, align 4
  %430 = load i32, i32* @ARM_BUILTIN_WSLLHI, align 4
  %431 = call i32 @def_mbuiltin(i32 %428, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %429, i32 %430)
  %432 = load i32, i32* @FL_IWMMXT, align 4
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* @ARM_BUILTIN_WSLLWI, align 4
  %435 = call i32 @def_mbuiltin(i32 %432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %433, i32 %434)
  %436 = load i32, i32* @FL_IWMMXT, align 4
  %437 = load i32, i32* %12, align 4
  %438 = load i32, i32* @ARM_BUILTIN_WSLLDI, align 4
  %439 = call i32 @def_mbuiltin(i32 %436, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %437, i32 %438)
  %440 = load i32, i32* @FL_IWMMXT, align 4
  %441 = load i32, i32* %27, align 4
  %442 = load i32, i32* @ARM_BUILTIN_WSRLH, align 4
  %443 = call i32 @def_mbuiltin(i32 %440, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %441, i32 %442)
  %444 = load i32, i32* @FL_IWMMXT, align 4
  %445 = load i32, i32* %28, align 4
  %446 = load i32, i32* @ARM_BUILTIN_WSRLW, align 4
  %447 = call i32 @def_mbuiltin(i32 %444, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %445, i32 %446)
  %448 = load i32, i32* @FL_IWMMXT, align 4
  %449 = load i32, i32* %41, align 4
  %450 = load i32, i32* @ARM_BUILTIN_WSRLD, align 4
  %451 = call i32 @def_mbuiltin(i32 %448, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %449, i32 %450)
  %452 = load i32, i32* @FL_IWMMXT, align 4
  %453 = load i32, i32* %9, align 4
  %454 = load i32, i32* @ARM_BUILTIN_WSRLHI, align 4
  %455 = call i32 @def_mbuiltin(i32 %452, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %453, i32 %454)
  %456 = load i32, i32* @FL_IWMMXT, align 4
  %457 = load i32, i32* %10, align 4
  %458 = load i32, i32* @ARM_BUILTIN_WSRLWI, align 4
  %459 = call i32 @def_mbuiltin(i32 %456, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %457, i32 %458)
  %460 = load i32, i32* @FL_IWMMXT, align 4
  %461 = load i32, i32* %12, align 4
  %462 = load i32, i32* @ARM_BUILTIN_WSRLDI, align 4
  %463 = call i32 @def_mbuiltin(i32 %460, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %461, i32 %462)
  %464 = load i32, i32* @FL_IWMMXT, align 4
  %465 = load i32, i32* %27, align 4
  %466 = load i32, i32* @ARM_BUILTIN_WSRAH, align 4
  %467 = call i32 @def_mbuiltin(i32 %464, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %465, i32 %466)
  %468 = load i32, i32* @FL_IWMMXT, align 4
  %469 = load i32, i32* %28, align 4
  %470 = load i32, i32* @ARM_BUILTIN_WSRAW, align 4
  %471 = call i32 @def_mbuiltin(i32 %468, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %469, i32 %470)
  %472 = load i32, i32* @FL_IWMMXT, align 4
  %473 = load i32, i32* %41, align 4
  %474 = load i32, i32* @ARM_BUILTIN_WSRAD, align 4
  %475 = call i32 @def_mbuiltin(i32 %472, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %473, i32 %474)
  %476 = load i32, i32* @FL_IWMMXT, align 4
  %477 = load i32, i32* %9, align 4
  %478 = load i32, i32* @ARM_BUILTIN_WSRAHI, align 4
  %479 = call i32 @def_mbuiltin(i32 %476, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %477, i32 %478)
  %480 = load i32, i32* @FL_IWMMXT, align 4
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* @ARM_BUILTIN_WSRAWI, align 4
  %483 = call i32 @def_mbuiltin(i32 %480, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %481, i32 %482)
  %484 = load i32, i32* @FL_IWMMXT, align 4
  %485 = load i32, i32* %12, align 4
  %486 = load i32, i32* @ARM_BUILTIN_WSRADI, align 4
  %487 = call i32 @def_mbuiltin(i32 %484, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %485, i32 %486)
  %488 = load i32, i32* @FL_IWMMXT, align 4
  %489 = load i32, i32* %27, align 4
  %490 = load i32, i32* @ARM_BUILTIN_WRORH, align 4
  %491 = call i32 @def_mbuiltin(i32 %488, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %489, i32 %490)
  %492 = load i32, i32* @FL_IWMMXT, align 4
  %493 = load i32, i32* %28, align 4
  %494 = load i32, i32* @ARM_BUILTIN_WRORW, align 4
  %495 = call i32 @def_mbuiltin(i32 %492, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %493, i32 %494)
  %496 = load i32, i32* @FL_IWMMXT, align 4
  %497 = load i32, i32* %41, align 4
  %498 = load i32, i32* @ARM_BUILTIN_WRORD, align 4
  %499 = call i32 @def_mbuiltin(i32 %496, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %497, i32 %498)
  %500 = load i32, i32* @FL_IWMMXT, align 4
  %501 = load i32, i32* %9, align 4
  %502 = load i32, i32* @ARM_BUILTIN_WRORHI, align 4
  %503 = call i32 @def_mbuiltin(i32 %500, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %501, i32 %502)
  %504 = load i32, i32* @FL_IWMMXT, align 4
  %505 = load i32, i32* %10, align 4
  %506 = load i32, i32* @ARM_BUILTIN_WRORWI, align 4
  %507 = call i32 @def_mbuiltin(i32 %504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %505, i32 %506)
  %508 = load i32, i32* @FL_IWMMXT, align 4
  %509 = load i32, i32* %12, align 4
  %510 = load i32, i32* @ARM_BUILTIN_WRORDI, align 4
  %511 = call i32 @def_mbuiltin(i32 %508, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %509, i32 %510)
  %512 = load i32, i32* @FL_IWMMXT, align 4
  %513 = load i32, i32* %9, align 4
  %514 = load i32, i32* @ARM_BUILTIN_WSHUFH, align 4
  %515 = call i32 @def_mbuiltin(i32 %512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %513, i32 %514)
  %516 = load i32, i32* @FL_IWMMXT, align 4
  %517 = load i32, i32* %26, align 4
  %518 = load i32, i32* @ARM_BUILTIN_WSADB, align 4
  %519 = call i32 @def_mbuiltin(i32 %516, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 %517, i32 %518)
  %520 = load i32, i32* @FL_IWMMXT, align 4
  %521 = load i32, i32* %25, align 4
  %522 = load i32, i32* @ARM_BUILTIN_WSADH, align 4
  %523 = call i32 @def_mbuiltin(i32 %520, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 %521, i32 %522)
  %524 = load i32, i32* @FL_IWMMXT, align 4
  %525 = load i32, i32* %26, align 4
  %526 = load i32, i32* @ARM_BUILTIN_WSADBZ, align 4
  %527 = call i32 @def_mbuiltin(i32 %524, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 %525, i32 %526)
  %528 = load i32, i32* @FL_IWMMXT, align 4
  %529 = load i32, i32* %25, align 4
  %530 = load i32, i32* @ARM_BUILTIN_WSADHZ, align 4
  %531 = call i32 @def_mbuiltin(i32 %528, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 %529, i32 %530)
  %532 = load i32, i32* @FL_IWMMXT, align 4
  %533 = load i32, i32* %17, align 4
  %534 = load i32, i32* @ARM_BUILTIN_TEXTRMSB, align 4
  %535 = call i32 @def_mbuiltin(i32 %532, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 %533, i32 %534)
  %536 = load i32, i32* @FL_IWMMXT, align 4
  %537 = load i32, i32* %18, align 4
  %538 = load i32, i32* @ARM_BUILTIN_TEXTRMSH, align 4
  %539 = call i32 @def_mbuiltin(i32 %536, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i32 %537, i32 %538)
  %540 = load i32, i32* @FL_IWMMXT, align 4
  %541 = load i32, i32* %19, align 4
  %542 = load i32, i32* @ARM_BUILTIN_TEXTRMSW, align 4
  %543 = call i32 @def_mbuiltin(i32 %540, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 %541, i32 %542)
  %544 = load i32, i32* @FL_IWMMXT, align 4
  %545 = load i32, i32* %17, align 4
  %546 = load i32, i32* @ARM_BUILTIN_TEXTRMUB, align 4
  %547 = call i32 @def_mbuiltin(i32 %544, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 %545, i32 %546)
  %548 = load i32, i32* @FL_IWMMXT, align 4
  %549 = load i32, i32* %18, align 4
  %550 = load i32, i32* @ARM_BUILTIN_TEXTRMUH, align 4
  %551 = call i32 @def_mbuiltin(i32 %548, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 %549, i32 %550)
  %552 = load i32, i32* @FL_IWMMXT, align 4
  %553 = load i32, i32* %19, align 4
  %554 = load i32, i32* @ARM_BUILTIN_TEXTRMUW, align 4
  %555 = call i32 @def_mbuiltin(i32 %552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 %553, i32 %554)
  %556 = load i32, i32* @FL_IWMMXT, align 4
  %557 = load i32, i32* %20, align 4
  %558 = load i32, i32* @ARM_BUILTIN_TINSRB, align 4
  %559 = call i32 @def_mbuiltin(i32 %556, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i32 %557, i32 %558)
  %560 = load i32, i32* @FL_IWMMXT, align 4
  %561 = load i32, i32* %21, align 4
  %562 = load i32, i32* @ARM_BUILTIN_TINSRH, align 4
  %563 = call i32 @def_mbuiltin(i32 %560, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 %561, i32 %562)
  %564 = load i32, i32* @FL_IWMMXT, align 4
  %565 = load i32, i32* %22, align 4
  %566 = load i32, i32* @ARM_BUILTIN_TINSRW, align 4
  %567 = call i32 @def_mbuiltin(i32 %564, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i32 %565, i32 %566)
  %568 = load i32, i32* @FL_IWMMXT, align 4
  %569 = load i32, i32* %31, align 4
  %570 = load i32, i32* @ARM_BUILTIN_WACCB, align 4
  %571 = call i32 @def_mbuiltin(i32 %568, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 %569, i32 %570)
  %572 = load i32, i32* @FL_IWMMXT, align 4
  %573 = load i32, i32* %32, align 4
  %574 = load i32, i32* @ARM_BUILTIN_WACCH, align 4
  %575 = call i32 @def_mbuiltin(i32 %572, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 %573, i32 %574)
  %576 = load i32, i32* @FL_IWMMXT, align 4
  %577 = load i32, i32* %33, align 4
  %578 = load i32, i32* @ARM_BUILTIN_WACCW, align 4
  %579 = call i32 @def_mbuiltin(i32 %576, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %577, i32 %578)
  %580 = load i32, i32* @FL_IWMMXT, align 4
  %581 = load i32, i32* %14, align 4
  %582 = load i32, i32* @ARM_BUILTIN_TMOVMSKB, align 4
  %583 = call i32 @def_mbuiltin(i32 %580, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i32 %581, i32 %582)
  %584 = load i32, i32* @FL_IWMMXT, align 4
  %585 = load i32, i32* %15, align 4
  %586 = load i32, i32* @ARM_BUILTIN_TMOVMSKH, align 4
  %587 = call i32 @def_mbuiltin(i32 %584, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i64 0, i64 0), i32 %585, i32 %586)
  %588 = load i32, i32* @FL_IWMMXT, align 4
  %589 = load i32, i32* %16, align 4
  %590 = load i32, i32* @ARM_BUILTIN_TMOVMSKW, align 4
  %591 = call i32 @def_mbuiltin(i32 %588, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i32 %589, i32 %590)
  %592 = load i32, i32* @FL_IWMMXT, align 4
  %593 = load i32, i32* %23, align 4
  %594 = load i32, i32* @ARM_BUILTIN_WPACKHSS, align 4
  %595 = call i32 @def_mbuiltin(i32 %592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i32 %593, i32 %594)
  %596 = load i32, i32* @FL_IWMMXT, align 4
  %597 = load i32, i32* %23, align 4
  %598 = load i32, i32* @ARM_BUILTIN_WPACKHUS, align 4
  %599 = call i32 @def_mbuiltin(i32 %596, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 %597, i32 %598)
  %600 = load i32, i32* @FL_IWMMXT, align 4
  %601 = load i32, i32* %24, align 4
  %602 = load i32, i32* @ARM_BUILTIN_WPACKWUS, align 4
  %603 = call i32 @def_mbuiltin(i32 %600, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i32 %601, i32 %602)
  %604 = load i32, i32* @FL_IWMMXT, align 4
  %605 = load i32, i32* %24, align 4
  %606 = load i32, i32* @ARM_BUILTIN_WPACKWSS, align 4
  %607 = call i32 @def_mbuiltin(i32 %604, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 %605, i32 %606)
  %608 = load i32, i32* @FL_IWMMXT, align 4
  %609 = load i32, i32* %11, align 4
  %610 = load i32, i32* @ARM_BUILTIN_WPACKDUS, align 4
  %611 = call i32 @def_mbuiltin(i32 %608, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i32 %609, i32 %610)
  %612 = load i32, i32* @FL_IWMMXT, align 4
  %613 = load i32, i32* %11, align 4
  %614 = load i32, i32* @ARM_BUILTIN_WPACKDSS, align 4
  %615 = call i32 @def_mbuiltin(i32 %612, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i32 %613, i32 %614)
  %616 = load i32, i32* @FL_IWMMXT, align 4
  %617 = load i32, i32* %35, align 4
  %618 = load i32, i32* @ARM_BUILTIN_WUNPCKEHUB, align 4
  %619 = call i32 @def_mbuiltin(i32 %616, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0), i32 %617, i32 %618)
  %620 = load i32, i32* @FL_IWMMXT, align 4
  %621 = load i32, i32* %34, align 4
  %622 = load i32, i32* @ARM_BUILTIN_WUNPCKEHUH, align 4
  %623 = call i32 @def_mbuiltin(i32 %620, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i32 %621, i32 %622)
  %624 = load i32, i32* @FL_IWMMXT, align 4
  %625 = load i32, i32* %33, align 4
  %626 = load i32, i32* @ARM_BUILTIN_WUNPCKEHUW, align 4
  %627 = call i32 @def_mbuiltin(i32 %624, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i64 0, i64 0), i32 %625, i32 %626)
  %628 = load i32, i32* @FL_IWMMXT, align 4
  %629 = load i32, i32* %35, align 4
  %630 = load i32, i32* @ARM_BUILTIN_WUNPCKEHSB, align 4
  %631 = call i32 @def_mbuiltin(i32 %628, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i64 0, i64 0), i32 %629, i32 %630)
  %632 = load i32, i32* @FL_IWMMXT, align 4
  %633 = load i32, i32* %34, align 4
  %634 = load i32, i32* @ARM_BUILTIN_WUNPCKEHSH, align 4
  %635 = call i32 @def_mbuiltin(i32 %632, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i64 0, i64 0), i32 %633, i32 %634)
  %636 = load i32, i32* @FL_IWMMXT, align 4
  %637 = load i32, i32* %33, align 4
  %638 = load i32, i32* @ARM_BUILTIN_WUNPCKEHSW, align 4
  %639 = call i32 @def_mbuiltin(i32 %636, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i32 %637, i32 %638)
  %640 = load i32, i32* @FL_IWMMXT, align 4
  %641 = load i32, i32* %35, align 4
  %642 = load i32, i32* @ARM_BUILTIN_WUNPCKELUB, align 4
  %643 = call i32 @def_mbuiltin(i32 %640, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i64 0, i64 0), i32 %641, i32 %642)
  %644 = load i32, i32* @FL_IWMMXT, align 4
  %645 = load i32, i32* %34, align 4
  %646 = load i32, i32* @ARM_BUILTIN_WUNPCKELUH, align 4
  %647 = call i32 @def_mbuiltin(i32 %644, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0), i32 %645, i32 %646)
  %648 = load i32, i32* @FL_IWMMXT, align 4
  %649 = load i32, i32* %33, align 4
  %650 = load i32, i32* @ARM_BUILTIN_WUNPCKELUW, align 4
  %651 = call i32 @def_mbuiltin(i32 %648, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i64 0, i64 0), i32 %649, i32 %650)
  %652 = load i32, i32* @FL_IWMMXT, align 4
  %653 = load i32, i32* %35, align 4
  %654 = load i32, i32* @ARM_BUILTIN_WUNPCKELSB, align 4
  %655 = call i32 @def_mbuiltin(i32 %652, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0), i32 %653, i32 %654)
  %656 = load i32, i32* @FL_IWMMXT, align 4
  %657 = load i32, i32* %34, align 4
  %658 = load i32, i32* @ARM_BUILTIN_WUNPCKELSH, align 4
  %659 = call i32 @def_mbuiltin(i32 %656, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i64 0, i64 0), i32 %657, i32 %658)
  %660 = load i32, i32* @FL_IWMMXT, align 4
  %661 = load i32, i32* %33, align 4
  %662 = load i32, i32* @ARM_BUILTIN_WUNPCKELSW, align 4
  %663 = call i32 @def_mbuiltin(i32 %660, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i32 %661, i32 %662)
  %664 = load i32, i32* @FL_IWMMXT, align 4
  %665 = load i32, i32* %36, align 4
  %666 = load i32, i32* @ARM_BUILTIN_WMACS, align 4
  %667 = call i32 @def_mbuiltin(i32 %664, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i64 0, i64 0), i32 %665, i32 %666)
  %668 = load i32, i32* @FL_IWMMXT, align 4
  %669 = load i32, i32* %37, align 4
  %670 = load i32, i32* @ARM_BUILTIN_WMACSZ, align 4
  %671 = call i32 @def_mbuiltin(i32 %668, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 %669, i32 %670)
  %672 = load i32, i32* @FL_IWMMXT, align 4
  %673 = load i32, i32* %36, align 4
  %674 = load i32, i32* @ARM_BUILTIN_WMACU, align 4
  %675 = call i32 @def_mbuiltin(i32 %672, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i32 %673, i32 %674)
  %676 = load i32, i32* @FL_IWMMXT, align 4
  %677 = load i32, i32* %37, align 4
  %678 = load i32, i32* @ARM_BUILTIN_WMACUZ, align 4
  %679 = call i32 @def_mbuiltin(i32 %676, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0), i32 %677, i32 %678)
  %680 = load i32, i32* @FL_IWMMXT, align 4
  %681 = load i32, i32* %8, align 4
  %682 = load i32, i32* @ARM_BUILTIN_WALIGN, align 4
  %683 = call i32 @def_mbuiltin(i32 %680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i64 0, i64 0), i32 %681, i32 %682)
  %684 = load i32, i32* @FL_IWMMXT, align 4
  %685 = load i32, i32* %13, align 4
  %686 = load i32, i32* @ARM_BUILTIN_TMIA, align 4
  %687 = call i32 @def_mbuiltin(i32 %684, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), i32 %685, i32 %686)
  %688 = load i32, i32* @FL_IWMMXT, align 4
  %689 = load i32, i32* %13, align 4
  %690 = load i32, i32* @ARM_BUILTIN_TMIAPH, align 4
  %691 = call i32 @def_mbuiltin(i32 %688, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i64 0, i64 0), i32 %689, i32 %690)
  %692 = load i32, i32* @FL_IWMMXT, align 4
  %693 = load i32, i32* %13, align 4
  %694 = load i32, i32* @ARM_BUILTIN_TMIABB, align 4
  %695 = call i32 @def_mbuiltin(i32 %692, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.72, i64 0, i64 0), i32 %693, i32 %694)
  %696 = load i32, i32* @FL_IWMMXT, align 4
  %697 = load i32, i32* %13, align 4
  %698 = load i32, i32* @ARM_BUILTIN_TMIABT, align 4
  %699 = call i32 @def_mbuiltin(i32 %696, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i32 %697, i32 %698)
  %700 = load i32, i32* @FL_IWMMXT, align 4
  %701 = load i32, i32* %13, align 4
  %702 = load i32, i32* @ARM_BUILTIN_TMIATB, align 4
  %703 = call i32 @def_mbuiltin(i32 %700, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i64 0, i64 0), i32 %701, i32 %702)
  %704 = load i32, i32* @FL_IWMMXT, align 4
  %705 = load i32, i32* %13, align 4
  %706 = load i32, i32* @ARM_BUILTIN_TMIATT, align 4
  %707 = call i32 @def_mbuiltin(i32 %704, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i64 0, i64 0), i32 %705, i32 %706)
  ret void
}

declare dso_local i32 @build_vector_type_for_mode(i32, i32) #1

declare dso_local i32 @build_function_type(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.builtin_description*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @def_mbuiltin(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
