; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_target = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"pib:m:M:VvCdDlfaHhrRtTxsSI:j:wE:zgeGW\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@machine = common dso_local global i8* null, align 8
@disassembler_options = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@only_used = common dso_local global i32 0, align 4
@only_size = common dso_local global i32 0, align 4
@only = common dso_local global i8** null, align 8
@TRUE = common dso_local global i8* null, align 8
@with_line_numbers = common dso_local global i8* null, align 8
@do_demangle = common dso_local global i8* null, align 8
@unknown_demangling = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unknown demangling style `%s'\00", align 1
@wide_output = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"--adjust-vma\00", align 1
@adjust_section_vma = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"--start-address\00", align 1
@start_address = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"--stop-address\00", align 1
@stop_address = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@BFD_ENDIAN_BIG = common dso_local global i32 0, align 4
@endian = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"unrecognized -E option\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"unrecognized --endian type `%s'\00", align 1
@dump_file_header = common dso_local global i8* null, align 8
@formats_info = common dso_local global i8* null, align 8
@dump_private_headers = common dso_local global i8* null, align 8
@dump_symtab = common dso_local global i8* null, align 8
@dump_reloc_info = common dso_local global i8* null, align 8
@dump_ar_hdrs = common dso_local global i8* null, align 8
@dump_section_headers = common dso_local global i8* null, align 8
@dump_dynamic_symtab = common dso_local global i8* null, align 8
@disassemble = common dso_local global i8* null, align 8
@disassemble_zeroes = common dso_local global i8* null, align 8
@disassemble_all = common dso_local global i8* null, align 8
@with_source_code = common dso_local global i8* null, align 8
@dump_debugging = common dso_local global i32 0, align 4
@dump_debugging_tags = common dso_local global i32 0, align 4
@dump_dwarf_section_info = common dso_local global i8* null, align 8
@do_debug_info = common dso_local global i32 0, align 4
@do_debug_abbrevs = common dso_local global i32 0, align 4
@do_debug_lines = common dso_local global i32 0, align 4
@do_debug_pubnames = common dso_local global i32 0, align 4
@do_debug_aranges = common dso_local global i32 0, align 4
@do_debug_ranges = common dso_local global i32 0, align 4
@do_debug_frames = common dso_local global i32 0, align 4
@do_debug_macinfo = common dso_local global i32 0, align 4
@do_debug_str = common dso_local global i32 0, align 4
@do_debug_loc = common dso_local global i32 0, align 4
@dump_stab_section_info = common dso_local global i8* null, align 8
@dump_section_contents = common dso_local global i8* null, align 8
@dump_dynamic_reloc_info = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@show_version = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"objdump\00", align 1
@exit_status = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** @default_target, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** @FALSE, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = load i32, i32* @LOCALEDIR, align 4
  %14 = call i32 @bindtextdomain(i32 %12, i32 %13)
  %15 = load i32, i32* @PACKAGE, align 4
  %16 = call i32 @textdomain(i32 %15)
  %17 = load i8**, i8*** %5, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @program_name, align 8
  %19 = load i8*, i8** @program_name, align 8
  %20 = call i32 @xmalloc_set_program_name(i8* %19)
  %21 = load i8*, i8** @program_name, align 8
  %22 = call i32 @START_PROGRESS(i8* %21, i32 0)
  %23 = call i32 @expandargv(i32* %4, i8*** %5)
  %24 = call i32 (...) @bfd_init()
  %25 = call i32 (...) @set_default_bfd_target()
  br label %26

26:                                               ; preds = %219, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* @long_options, align 4
  %30 = call i32 @getopt_long(i32 %27, i8** %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %220

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %216 [
    i32 0, label %35
    i32 109, label %36
    i32 77, label %38
    i32 106, label %48
    i32 108, label %68
    i32 98, label %70
    i32 67, label %72
    i32 119, label %90
    i32 131, label %92
    i32 129, label %95
    i32 128, label %98
    i32 69, label %101
    i32 130, label %120
    i32 102, label %144
    i32 105, label %147
    i32 73, label %150
    i32 112, label %153
    i32 120, label %156
    i32 116, label %164
    i32 84, label %167
    i32 100, label %170
    i32 122, label %173
    i32 68, label %175
    i32 83, label %179
    i32 103, label %183
    i32 101, label %185
    i32 87, label %188
    i32 71, label %191
    i32 115, label %194
    i32 114, label %197
    i32 82, label %200
    i32 97, label %203
    i32 104, label %206
    i32 72, label %209
    i32 118, label %213
    i32 86, label %213
  ]

35:                                               ; preds = %33
  br label %219

36:                                               ; preds = %33
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @machine, align 8
  br label %219

38:                                               ; preds = %33
  %39 = load i8*, i8** @disassembler_options, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i8*, i8** @disassembler_options, align 8
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @concat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32* null)
  store i8* %44, i8** @disassembler_options, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** @disassembler_options, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %219

