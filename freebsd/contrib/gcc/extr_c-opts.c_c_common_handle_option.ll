; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_handle_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_c_common_handle_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_option = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@cl_options = common dso_local global %struct.cl_option* null, align 8
@parse_in = common dso_local global i32 0, align 4
@CLK_ASM = common dso_local global i64 0, align 8
@CL_C = common dso_local global i32 0, align 4
@CL_CXX = common dso_local global i32 0, align 4
@CL_ObjC = common dso_local global i32 0, align 4
@CL_ObjCXX = common dso_local global i32 0, align 4
@pch_file = common dso_local global i8* null, align 8
@cpp_opts = common dso_local global %struct.TYPE_9__* null, align 8
@flag_preprocess_only = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@BRACKET = common dso_local global i32 0, align 4
@quote_chain_split = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"-I- specified twice\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"obsolete option -I- used, please use -iquote instead\00", align 1
@DEPS_SYSTEM = common dso_local global i8* null, align 8
@DEPS_USER = common dso_local global i8* null, align 8
@flag_no_output = common dso_local global i32 0, align 4
@deps_file = common dso_local global i8* null, align 8
@deps_seen = common dso_local global i32 0, align 4
@flag_no_line_commands = common dso_local global i32 0, align 4
@flag_working_directory = common dso_local global i32 0, align 4
@warn_char_subscripts = common dso_local global i32 0, align 4
@warn_missing_braces = common dso_local global i32 0, align 4
@warn_parentheses = common dso_local global i32 0, align 4
@warn_return_type = common dso_local global i32 0, align 4
@warn_sequence_point = common dso_local global i32 0, align 4
@warn_sign_compare = common dso_local global i32 0, align 4
@warn_switch = common dso_local global i32 0, align 4
@warn_strict_overflow = common dso_local global i32 0, align 4
@warn_address = common dso_local global i32 0, align 4
@warn_unknown_pragmas = common dso_local global i32 0, align 4
@warn_uninitialized = common dso_local global i32 0, align 4
@warn_main = common dso_local global i32 0, align 4
@warn_reorder = common dso_local global i32 0, align 4
@warn_nontemplate_friend = common dso_local global i32 0, align 4
@warn_pointer_sign = common dso_local global i32 0, align 4
@global_dc = common dso_local global %struct.TYPE_8__* null, align 8
@mesg_implicit_function_declaration = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@normalized_none = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"nfkc\00", align 1
@normalized_KC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@normalized_identifier_C = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@normalized_C = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"argument %qs to %<-Wnormalized%> not recognized\00", align 1
@warn_strict_null_sentinel = common dso_local global i32 0, align 4
@warn_unused_macros = common dso_local global i32 0, align 4
@warn_variadic_macros = common dso_local global i32 0, align 4
@warn_write_strings = common dso_local global i32 0, align 4
@warn_ecpp = common dso_local global i32 0, align 4
@warn_nonvdtor = common dso_local global i32 0, align 4
@flag_cond_mismatch = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"switch %qs is no longer supported\00", align 1
@flag_access_control = common dso_local global i32 0, align 4
@flag_no_asm = common dso_local global i32 0, align 4
@flag_no_builtin = common dso_local global i32 0, align 4
@flag_hosted = common dso_local global i32 0, align 4
@flag_short_double = common dso_local global i32 0, align 4
@flag_short_enums = common dso_local global i32 0, align 4
@flag_short_wchar = common dso_local global i32 0, align 4
@flag_signed_bitfields = common dso_local global i32 0, align 4
@flag_signed_char = common dso_local global i32 0, align 4
@flag_check_new = common dso_local global i32 0, align 4
@flag_conserve_space = common dso_local global i32 0, align 4
@constant_string_class_name = common dso_local global i8* null, align 8
@flag_default_inline = common dso_local global i32 0, align 4
@flag_elide_constructors = common dso_local global i32 0, align 4
@flag_enforce_eh_specs = common dso_local global i32 0, align 4
@flag_new_for_scope = common dso_local global i32 0, align 4
@flag_no_gnu_keywords = common dso_local global i32 0, align 4
@flag_next_runtime = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [77 x i8] c"-fhandle-exceptions has been renamed -fexceptions (and is now on by default)\00", align 1
@flag_exceptions = common dso_local global i32 0, align 4
@flag_implement_inlines = common dso_local global i32 0, align 4
@flag_implicit_inline_templates = common dso_local global i32 0, align 4
@flag_implicit_templates = common dso_local global i32 0, align 4
@flag_lax_vector_conversions = common dso_local global i32 0, align 4
@flag_ms_extensions = common dso_local global i32 0, align 4
@flag_nil_receivers = common dso_local global i32 0, align 4
@flag_no_nonansi_builtin = common dso_local global i32 0, align 4
@flag_optional_diags = common dso_local global i32 0, align 4
@flag_pch_preprocess = common dso_local global i32 0, align 4
@flag_permissive = common dso_local global i32 0, align 4
@flag_replace_objc_classes = common dso_local global i32 0, align 4
@flag_use_repository = common dso_local global i32 0, align 4
@flag_rtti = common dso_local global i32 0, align 4
@flag_detailed_statistics = common dso_local global i32 0, align 4
@max_tinst_depth = common dso_local global i32 0, align 4
@flag_use_cxa_atexit = common dso_local global i32 0, align 4
@flag_use_cxa_get_exception_ptr = common dso_local global i32 0, align 4
@visibility_options = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@flag_weak = common dso_local global i32 0, align 4
@flag_threadsafe_statics = common dso_local global i32 0, align 4
@flag_zero_link = common dso_local global i32 0, align 4
@flag_gen_declaration = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"dir:ord:sys,dir:gen:any,ind:base\00", align 1
@AFTER = common dso_local global i32 0, align 4
@imultilib = common dso_local global i8* null, align 8
@iprefix = common dso_local global i8* null, align 8
@QUOTE = common dso_local global i32 0, align 4
@sysroot = common dso_local global i8* null, align 8
@SYSTEM = common dso_local global i32 0, align 4
@lang_fortran = common dso_local global i32 0, align 4
@std_inc = common dso_local global i32 0, align 4
@std_cxx_inc = common dso_local global i32 0, align 4
@out_fname = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"output filename specified twice\00", align 1
@warn_overlength_strings = common dso_local global i32 0, align 4
@print_struct_values = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@exit_after_options = common dso_local global i32 0, align 4
@flag_undef = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@CL_Fortran = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_common_handle_option(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cl_option*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %11, i64 %12
  store %struct.cl_option* %13, %struct.cl_option** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load i32, i32* @parse_in, align 4
  %17 = call %struct.TYPE_10__* @cpp_get_options(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CLK_ASM, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %24 [
    i32 247, label %42
    i32 295, label %44
    i32 294, label %48
    i32 293, label %51
    i32 292, label %56
    i32 291, label %60
    i32 289, label %61
    i32 290, label %64
    i32 288, label %68
    i32 287, label %86
    i32 283, label %86
    i32 286, label %100
    i32 282, label %100
    i32 285, label %113
    i32 284, label %115
    i32 281, label %119
    i32 280, label %123
    i32 279, label %123
    i32 278, label %127
    i32 169, label %128
    i32 277, label %130
    i32 276, label %134
    i32 261, label %134
    i32 275, label %194
    i32 274, label %194
    i32 273, label %198
    i32 271, label %202
    i32 270, label %206
    i32 269, label %213
    i32 268, label %214
    i32 267, label %217
    i32 266, label %221
    i32 265, label %224
    i32 264, label %225
    i32 263, label %229
    i32 262, label %235
    i32 260, label %239
    i32 259, label %243
    i32 258, label %247
    i32 257, label %295
    i32 256, label %297
    i32 255, label %299
    i32 254, label %303
    i32 253, label %307
    i32 252, label %311
    i32 251, label %315
    i32 250, label %318
    i32 249, label %320
    i32 248, label %322
    i32 272, label %324
    i32 246, label %330
    i32 245, label %338
    i32 237, label %341
    i32 243, label %347
    i32 242, label %347
    i32 226, label %347
    i32 223, label %347
    i32 218, label %347
    i32 216, label %347
    i32 214, label %347
    i32 209, label %347
    i32 206, label %347
    i32 205, label %347
    i32 201, label %347
    i32 185, label %347
    i32 183, label %347
    i32 180, label %347
    i32 172, label %347
    i32 168, label %347
    i32 173, label %347
    i32 244, label %352
    i32 241, label %354
    i32 240, label %359
    i32 239, label %364
    i32 233, label %372
    i32 232, label %375
    i32 221, label %379
    i32 215, label %384
    i32 191, label %397
    i32 190, label %399
    i32 189, label %401
    i32 187, label %403
    i32 186, label %405
    i32 178, label %407
    i32 177, label %412
    i32 238, label %417
    i32 236, label %419
    i32 235, label %421
    i32 234, label %423
    i32 231, label %425
    i32 227, label %427
    i32 224, label %429
    i32 222, label %433
    i32 220, label %435
    i32 219, label %440
    i32 217, label %445
    i32 213, label %448
    i32 212, label %450
    i32 211, label %452
    i32 208, label %454
    i32 207, label %456
    i32 204, label %458
    i32 203, label %460
    i32 202, label %462
    i32 200, label %467
    i32 199, label %471
    i32 198, label %473
    i32 197, label %477
    i32 196, label %479
    i32 195, label %481
    i32 194, label %485
    i32 193, label %487
    i32 192, label %493
    i32 188, label %495
    i32 184, label %499
    i32 182, label %501
    i32 225, label %512
    i32 170, label %516
    i32 210, label %520
    i32 181, label %524
    i32 176, label %526
    i32 175, label %528
    i32 174, label %530
    i32 171, label %532
    i32 179, label %534
    i32 167, label %536
    i32 166, label %538
    i32 230, label %539
    i32 228, label %541
    i32 229, label %543
    i32 165, label %546
    i32 164, label %551
    i32 162, label %551
    i32 163, label %555
    i32 161, label %557
    i32 160, label %559
    i32 159, label %564
    i32 158, label %566
    i32 157, label %571
    i32 156, label %575
    i32 155, label %579
    i32 154, label %585
    i32 153, label %586
    i32 152, label %589
    i32 151, label %590
    i32 150, label %591
    i32 148, label %599
    i32 149, label %602
    i32 147, label %615
    i32 146, label %616
    i32 145, label %619
    i32 141, label %622
    i32 137, label %622
    i32 144, label %631
    i32 136, label %631
    i32 135, label %631
    i32 140, label %640
    i32 143, label %646
    i32 142, label %646
    i32 134, label %646
    i32 133, label %646
    i32 139, label %652
    i32 138, label %652
    i32 131, label %658
    i32 132, label %661
    i32 130, label %664
    i32 128, label %665
    i32 129, label %668
  ]

24:                                               ; preds = %3
  %25 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %25, i64 %27
  %29 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CL_C, align 4
  %32 = load i32, i32* @CL_CXX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CL_ObjC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CL_ObjCXX, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %669

41:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %669

42:                                               ; preds = %3
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** @pch_file, align 8
  br label %669

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @defer_opt(i32 %45, i8* %46)
  br label %669

48:                                               ; preds = %3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 35
  store i32 0, i32* %50, align 4
  br label %669

51:                                               ; preds = %3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 35
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 34
  store i32 0, i32* %55, align 8
  br label %669

56:                                               ; preds = %3
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @defer_opt(i32 %57, i8* %58)
  br label %669

60:                                               ; preds = %3
  store i32 1, i32* @flag_preprocess_only, align 4
  br label %669

61:                                               ; preds = %3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %669

64:                                               ; preds = %3
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @xstrdup(i8* %65)
  %67 = call i32 @TARGET_OPTF(i32 %66)
  br label %669

68:                                               ; preds = %3
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @xstrdup(i8* %73)
  %75 = load i32, i32* @BRACKET, align 4
  %76 = call i32 @add_path(i32 %74, i32 %75, i32 0, i32 1)
  br label %85

77:                                               ; preds = %68
  %78 = load i32, i32* @quote_chain_split, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  store i32 1, i32* @quote_chain_split, align 4
  %83 = call i32 (...) @split_quote_chain()
  %84 = call i32 @inform(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %72
  br label %669

86:                                               ; preds = %3, %3
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 287
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8*, i8** @DEPS_SYSTEM, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load i8*, i8** @DEPS_USER, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i8* %94, i8** %97, align 8
  store i32 1, i32* @flag_no_output, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %669

100:                                              ; preds = %3, %3
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 286
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8*, i8** @DEPS_SYSTEM, align 8
  br label %107

105:                                              ; preds = %100
  %106 = load i8*, i8** @DEPS_USER, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i8* [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** %5, align 8
  store i8* %112, i8** @deps_file, align 8
  br label %669

113:                                              ; preds = %3
  store i32 1, i32* @deps_seen, align 4
  %114 = load i8*, i8** %5, align 8
  store i8* %114, i8** @deps_file, align 8
  br label %669

115:                                              ; preds = %3
  store i32 1, i32* @deps_seen, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %669

119:                                              ; preds = %3
  store i32 1, i32* @deps_seen, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  br label %669

123:                                              ; preds = %3, %3
  store i32 1, i32* @deps_seen, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @defer_opt(i32 %124, i8* %125)
  br label %669

127:                                              ; preds = %3
  store i32 1, i32* @flag_no_line_commands, align 4
  br label %669

128:                                              ; preds = %3
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* @flag_working_directory, align 4
  br label %669

130:                                              ; preds = %3
  %131 = load i32, i32* %8, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 @defer_opt(i32 %131, i8* %132)
  br label %669

134:                                              ; preds = %3, %3
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @set_Wunused(i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @set_Wformat(i32 %137)
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @set_Wimplicit(i32 %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* @warn_char_subscripts, align 4
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* @warn_missing_braces, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 261
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* @warn_parentheses, align 4
  br label %147

147:                                              ; preds = %145, %134
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* @warn_return_type, align 4
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* @warn_sequence_point, align 4
  %150 = call i32 (...) @c_dialect_cxx()
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* @warn_sign_compare, align 4
  br label %154

154:                                              ; preds = %152, %147
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* @warn_switch, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @set_warn_strict_aliasing(i32 %156)
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* @warn_strict_overflow, align 4
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* @warn_address, align 4
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* @warn_unknown_pragmas, align 4
  %161 = load i32, i32* @warn_uninitialized, align 4
  %162 = icmp ne i32 %161, 1
  br i1 %162, label %163, label %168

163:                                              ; preds = %154
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 2, i32 0
  store i32 %167, i32* @warn_uninitialized, align 4
  br label %168

168:                                              ; preds = %163, %154
  %169 = call i32 (...) @c_dialect_cxx()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %6, align 4
  %173 = mul nsw i32 %172, 2
  store i32 %173, i32* @warn_main, align 4
  br label %177

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* @warn_reorder, align 4
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* @warn_nontemplate_friend, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @warn_pointer_sign, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  store i32 1, i32* @warn_pointer_sign, align 4
  br label %193

193:                                              ; preds = %192, %177
  br label %669

194:                                              ; preds = %3, %3
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  br label %669

198:                                              ; preds = %3
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 8
  br label %669

202:                                              ; preds = %3
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  br label %669

206:                                              ; preds = %3
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @global_dc, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  br label %669

213:                                              ; preds = %3
  store i32 2, i32* @mesg_implicit_function_declaration, align 4
  br label %669

214:                                              ; preds = %3
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @set_Wformat(i32 %215)
  br label %669

217:                                              ; preds = %3
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @atoi(i8* %218)
  %220 = call i32 @set_Wformat(i32 %219)
  br label %669

221:                                              ; preds = %3
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @set_Wimplicit(i32 %222)
  br label %669

224:                                              ; preds = %3
  br label %669

225:                                              ; preds = %3
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 9
  store i32 %226, i32* %228, align 4
  br label %669

229:                                              ; preds = %3
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 1, i32* @warn_main, align 4
  br label %234

233:                                              ; preds = %229
  store i32 -1, i32* @warn_main, align 4
  br label %234

234:                                              ; preds = %233, %232
  br label %669

235:                                              ; preds = %3
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 10
  store i32 %236, i32* %238, align 8
  br label %669

239:                                              ; preds = %3
  %240 = load i32, i32* %6, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  br label %669

243:                                              ; preds = %3
  %244 = load i32, i32* %6, align 4
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 11
  store i32 %244, i32* %246, align 4
  br label %669

247:                                              ; preds = %3
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load i8*, i8** %5, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %261

253:                                              ; preds = %250
  %254 = load i8*, i8** %5, align 8
  %255 = call i32 @strcasecmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253, %247
  %258 = load i32, i32* @normalized_none, align 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 32
  store i32 %258, i32* %260, align 8
  br label %294

261:                                              ; preds = %253, %250
  %262 = load i8*, i8** %5, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i8*, i8** %5, align 8
  %266 = call i32 @strcasecmp(i8* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %264, %261
  %269 = load i32, i32* @normalized_KC, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 32
  store i32 %269, i32* %271, align 8
  br label %293

272:                                              ; preds = %264
  %273 = load i8*, i8** %5, align 8
  %274 = call i32 @strcasecmp(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = load i32, i32* @normalized_identifier_C, align 4
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 32
  store i32 %277, i32* %279, align 8
  br label %292

280:                                              ; preds = %272
  %281 = load i8*, i8** %5, align 8
  %282 = call i32 @strcasecmp(i8* %281, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %280
  %285 = load i32, i32* @normalized_C, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 32
  store i32 %285, i32* %287, align 8
  br label %291

288:                                              ; preds = %280
  %289 = load i8*, i8** %5, align 8
  %290 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %289)
  br label %291

291:                                              ; preds = %288, %284
  br label %292

292:                                              ; preds = %291, %276
  br label %293

293:                                              ; preds = %292, %268
  br label %294

294:                                              ; preds = %293, %257
  br label %669

295:                                              ; preds = %3
  %296 = load i32, i32* %6, align 4
  store i32 %296, i32* @warn_return_type, align 4
  br label %669

297:                                              ; preds = %3
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* @warn_strict_null_sentinel, align 4
  br label %669

299:                                              ; preds = %3
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 12
  store i32 %300, i32* %302, align 8
  br label %669

303:                                              ; preds = %3
  %304 = load i32, i32* %6, align 4
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 13
  store i32 %304, i32* %306, align 4
  br label %669

307:                                              ; preds = %3
  %308 = load i32, i32* %6, align 4
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  br label %669

311:                                              ; preds = %3
  %312 = load i32, i32* %6, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 14
  store i32 %312, i32* %314, align 8
  br label %669

315:                                              ; preds = %3
  %316 = load i32, i32* %6, align 4
  %317 = mul nsw i32 %316, 2
  store i32 %317, i32* @warn_unknown_pragmas, align 4
  br label %669

318:                                              ; preds = %3
  %319 = load i32, i32* %6, align 4
  store i32 %319, i32* @warn_unused_macros, align 4
  br label %669

320:                                              ; preds = %3
  %321 = load i32, i32* %6, align 4
  store i32 %321, i32* @warn_variadic_macros, align 4
  br label %669

322:                                              ; preds = %3
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* @warn_write_strings, align 4
  br label %669

324:                                              ; preds = %3
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* @warn_ecpp, align 4
  %326 = load i32, i32* %6, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %324
  store i32 1, i32* @warn_nonvdtor, align 4
  br label %329

329:                                              ; preds = %328, %324
  br label %669

330:                                              ; preds = %3
  %331 = call i32 (...) @c_dialect_cxx()
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %330
  %334 = call i32 @set_std_c89(i32 0, i32 1)
  br label %337

335:                                              ; preds = %330
  %336 = call i32 @set_std_cxx98(i32 1)
  br label %337

337:                                              ; preds = %335, %333
  br label %669

338:                                              ; preds = %3
  %339 = load i8*, i8** %5, align 8
  %340 = call i32 @handle_OPT_d(i8* %339)
  br label %669

341:                                              ; preds = %3
  %342 = call i32 (...) @c_dialect_cxx()
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* %6, align 4
  store i32 %345, i32* @flag_cond_mismatch, align 4
  br label %669

346:                                              ; preds = %341
  br label %347

347:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %346
  %348 = load %struct.cl_option*, %struct.cl_option** %7, align 8
  %349 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %350)
  br label %669

352:                                              ; preds = %3
  %353 = load i32, i32* %6, align 4
  store i32 %353, i32* @flag_access_control, align 4
  br label %669

354:                                              ; preds = %3
  %355 = load i32, i32* %6, align 4
  %356 = icmp ne i32 %355, 0
  %357 = xor i1 %356, true
  %358 = zext i1 %357 to i32
  store i32 %358, i32* @flag_no_asm, align 4
  br label %669

359:                                              ; preds = %3
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  %362 = xor i1 %361, true
  %363 = zext i1 %362 to i32
  store i32 %363, i32* @flag_no_builtin, align 4
  br label %669

364:                                              ; preds = %3
  %365 = load i32, i32* %6, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store i32 0, i32* %9, align 4
  br label %371

368:                                              ; preds = %364
  %369 = load i8*, i8** %5, align 8
  %370 = call i32 @disable_builtin_function(i8* %369)
  br label %371

371:                                              ; preds = %368, %367
  br label %669

372:                                              ; preds = %3
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 15
  store i32 1, i32* %374, align 4
  br label %669

375:                                              ; preds = %3
  %376 = load i32, i32* %6, align 4
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 16
  store i32 %376, i32* %378, align 8
  br label %669

379:                                              ; preds = %3
  %380 = load i32, i32* %6, align 4
  %381 = icmp ne i32 %380, 0
  %382 = xor i1 %381, true
  %383 = zext i1 %382 to i32
  store i32 %383, i32* %6, align 4
  br label %384

384:                                              ; preds = %3, %379
  %385 = load i32, i32* %6, align 4
  store i32 %385, i32* @flag_hosted, align 4
  %386 = load i32, i32* %6, align 4
  %387 = icmp ne i32 %386, 0
  %388 = xor i1 %387, true
  %389 = zext i1 %388 to i32
  store i32 %389, i32* @flag_no_builtin, align 4
  %390 = load i32, i32* %6, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %384
  %393 = load i32, i32* @warn_main, align 4
  %394 = icmp eq i32 %393, 2
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  store i32 0, i32* @warn_main, align 4
  br label %396

396:                                              ; preds = %395, %392, %384
  br label %669

397:                                              ; preds = %3
  %398 = load i32, i32* %6, align 4
  store i32 %398, i32* @flag_short_double, align 4
  br label %669

399:                                              ; preds = %3
  %400 = load i32, i32* %6, align 4
  store i32 %400, i32* @flag_short_enums, align 4
  br label %669

401:                                              ; preds = %3
  %402 = load i32, i32* %6, align 4
  store i32 %402, i32* @flag_short_wchar, align 4
  br label %669

403:                                              ; preds = %3
  %404 = load i32, i32* %6, align 4
  store i32 %404, i32* @flag_signed_bitfields, align 4
  br label %669

405:                                              ; preds = %3
  %406 = load i32, i32* %6, align 4
  store i32 %406, i32* @flag_signed_char, align 4
  br label %669

407:                                              ; preds = %3
  %408 = load i32, i32* %6, align 4
  %409 = icmp ne i32 %408, 0
  %410 = xor i1 %409, true
  %411 = zext i1 %410 to i32
  store i32 %411, i32* @flag_signed_bitfields, align 4
  br label %669

412:                                              ; preds = %3
  %413 = load i32, i32* %6, align 4
  %414 = icmp ne i32 %413, 0
  %415 = xor i1 %414, true
  %416 = zext i1 %415 to i32
  store i32 %416, i32* @flag_signed_char, align 4
  br label %669

417:                                              ; preds = %3
  %418 = load i32, i32* %6, align 4
  store i32 %418, i32* @flag_check_new, align 4
  br label %669

419:                                              ; preds = %3
  %420 = load i32, i32* %6, align 4
  store i32 %420, i32* @flag_conserve_space, align 4
  br label %669

421:                                              ; preds = %3
  %422 = load i8*, i8** %5, align 8
  store i8* %422, i8** @constant_string_class_name, align 8
  br label %669

423:                                              ; preds = %3
  %424 = load i32, i32* %6, align 4
  store i32 %424, i32* @flag_default_inline, align 4
  br label %669

425:                                              ; preds = %3
  %426 = load i32, i32* %6, align 4
  store i32 %426, i32* @flag_elide_constructors, align 4
  br label %669

427:                                              ; preds = %3
  %428 = load i32, i32* %6, align 4
  store i32 %428, i32* @flag_enforce_eh_specs, align 4
  br label %669

429:                                              ; preds = %3
  %430 = load i32, i32* %6, align 4
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 17
  store i32 %430, i32* %432, align 4
  br label %669

433:                                              ; preds = %3
  %434 = load i32, i32* %6, align 4
  store i32 %434, i32* @flag_new_for_scope, align 4
  br label %669

435:                                              ; preds = %3
  %436 = load i32, i32* %6, align 4
  %437 = icmp ne i32 %436, 0
  %438 = xor i1 %437, true
  %439 = zext i1 %438 to i32
  store i32 %439, i32* @flag_no_gnu_keywords, align 4
  br label %669

440:                                              ; preds = %3
  %441 = load i32, i32* %6, align 4
  %442 = icmp ne i32 %441, 0
  %443 = xor i1 %442, true
  %444 = zext i1 %443 to i32
  store i32 %444, i32* @flag_next_runtime, align 4
  br label %669

445:                                              ; preds = %3
  %446 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.9, i64 0, i64 0))
  %447 = load i32, i32* %6, align 4
  store i32 %447, i32* @flag_exceptions, align 4
  br label %669

448:                                              ; preds = %3
  %449 = load i32, i32* %6, align 4
  store i32 %449, i32* @flag_implement_inlines, align 4
  br label %669

450:                                              ; preds = %3
  %451 = load i32, i32* %6, align 4
  store i32 %451, i32* @flag_implicit_inline_templates, align 4
  br label %669

452:                                              ; preds = %3
  %453 = load i32, i32* %6, align 4
  store i32 %453, i32* @flag_implicit_templates, align 4
  br label %669

454:                                              ; preds = %3
  %455 = load i32, i32* %6, align 4
  store i32 %455, i32* @flag_lax_vector_conversions, align 4
  br label %669

456:                                              ; preds = %3
  %457 = load i32, i32* %6, align 4
  store i32 %457, i32* @flag_ms_extensions, align 4
  br label %669

458:                                              ; preds = %3
  %459 = load i32, i32* %6, align 4
  store i32 %459, i32* @flag_next_runtime, align 4
  br label %669

460:                                              ; preds = %3
  %461 = load i32, i32* %6, align 4
  store i32 %461, i32* @flag_nil_receivers, align 4
  br label %669

462:                                              ; preds = %3
  %463 = load i32, i32* %6, align 4
  %464 = icmp ne i32 %463, 0
  %465 = xor i1 %464, true
  %466 = zext i1 %465 to i32
  store i32 %466, i32* @flag_no_nonansi_builtin, align 4
  br label %669

467:                                              ; preds = %3
  %468 = load i32, i32* %6, align 4
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 18
  store i32 %468, i32* %470, align 8
  br label %669

471:                                              ; preds = %3
  %472 = load i32, i32* %6, align 4
  store i32 %472, i32* @flag_optional_diags, align 4
  br label %669

473:                                              ; preds = %3
  %474 = load i32, i32* %6, align 4
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 19
  store i32 %474, i32* %476, align 4
  br label %669

477:                                              ; preds = %3
  %478 = load i32, i32* %6, align 4
  store i32 %478, i32* @flag_pch_preprocess, align 4
  br label %669

479:                                              ; preds = %3
  %480 = load i32, i32* %6, align 4
  store i32 %480, i32* @flag_permissive, align 4
  br label %669

481:                                              ; preds = %3
  %482 = load i32, i32* %6, align 4
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 20
  store i32 %482, i32* %484, align 8
  br label %669

485:                                              ; preds = %3
  %486 = load i32, i32* %6, align 4
  store i32 %486, i32* @flag_replace_objc_classes, align 4
  br label %669

487:                                              ; preds = %3
  %488 = load i32, i32* %6, align 4
  store i32 %488, i32* @flag_use_repository, align 4
  %489 = load i32, i32* %6, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %487
  store i32 0, i32* @flag_implicit_templates, align 4
  br label %492

492:                                              ; preds = %491, %487
  br label %669

493:                                              ; preds = %3
  %494 = load i32, i32* %6, align 4
  store i32 %494, i32* @flag_rtti, align 4
  br label %669

495:                                              ; preds = %3
  %496 = load i32, i32* %6, align 4
  %497 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %498 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %497, i32 0, i32 21
  store i32 %496, i32* %498, align 4
  br label %669

499:                                              ; preds = %3
  %500 = load i32, i32* %6, align 4
  store i32 %500, i32* @flag_detailed_statistics, align 4
  br label %669

501:                                              ; preds = %3
  %502 = load i32, i32* %6, align 4
  %503 = icmp sge i32 %502, 1
  br i1 %503, label %504, label %511

504:                                              ; preds = %501
  %505 = load i32, i32* %6, align 4
  %506 = icmp sle i32 %505, 100
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load i32, i32* %6, align 4
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 22
  store i32 %508, i32* %510, align 8
  br label %511

511:                                              ; preds = %507, %504, %501
  br label %669

512:                                              ; preds = %3
  %513 = load i8*, i8** %5, align 8
  %514 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 23
  store i8* %513, i8** %515, align 8
  br label %669

516:                                              ; preds = %3
  %517 = load i8*, i8** %5, align 8
  %518 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 24
  store i8* %517, i8** %519, align 8
  br label %669

520:                                              ; preds = %3
  %521 = load i8*, i8** %5, align 8
  %522 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %523 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %522, i32 0, i32 25
  store i8* %521, i8** %523, align 8
  br label %669

524:                                              ; preds = %3
  %525 = load i32, i32* %6, align 4
  store i32 %525, i32* @max_tinst_depth, align 4
  br label %669

526:                                              ; preds = %3
  %527 = load i32, i32* %6, align 4
  store i32 %527, i32* @flag_use_cxa_atexit, align 4
  br label %669

528:                                              ; preds = %3
  %529 = load i32, i32* %6, align 4
  store i32 %529, i32* @flag_use_cxa_get_exception_ptr, align 4
  br label %669

530:                                              ; preds = %3
  %531 = load i32, i32* %6, align 4
  store i32 %531, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @visibility_options, i32 0, i32 0), align 4
  br label %669

532:                                              ; preds = %3
  %533 = load i32, i32* %6, align 4
  store i32 %533, i32* @flag_weak, align 4
  br label %669

534:                                              ; preds = %3
  %535 = load i32, i32* %6, align 4
  store i32 %535, i32* @flag_threadsafe_statics, align 4
  br label %669

536:                                              ; preds = %3
  %537 = load i32, i32* %6, align 4
  store i32 %537, i32* @flag_zero_link, align 4
  br label %669

538:                                              ; preds = %3
  store i32 1, i32* @flag_gen_declaration, align 4
  br label %669

539:                                              ; preds = %3
  %540 = call i32 @set_struct_debug_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %669

541:                                              ; preds = %3
  %542 = call i32 @set_struct_debug_option(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %669

543:                                              ; preds = %3
  %544 = load i8*, i8** %5, align 8
  %545 = call i32 @set_struct_debug_option(i8* %544)
  br label %669

546:                                              ; preds = %3
  %547 = load i8*, i8** %5, align 8
  %548 = call i32 @xstrdup(i8* %547)
  %549 = load i32, i32* @AFTER, align 4
  %550 = call i32 @add_path(i32 %548, i32 %549, i32 0, i32 1)
  br label %669

551:                                              ; preds = %3, %3
  %552 = load i32, i32* %8, align 4
  %553 = load i8*, i8** %5, align 8
  %554 = call i32 @defer_opt(i32 %552, i8* %553)
  br label %669

555:                                              ; preds = %3
  %556 = load i8*, i8** %5, align 8
  store i8* %556, i8** @imultilib, align 8
  br label %669

557:                                              ; preds = %3
  %558 = load i8*, i8** %5, align 8
  store i8* %558, i8** @iprefix, align 8
  br label %669

559:                                              ; preds = %3
  %560 = load i8*, i8** %5, align 8
  %561 = call i32 @xstrdup(i8* %560)
  %562 = load i32, i32* @QUOTE, align 4
  %563 = call i32 @add_path(i32 %561, i32 %562, i32 0, i32 1)
  br label %669

564:                                              ; preds = %3
  %565 = load i8*, i8** %5, align 8
  store i8* %565, i8** @sysroot, align 8
  br label %669

566:                                              ; preds = %3
  %567 = load i8*, i8** %5, align 8
  %568 = call i32 @xstrdup(i8* %567)
  %569 = load i32, i32* @SYSTEM, align 4
  %570 = call i32 @add_path(i32 %568, i32 %569, i32 0, i32 1)
  br label %669

571:                                              ; preds = %3
  %572 = load i8*, i8** %5, align 8
  %573 = load i32, i32* @SYSTEM, align 4
  %574 = call i32 @add_prefixed_path(i8* %572, i32 %573)
  br label %669

575:                                              ; preds = %3
  %576 = load i8*, i8** %5, align 8
  %577 = load i32, i32* @BRACKET, align 4
  %578 = call i32 @add_prefixed_path(i8* %576, i32 %577)
  br label %669

579:                                              ; preds = %3
  %580 = load i32, i32* @parse_in, align 4
  %581 = load i64, i64* @CLK_ASM, align 8
  %582 = call i32 @cpp_set_lang(i32 %580, i64 %581)
  %583 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 16
  store i32 0, i32* %584, align 8
  br label %669

585:                                              ; preds = %3
  store i32 1, i32* @lang_fortran, align 4
  br label %669

586:                                              ; preds = %3
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %588 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %587, i32 0, i32 26
  store i32 1, i32* %588, align 8
  br label %669

589:                                              ; preds = %3
  store i32 0, i32* @std_inc, align 4
  br label %669

590:                                              ; preds = %3
  store i32 0, i32* @std_cxx_inc, align 4
  br label %669

591:                                              ; preds = %3
  %592 = load i8*, i8** @out_fname, align 8
  %593 = icmp ne i8* %592, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %591
  %595 = load i8*, i8** %5, align 8
  store i8* %595, i8** @out_fname, align 8
  br label %598

596:                                              ; preds = %591
  %597 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %598

598:                                              ; preds = %596, %594
  br label %669

599:                                              ; preds = %3
  %600 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %600, i32 0, i32 27
  store i32 1, i32* %601, align 4
  br label %602

602:                                              ; preds = %3, %599
  %603 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 28
  store i32 1, i32* %604, align 8
  %605 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %606 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %605, i32 0, i32 7
  store i32 1, i32* %606, align 4
  %607 = load i32, i32* @warn_pointer_sign, align 4
  %608 = icmp eq i32 %607, -1
  br i1 %608, label %609, label %610

609:                                              ; preds = %602
  store i32 1, i32* @warn_pointer_sign, align 4
  br label %610

610:                                              ; preds = %609, %602
  %611 = load i32, i32* @warn_overlength_strings, align 4
  %612 = icmp eq i32 %611, -1
  br i1 %612, label %613, label %614

613:                                              ; preds = %610
  store i32 1, i32* @warn_overlength_strings, align 4
  br label %614

614:                                              ; preds = %613, %610
  br label %669

615:                                              ; preds = %3
  store i32 1, i32* @print_struct_values, align 4
  br label %669

616:                                              ; preds = %3
  %617 = load i32, i32* @stdout, align 4
  %618 = call i32 @c_common_print_pch_checksum(i32 %617)
  store i32 1, i32* @exit_after_options, align 4
  br label %669

619:                                              ; preds = %3
  %620 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %621 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %620, i32 0, i32 29
  store i32 1, i32* %621, align 4
  br label %669

622:                                              ; preds = %3, %3
  %623 = load i32, i32* %10, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %630, label %625

625:                                              ; preds = %622
  %626 = load i32, i32* %8, align 4
  %627 = icmp eq i32 %626, 141
  %628 = zext i1 %627 to i32
  %629 = call i32 @set_std_cxx98(i32 %628)
  br label %630

630:                                              ; preds = %625, %622
  br label %669

631:                                              ; preds = %3, %3, %3
  %632 = load i32, i32* %10, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %639, label %634

634:                                              ; preds = %631
  %635 = load i32, i32* %8, align 4
  %636 = icmp eq i32 %635, 135
  %637 = zext i1 %636 to i32
  %638 = call i32 @set_std_c89(i32 %637, i32 1)
  br label %639

639:                                              ; preds = %634, %631
  br label %669

640:                                              ; preds = %3
  %641 = load i32, i32* %10, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %640
  %644 = call i32 @set_std_c89(i32 0, i32 0)
  br label %645

645:                                              ; preds = %643, %640
  br label %669

646:                                              ; preds = %3, %3, %3, %3
  %647 = load i32, i32* %10, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %651, label %649

649:                                              ; preds = %646
  %650 = call i32 @set_std_c99(i32 1)
  br label %651

651:                                              ; preds = %649, %646
  br label %669

652:                                              ; preds = %3, %3
  %653 = load i32, i32* %10, align 4
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %657, label %655

655:                                              ; preds = %652
  %656 = call i32 @set_std_c99(i32 0)
  br label %657

657:                                              ; preds = %655, %652
  br label %669

658:                                              ; preds = %3
  %659 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %660 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %659, i32 0, i32 30
  store i32 1, i32* %660, align 8
  br label %669

661:                                              ; preds = %3
  %662 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 31
  store i32 1, i32* %663, align 4
  br label %669

664:                                              ; preds = %3
  store i32 1, i32* @flag_undef, align 4
  br label %669

665:                                              ; preds = %3
  %666 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cpp_opts, align 8
  %667 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %666, i32 0, i32 1
  store i32 1, i32* %667, align 4
  br label %669

668:                                              ; preds = %3
  store i32 1, i32* @verbose, align 4
  br label %669

669:                                              ; preds = %668, %665, %664, %661, %658, %657, %651, %645, %639, %630, %619, %616, %615, %614, %598, %590, %589, %586, %585, %579, %575, %571, %566, %564, %559, %557, %555, %551, %546, %543, %541, %539, %538, %536, %534, %532, %530, %528, %526, %524, %520, %516, %512, %511, %499, %495, %493, %492, %485, %481, %479, %477, %473, %471, %467, %462, %460, %458, %456, %454, %452, %450, %448, %445, %440, %435, %433, %429, %427, %425, %423, %421, %419, %417, %412, %407, %405, %403, %401, %399, %397, %396, %375, %372, %371, %359, %354, %352, %347, %344, %338, %337, %329, %322, %320, %318, %315, %311, %307, %303, %299, %297, %295, %294, %243, %239, %235, %234, %225, %224, %221, %217, %214, %213, %206, %202, %198, %194, %193, %130, %128, %127, %123, %119, %115, %113, %107, %93, %85, %64, %61, %60, %56, %51, %48, %44, %42, %41, %40
  %670 = load i32, i32* %9, align 4
  ret i32 %670
}

declare dso_local %struct.TYPE_10__* @cpp_get_options(i32) #1

declare dso_local i32 @defer_opt(i32, i8*) #1

declare dso_local i32 @TARGET_OPTF(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_path(i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @split_quote_chain(...) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i32 @set_Wunused(i32) #1

declare dso_local i32 @set_Wformat(i32) #1

declare dso_local i32 @set_Wimplicit(i32) #1

declare dso_local i32 @c_dialect_cxx(...) #1

declare dso_local i32 @set_warn_strict_aliasing(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @set_std_c89(i32, i32) #1

declare dso_local i32 @set_std_cxx98(i32) #1

declare dso_local i32 @handle_OPT_d(i8*) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i32 @disable_builtin_function(i8*) #1

declare dso_local i32 @set_struct_debug_option(i8*) #1

declare dso_local i32 @add_prefixed_path(i8*, i32) #1

declare dso_local i32 @cpp_set_lang(i32, i64) #1

declare dso_local i32 @c_common_print_pch_checksum(i32) #1

declare dso_local i32 @set_std_c99(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
