; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_list = type { %struct.group_list*, %struct.group_list* }

@.str = private unnamed_addr constant [32 x i8] c"%s: Failed to read file header\0A\00", align 1
@version_info = common dso_local global i64* null, align 8
@dynamic_info = common dso_local global i64* null, align 8
@show_name = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"\0AFile: %s\0A\00", align 1
@num_dump_sects = common dso_local global i64 0, align 8
@num_cmdline_dump_sects = common dso_local global i64 0, align 8
@dump_sects = common dso_local global i32 0, align 4
@cmdline_dump_sects = common dso_local global i32 0, align 4
@do_arch = common dso_local global i64 0, align 8
@do_dump = common dso_local global i64 0, align 8
@do_version = common dso_local global i64 0, align 8
@do_unwind = common dso_local global i64 0, align 8
@do_using_dynamic = common dso_local global i32 0, align 4
@do_reloc = common dso_local global i64 0, align 8
@do_syms = common dso_local global i64 0, align 8
@program_headers = common dso_local global %struct.group_list* null, align 8
@section_headers = common dso_local global %struct.group_list* null, align 8
@string_table = common dso_local global %struct.group_list* null, align 8
@string_table_length = common dso_local global i64 0, align 8
@dynamic_strings = common dso_local global %struct.group_list* null, align 8
@dynamic_strings_length = common dso_local global i64 0, align 8
@dynamic_symbols = common dso_local global %struct.group_list* null, align 8
@num_dynamic_syms = common dso_local global i64 0, align 8
@dynamic_syminfo = common dso_local global %struct.group_list* null, align 8
@section_headers_groups = common dso_local global %struct.group_list* null, align 8
@section_groups = common dso_local global %struct.group_list* null, align 8
@group_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @process_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_object(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.group_list*, align 8
  %8 = alloca %struct.group_list*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_file_header(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @error(i8* %13, i8* %14)
  store i32 1, i32* %3, align 4
  br label %194

16:                                               ; preds = %2
  %17 = load i64*, i64** @version_info, align 8
  %18 = call i32 @NUM_ELEM(i64* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %23, %16
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64*, i64** @version_info, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 0, i64* %27, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load i64*, i64** @dynamic_info, align 8
  %30 = call i32 @NUM_ELEM(i64* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %35, %28
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64*, i64** @dynamic_info, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %31

40:                                               ; preds = %31
  %41 = load i64, i64* @show_name, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @printf(i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* @num_dump_sects, align 8
  %49 = load i64, i64* @num_cmdline_dump_sects, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @dump_sects, align 4
  %53 = load i64, i64* @num_dump_sects, align 8
  %54 = call i32 @memset(i32 %52, i32 0, i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* @num_cmdline_dump_sects, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i64, i64* @num_dump_sects, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* @num_cmdline_dump_sects, align 8
  %63 = call i32 @request_dump(i64 %62, i32 0)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* @num_dump_sects, align 8
  %66 = load i64, i64* @num_cmdline_dump_sects, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* @dump_sects, align 4
  %71 = load i32, i32* @cmdline_dump_sects, align 4
  %72 = load i64, i64* @num_cmdline_dump_sects, align 8
  %73 = call i32 @memcpy(i32 %70, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %64, %55
  %75 = call i32 (...) @process_file_header()
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %194

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @process_section_headers(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  store i64 0, i64* @do_arch, align 8
  store i64 0, i64* @do_dump, align 8
  store i64 0, i64* @do_version, align 8
  store i64 0, i64* @do_unwind, align 8
  %83 = load i32, i32* @do_using_dynamic, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i64 0, i64* @do_reloc, align 8
  store i64 0, i64* @do_syms, align 8
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @process_section_groups(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i64 0, i64* @do_unwind, align 8
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32*, i32** %5, align 8
  %94 = call i64 @process_program_headers(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @process_dynamic_section(i32* %97)
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @process_relocs(i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @process_unwind(i32* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @process_symbol_table(i32* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @process_syminfo(i32* %106)
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @process_version_sections(i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @process_section_contents(i32* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @process_notes(i32* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @process_gnu_liblist(i32* %114)
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @process_arch_specific(i32* %116)
  %118 = load %struct.group_list*, %struct.group_list** @program_headers, align 8
  %119 = icmp ne %struct.group_list* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %99
  %121 = load %struct.group_list*, %struct.group_list** @program_headers, align 8
  %122 = call i32 @free(%struct.group_list* %121)
  store %struct.group_list* null, %struct.group_list** @program_headers, align 8
  br label %123

123:                                              ; preds = %120, %99
  %124 = load %struct.group_list*, %struct.group_list** @section_headers, align 8
  %125 = icmp ne %struct.group_list* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.group_list*, %struct.group_list** @section_headers, align 8
  %128 = call i32 @free(%struct.group_list* %127)
  store %struct.group_list* null, %struct.group_list** @section_headers, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.group_list*, %struct.group_list** @string_table, align 8
  %131 = icmp ne %struct.group_list* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.group_list*, %struct.group_list** @string_table, align 8
  %134 = call i32 @free(%struct.group_list* %133)
  store %struct.group_list* null, %struct.group_list** @string_table, align 8
  store i64 0, i64* @string_table_length, align 8
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.group_list*, %struct.group_list** @dynamic_strings, align 8
  %137 = icmp ne %struct.group_list* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.group_list*, %struct.group_list** @dynamic_strings, align 8
  %140 = call i32 @free(%struct.group_list* %139)
  store %struct.group_list* null, %struct.group_list** @dynamic_strings, align 8
  store i64 0, i64* @dynamic_strings_length, align 8
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.group_list*, %struct.group_list** @dynamic_symbols, align 8
  %143 = icmp ne %struct.group_list* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.group_list*, %struct.group_list** @dynamic_symbols, align 8
  %146 = call i32 @free(%struct.group_list* %145)
  store %struct.group_list* null, %struct.group_list** @dynamic_symbols, align 8
  store i64 0, i64* @num_dynamic_syms, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.group_list*, %struct.group_list** @dynamic_syminfo, align 8
  %149 = icmp ne %struct.group_list* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.group_list*, %struct.group_list** @dynamic_syminfo, align 8
  %152 = call i32 @free(%struct.group_list* %151)
  store %struct.group_list* null, %struct.group_list** @dynamic_syminfo, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.group_list*, %struct.group_list** @section_headers_groups, align 8
  %155 = icmp ne %struct.group_list* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.group_list*, %struct.group_list** @section_headers_groups, align 8
  %158 = call i32 @free(%struct.group_list* %157)
  store %struct.group_list* null, %struct.group_list** @section_headers_groups, align 8
  br label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.group_list*, %struct.group_list** @section_groups, align 8
  %161 = icmp ne %struct.group_list* %160, null
  br i1 %161, label %162, label %192

162:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %186, %162
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @group_count, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %163
  %168 = load %struct.group_list*, %struct.group_list** @section_groups, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.group_list, %struct.group_list* %168, i64 %170
  %172 = getelementptr inbounds %struct.group_list, %struct.group_list* %171, i32 0, i32 1
  %173 = load %struct.group_list*, %struct.group_list** %172, align 8
  store %struct.group_list* %173, %struct.group_list** %7, align 8
  br label %174

174:                                              ; preds = %183, %167
  %175 = load %struct.group_list*, %struct.group_list** %7, align 8
  %176 = icmp ne %struct.group_list* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.group_list*, %struct.group_list** %7, align 8
  %179 = getelementptr inbounds %struct.group_list, %struct.group_list* %178, i32 0, i32 0
  %180 = load %struct.group_list*, %struct.group_list** %179, align 8
  store %struct.group_list* %180, %struct.group_list** %8, align 8
  %181 = load %struct.group_list*, %struct.group_list** %7, align 8
  %182 = call i32 @free(%struct.group_list* %181)
  br label %183

183:                                              ; preds = %177
  %184 = load %struct.group_list*, %struct.group_list** %8, align 8
  store %struct.group_list* %184, %struct.group_list** %7, align 8
  br label %174

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %163

189:                                              ; preds = %163
  %190 = load %struct.group_list*, %struct.group_list** @section_groups, align 8
  %191 = call i32 @free(%struct.group_list* %190)
  store %struct.group_list* null, %struct.group_list** @section_groups, align 8
  br label %192

192:                                              ; preds = %189, %159
  %193 = call i32 (...) @free_debug_memory()
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %77, %12
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @get_file_header(i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @NUM_ELEM(i64*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @request_dump(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @process_file_header(...) #1

declare dso_local i32 @process_section_headers(i32*) #1

declare dso_local i32 @process_section_groups(i32*) #1

declare dso_local i64 @process_program_headers(i32*) #1

declare dso_local i32 @process_dynamic_section(i32*) #1

declare dso_local i32 @process_relocs(i32*) #1

declare dso_local i32 @process_unwind(i32*) #1

declare dso_local i32 @process_symbol_table(i32*) #1

declare dso_local i32 @process_syminfo(i32*) #1

declare dso_local i32 @process_version_sections(i32*) #1

declare dso_local i32 @process_section_contents(i32*) #1

declare dso_local i32 @process_notes(i32*) #1

declare dso_local i32 @process_gnu_liblist(i32*) #1

declare dso_local i32 @process_arch_specific(i32*) #1

declare dso_local i32 @free(%struct.group_list*) #1

declare dso_local i32 @free_debug_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
