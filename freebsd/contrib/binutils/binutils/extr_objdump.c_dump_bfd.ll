; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_dump_bfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_dump_bfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8* }

@adjust_section_vma = common dso_local global i64 0, align 8
@HAS_RELOC = common dso_local global i32 0, align 4
@adjust_addresses = common dso_local global i32 0, align 4
@dump_debugging_tags = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"\0A%s:     file format %s\0A\00", align 1
@dump_ar_hdrs = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@dump_file_header = common dso_local global i64 0, align 8
@dump_private_headers = common dso_local global i64 0, align 8
@dump_section_headers = common dso_local global i64 0, align 8
@dump_symtab = common dso_local global i64 0, align 8
@dump_reloc_info = common dso_local global i64 0, align 8
@disassemble = common dso_local global i64 0, align 8
@dump_debugging = common dso_local global i64 0, align 8
@dump_dwarf_section_info = common dso_local global i64 0, align 8
@syms = common dso_local global i32* null, align 8
@dump_dynamic_symtab = common dso_local global i64 0, align 8
@dump_dynamic_reloc_info = common dso_local global i64 0, align 8
@dynsyms = common dso_local global i32* null, align 8
@symcount = common dso_local global i64 0, align 8
@dynsymcount = common dso_local global i64 0, align 8
@synthsyms = common dso_local global i32* null, align 8
@synthcount = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@dump_stab_section_info = common dso_local global i64 0, align 8
@dump_section_contents = common dso_local global i64 0, align 8
@bfd_demangle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: printing debugging information failed\00", align 1
@exit_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @dump_bfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_bfd(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %5 = load i64, i64* @adjust_section_vma, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HAS_RELOC, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %14 = load i32, i32* @adjust_addresses, align 4
  %15 = call i32 @bfd_map_over_sections(%struct.TYPE_24__* %13, i32 %14, i32* %3)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load i64, i64* @dump_debugging_tags, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %22 = call i8* @bfd_get_filename(%struct.TYPE_24__* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* %20, i8* %22, i8* %27)
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i64, i64* @dump_ar_hdrs, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @stdout, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @print_arelt_descr(i32 %33, %struct.TYPE_24__* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i64, i64* @dump_file_header, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %42 = call i32 @dump_bfd_header(%struct.TYPE_24__* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* @dump_private_headers, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %48 = call i32 @dump_bfd_private_header(%struct.TYPE_24__* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* @dump_debugging_tags, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @putchar(i8 signext 10)
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i64, i64* @dump_section_headers, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %59 = call i32 @dump_headers(%struct.TYPE_24__* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @dump_symtab, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @dump_reloc_info, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @disassemble, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @dump_debugging, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* @dump_dwarf_section_info, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %69, %66, %63, %60
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %77 = call i32* @slurp_symtab(%struct.TYPE_24__* %76)
  store i32* %77, i32** @syms, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* @dump_dynamic_symtab, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @dump_dynamic_reloc_info, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* @disassemble, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %89 = call i64 @bfd_get_dynamic_symtab_upper_bound(%struct.TYPE_24__* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %81, %78
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %93 = call i32* @slurp_dynamic_symtab(%struct.TYPE_24__* %92)
  store i32* %93, i32** @dynsyms, align 8
  br label %94

94:                                               ; preds = %91, %87, %84
  %95 = load i64, i64* @disassemble, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %99 = load i64, i64* @symcount, align 8
  %100 = load i32*, i32** @syms, align 8
  %101 = load i64, i64* @dynsymcount, align 8
  %102 = load i32*, i32** @dynsyms, align 8
  %103 = call i64 @bfd_get_synthetic_symtab(%struct.TYPE_24__* %98, i64 %99, i32* %100, i64 %101, i32* %102, i32** @synthsyms)
  store i64 %103, i64* @synthcount, align 8
  %104 = load i64, i64* @synthcount, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  store i64 0, i64* @synthcount, align 8
  br label %107

107:                                              ; preds = %106, %97
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i64, i64* @dump_symtab, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @dump_symbols(%struct.TYPE_24__* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i64, i64* @dump_dynamic_symtab, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call i32 @dump_symbols(%struct.TYPE_24__* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i64, i64* @dump_dwarf_section_info, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %127 = call i32 @dump_dwarf(%struct.TYPE_24__* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* @dump_stab_section_info, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %133 = call i32 @dump_stabs(%struct.TYPE_24__* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i64, i64* @dump_reloc_info, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i64, i64* @disassemble, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %142 = call i32 @dump_relocs(%struct.TYPE_24__* %141)
  br label %143

143:                                              ; preds = %140, %137, %134
  %144 = load i64, i64* @dump_dynamic_reloc_info, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i64, i64* @disassemble, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %151 = call i32 @dump_dynamic_relocs(%struct.TYPE_24__* %150)
  br label %152

152:                                              ; preds = %149, %146, %143
  %153 = load i64, i64* @dump_section_contents, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %157 = call i32 @dump_data(%struct.TYPE_24__* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* @disassemble, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %163 = call i32 @disassemble_data(%struct.TYPE_24__* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i64, i64* @dump_debugging, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %164
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %169 = load i32*, i32** @syms, align 8
  %170 = load i64, i64* @symcount, align 8
  %171 = call i8* @read_debugging_info(%struct.TYPE_24__* %168, i32* %169, i64 %170)
  store i8* %171, i8** %4, align 8
  %172 = load i8*, i8** %4, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %196

174:                                              ; preds = %167
  %175 = load i32, i32* @stdout, align 4
  %176 = load i8*, i8** %4, align 8
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %178 = load i32*, i32** @syms, align 8
  %179 = load i32, i32* @bfd_demangle, align 4
  %180 = load i64, i64* @dump_debugging_tags, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* @TRUE, align 4
  br label %186

184:                                              ; preds = %174
  %185 = load i32, i32* @FALSE, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = call i32 @print_debugging_info(i32 %175, i8* %176, %struct.TYPE_24__* %177, i32* %178, i32 %179, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %193 = call i8* @bfd_get_filename(%struct.TYPE_24__* %192)
  %194 = call i32 @non_fatal(i8* %191, i8* %193)
  store i32 1, i32* @exit_status, align 4
  br label %195

195:                                              ; preds = %190, %186
  br label %196

196:                                              ; preds = %195, %167
  br label %197

197:                                              ; preds = %196, %164
  %198 = load i32*, i32** @syms, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32*, i32** @syms, align 8
  %202 = call i32 @free(i32* %201)
  store i32* null, i32** @syms, align 8
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32*, i32** @dynsyms, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32*, i32** @dynsyms, align 8
  %208 = call i32 @free(i32* %207)
  store i32* null, i32** @dynsyms, align 8
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32*, i32** @synthsyms, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32*, i32** @synthsyms, align 8
  %214 = call i32 @free(i32* %213)
  store i32* null, i32** @synthsyms, align 8
  br label %215

215:                                              ; preds = %212, %209
  store i64 0, i64* @symcount, align 8
  store i64 0, i64* @dynsymcount, align 8
  store i64 0, i64* @synthcount, align 8
  ret void
}

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_get_filename(%struct.TYPE_24__*) #1

declare dso_local i32 @print_arelt_descr(i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @dump_bfd_header(%struct.TYPE_24__*) #1

declare dso_local i32 @dump_bfd_private_header(%struct.TYPE_24__*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @dump_headers(%struct.TYPE_24__*) #1

declare dso_local i32* @slurp_symtab(%struct.TYPE_24__*) #1

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(%struct.TYPE_24__*) #1

declare dso_local i32* @slurp_dynamic_symtab(%struct.TYPE_24__*) #1

declare dso_local i64 @bfd_get_synthetic_symtab(%struct.TYPE_24__*, i64, i32*, i64, i32*, i32**) #1

declare dso_local i32 @dump_symbols(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @dump_dwarf(%struct.TYPE_24__*) #1

declare dso_local i32 @dump_stabs(%struct.TYPE_24__*) #1

declare dso_local i32 @dump_relocs(%struct.TYPE_24__*) #1

declare dso_local i32 @dump_dynamic_relocs(%struct.TYPE_24__*) #1

declare dso_local i32 @dump_data(%struct.TYPE_24__*) #1

declare dso_local i32 @disassemble_data(%struct.TYPE_24__*) #1

declare dso_local i8* @read_debugging_info(%struct.TYPE_24__*, i32*, i64) #1

declare dso_local i32 @print_debugging_info(i32, i8*, %struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @non_fatal(i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