48:                                               ; preds = %33
  %49 = load i32, i32* @only_used, align 4
  %50 = load i32, i32* @only_size, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @only_size, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* @only_size, align 4
  %55 = load i8**, i8*** @only, align 8
  %56 = load i32, i32* @only_size, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i8** @xrealloc(i8** %55, i32 %59)
  store i8** %60, i8*** @only, align 8
  br label %61

61:                                               ; preds = %52, %48
  %62 = load i8*, i8** @optarg, align 8
  %63 = load i8**, i8*** @only, align 8
  %64 = load i32, i32* @only_used, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @only_used, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8* %62, i8** %67, align 8
  br label %219

68:                                               ; preds = %33
  %69 = load i8*, i8** @TRUE, align 8
  store i8* %69, i8** @with_line_numbers, align 8
  br label %219

70:                                               ; preds = %33
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** %7, align 8
  br label %219

72:                                               ; preds = %33
  %73 = load i8*, i8** @TRUE, align 8
  store i8* %73, i8** @do_demangle, align 8
  %74 = load i8*, i8** @optarg, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i32 @cplus_demangle_name_to_style(i8* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @unknown_demangling, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i32 @fatal(i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @cplus_demangle_set_style(i32 %87)
  br label %89

89:                                               ; preds = %86, %72
  br label %219

90:                                               ; preds = %33
  %91 = load i8*, i8** @TRUE, align 8
  store i8* %91, i8** @wide_output, align 8
  br label %219

92:                                               ; preds = %33
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i8* @parse_vma(i8* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %94, i8** @adjust_section_vma, align 8
  br label %219

95:                                               ; preds = %33
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i8* @parse_vma(i8* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %97, i8** @start_address, align 8
  br label %219

98:                                               ; preds = %33
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i8* @parse_vma(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i8* %100, i8** @stop_address, align 8
  br label %219

101:                                              ; preds = %33
  %102 = load i8*, i8** @optarg, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  store i32 %106, i32* @endian, align 4
  br label %119

107:                                              ; preds = %101
  %108 = load i8*, i8** @optarg, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  store i32 %112, i32* @endian, align 4
  br label %118

113:                                              ; preds = %107
  %114 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %115 = call i32 (i32, ...) @non_fatal(i32 %114)
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 @usage(i32 %116, i32 1)
  br label %118

118:                                              ; preds = %113, %111
  br label %119

119:                                              ; preds = %118, %105
  br label %219

120:                                              ; preds = %33
  %121 = load i8*, i8** @optarg, align 8
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @BFD_ENDIAN_BIG, align 4
  store i32 %127, i32* @endian, align 4
  br label %143

128:                                              ; preds = %120
  %129 = load i8*, i8** @optarg, align 8
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i32 @strlen(i8* %130)
  %132 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  store i32 %135, i32* @endian, align 4
  br label %142

136:                                              ; preds = %128
  %137 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %138 = load i8*, i8** @optarg, align 8
  %139 = call i32 (i32, ...) @non_fatal(i32 %137, i8* %138)
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 @usage(i32 %140, i32 1)
  br label %142

142:                                              ; preds = %136, %134
  br label %143

143:                                              ; preds = %142, %126
  br label %219

144:                                              ; preds = %33
  %145 = load i8*, i8** @TRUE, align 8
  store i8* %145, i8** @dump_file_header, align 8
  %146 = load i8*, i8** @TRUE, align 8
  store i8* %146, i8** %8, align 8
  br label %219

147:                                              ; preds = %33
  %148 = load i8*, i8** @TRUE, align 8
  store i8* %148, i8** @formats_info, align 8
  %149 = load i8*, i8** @TRUE, align 8
  store i8* %149, i8** %8, align 8
  br label %219

150:                                              ; preds = %33
  %151 = load i8*, i8** @optarg, align 8
  %152 = call i32 @add_include_path(i8* %151)
  br label %219

153:                                              ; preds = %33
  %154 = load i8*, i8** @TRUE, align 8
  store i8* %154, i8** @dump_private_headers, align 8
  %155 = load i8*, i8** @TRUE, align 8
  store i8* %155, i8** %8, align 8
  br label %219

156:                                              ; preds = %33
  %157 = load i8*, i8** @TRUE, align 8
  store i8* %157, i8** @dump_private_headers, align 8
  %158 = load i8*, i8** @TRUE, align 8
  store i8* %158, i8** @dump_symtab, align 8
  %159 = load i8*, i8** @TRUE, align 8
  store i8* %159, i8** @dump_reloc_info, align 8
  %160 = load i8*, i8** @TRUE, align 8
  store i8* %160, i8** @dump_file_header, align 8
  %161 = load i8*, i8** @TRUE, align 8
  store i8* %161, i8** @dump_ar_hdrs, align 8
  %162 = load i8*, i8** @TRUE, align 8
  store i8* %162, i8** @dump_section_headers, align 8
  %163 = load i8*, i8** @TRUE, align 8
  store i8* %163, i8** %8, align 8
  br label %219

164:                                              ; preds = %33
  %165 = load i8*, i8** @TRUE, align 8
  store i8* %165, i8** @dump_symtab, align 8
  %166 = load i8*, i8** @TRUE, align 8
  store i8* %166, i8** %8, align 8
  br label %219

167:                                              ; preds = %33
  %168 = load i8*, i8** @TRUE, align 8
  store i8* %168, i8** @dump_dynamic_symtab, align 8
  %169 = load i8*, i8** @TRUE, align 8
  store i8* %169, i8** %8, align 8
  br label %219

170:                                              ; preds = %33
  %171 = load i8*, i8** @TRUE, align 8
  store i8* %171, i8** @disassemble, align 8
  %172 = load i8*, i8** @TRUE, align 8
  store i8* %172, i8** %8, align 8
  br label %219

173:                                              ; preds = %33
  %174 = load i8*, i8** @TRUE, align 8
  store i8* %174, i8** @disassemble_zeroes, align 8
  br label %219

175:                                              ; preds = %33
  %176 = load i8*, i8** @TRUE, align 8
  store i8* %176, i8** @disassemble, align 8
  %177 = load i8*, i8** @TRUE, align 8
  store i8* %177, i8** @disassemble_all, align 8
  %178 = load i8*, i8** @TRUE, align 8
  store i8* %178, i8** %8, align 8
  br label %219

179:                                              ; preds = %33
  %180 = load i8*, i8** @TRUE, align 8
  store i8* %180, i8** @disassemble, align 8
  %181 = load i8*, i8** @TRUE, align 8
  store i8* %181, i8** @with_source_code, align 8
  %182 = load i8*, i8** @TRUE, align 8
  store i8* %182, i8** %8, align 8
  br label %219

183:                                              ; preds = %33
  store i32 1, i32* @dump_debugging, align 4
  %184 = load i8*, i8** @TRUE, align 8
  store i8* %184, i8** %8, align 8
  br label %219

185:                                              ; preds = %33
  store i32 1, i32* @dump_debugging, align 4
  store i32 1, i32* @dump_debugging_tags, align 4
  %186 = load i8*, i8** @TRUE, align 8
  store i8* %186, i8** @do_demangle, align 8
  %187 = load i8*, i8** @TRUE, align 8
  store i8* %187, i8** %8, align 8
  br label %219

188:                                              ; preds = %33
  %189 = load i8*, i8** @TRUE, align 8
  store i8* %189, i8** @dump_dwarf_section_info, align 8
  %190 = load i8*, i8** @TRUE, align 8
  store i8* %190, i8** %8, align 8
  store i32 1, i32* @do_debug_info, align 4
  store i32 1, i32* @do_debug_abbrevs, align 4
  store i32 1, i32* @do_debug_lines, align 4
  store i32 1, i32* @do_debug_pubnames, align 4
  store i32 1, i32* @do_debug_aranges, align 4
  store i32 1, i32* @do_debug_ranges, align 4
  store i32 1, i32* @do_debug_frames, align 4
  store i32 1, i32* @do_debug_macinfo, align 4
  store i32 1, i32* @do_debug_str, align 4
  store i32 1, i32* @do_debug_loc, align 4
  br label %219

191:                                              ; preds = %33
  %192 = load i8*, i8** @TRUE, align 8
  store i8* %192, i8** @dump_stab_section_info, align 8
  %193 = load i8*, i8** @TRUE, align 8
  store i8* %193, i8** %8, align 8
  br label %219

194:                                              ; preds = %33
  %195 = load i8*, i8** @TRUE, align 8
  store i8* %195, i8** @dump_section_contents, align 8
  %196 = load i8*, i8** @TRUE, align 8
  store i8* %196, i8** %8, align 8
  br label %219

197:                                              ; preds = %33
  %198 = load i8*, i8** @TRUE, align 8
  store i8* %198, i8** @dump_reloc_info, align 8
  %199 = load i8*, i8** @TRUE, align 8
  store i8* %199, i8** %8, align 8
  br label %219

200:                                              ; preds = %33
  %201 = load i8*, i8** @TRUE, align 8
  store i8* %201, i8** @dump_dynamic_reloc_info, align 8
  %202 = load i8*, i8** @TRUE, align 8
  store i8* %202, i8** %8, align 8
  br label %219

203:                                              ; preds = %33
  %204 = load i8*, i8** @TRUE, align 8
  store i8* %204, i8** @dump_ar_hdrs, align 8
  %205 = load i8*, i8** @TRUE, align 8
  store i8* %205, i8** %8, align 8
  br label %219

206:                                              ; preds = %33
  %207 = load i8*, i8** @TRUE, align 8
  store i8* %207, i8** @dump_section_headers, align 8
  %208 = load i8*, i8** @TRUE, align 8
  store i8* %208, i8** %8, align 8
  br label %219

209:                                              ; preds = %33
  %210 = load i32, i32* @stdout, align 4
  %211 = call i32 @usage(i32 %210, i32 0)
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** %8, align 8
  br label %213

213:                                              ; preds = %33, %33, %209
  %214 = load i8*, i8** @TRUE, align 8
  store i8* %214, i8** @show_version, align 8
  %215 = load i8*, i8** @TRUE, align 8
  store i8* %215, i8** %8, align 8
  br label %219

216:                                              ; preds = %33
  %217 = load i32, i32* @stderr, align 4
  %218 = call i32 @usage(i32 %217, i32 1)
  br label %219

219:                                              ; preds = %216, %213, %206, %203, %200, %197, %194, %191, %188, %185, %183, %179, %175, %173, %170, %167, %164, %156, %153, %150, %147, %144, %143, %119, %98, %95, %92, %90, %89, %70, %68, %61, %47, %36, %35
  br label %26

220:                                              ; preds = %26
  %221 = load i8*, i8** @show_version, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 @print_version(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %220
  %226 = load i8*, i8** %8, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* @stderr, align 4
  %230 = call i32 @usage(i32 %229, i32 2)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i8*, i8** @formats_info, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (...) @display_info()
  store i32 %235, i32* @exit_status, align 4
  br label %259

236:                                              ; preds = %231
  %237 = load i32, i32* @optind, align 4
  %238 = load i32, i32* %4, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 @display_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %241)
  br label %258

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %248, %243
  %245 = load i32, i32* @optind, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* @optind, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @optind, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8*, i8** %249, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = call i32 @display_file(i8* %254, i8* %255)
  br label %244

257:                                              ; preds = %244
  br label %258

258:                                              ; preds = %257, %240
  br label %259

259:                                              ; preds = %258, %234
  %260 = load i8*, i8** @program_name, align 8
  %261 = call i32 @END_PROGRESS(i8* %260)
  %262 = load i32, i32* @exit_status, align 4
  ret i32 %262
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @START_PROGRESS(i8*, i32) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @concat(i8*, i8*, i8*, i32*) #1

declare dso_local i8** @xrealloc(i8**, i32) #1

declare dso_local i32 @cplus_demangle_name_to_style(i8*) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @cplus_demangle_set_style(i32) #1

declare dso_local i8* @parse_vma(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @non_fatal(i32, ...) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_include_path(i8*) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @display_info(...) #1

declare dso_local i32 @display_file(i8*, i8*) #1

declare dso_local i32 @END_PROGRESS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
