; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_mri = common dso_local global i64 0, align 8
@now_seg = common dso_local global i32 0, align 4
@previous_section = common dso_local global i32 0, align 4
@now_subseg = common dso_local global i32 0, align 4
@previous_subsection = common dso_local global i32 0, align 4
@SHT_NULL = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@SHF_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid merge entity size\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"entity size for SHF_MERGE not specified\00", align 1
@SHF_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c",comdat\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c".gnu.linkonce\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"group name for SHF_GROUP not specified\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"character following name is not '#'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obj_elf_section(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %15 = load i64, i64* @flag_mri, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @now_seg, align 4
  store i32 %18, i32* @previous_section, align 4
  %19 = load i32, i32* @now_subseg, align 4
  store i32 %19, i32* @previous_subsection, align 4
  %20 = call i32 @s_mri_sect(i8* %11)
  br label %243

21:                                               ; preds = %1
  %22 = call i8* (...) @obj_elf_section_name()
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %243

26:                                               ; preds = %21
  %27 = load i32, i32* @SHT_NULL, align 4
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %28 = load i8*, i8** @input_line_pointer, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 44
  br i1 %31, label %32, label %233

32:                                               ; preds = %26
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** @input_line_pointer, align 8
  %35 = call i32 (...) @SKIP_WHITESPACE()
  %36 = load i8*, i8** @input_line_pointer, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %40, label %195

40:                                               ; preds = %32
  %41 = call i8* @demand_copy_C_string(i32* %8)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @ignore_rest_of_line()
  br label %243

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @obj_elf_parse_section_letters(i8* %47, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = call i32 (...) @SKIP_WHITESPACE()
  %54 = load i8*, i8** @input_line_pointer, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 44
  br i1 %57, label %58, label %105

58:                                               ; preds = %46
  %59 = load i8*, i8** @input_line_pointer, align 8
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** @input_line_pointer, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** @input_line_pointer, align 8
  %62 = call i32 (...) @SKIP_WHITESPACE()
  %63 = load i8*, i8** @input_line_pointer, align 8
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %12, align 1
  %65 = load i8, i8* %12, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = call i8* @demand_copy_C_string(i32* %8)
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (...) @ignore_rest_of_line()
  br label %243

74:                                               ; preds = %68
  %75 = load i8*, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @obj_elf_section_type(i8* %75, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %104

79:                                               ; preds = %58
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 64
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %101

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** @input_line_pointer, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** @input_line_pointer, align 8
  store i8* %89, i8** %5, align 8
  %90 = call signext i8 (...) @get_symbol_end()
  store i8 %90, i8* %12, align 1
  %91 = load i8, i8* %12, align 1
  %92 = load i8*, i8** @input_line_pointer, align 8
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** @input_line_pointer, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @obj_elf_section_type(i8* %93, i32 %99)
  store i32 %100, i32* %6, align 4
  br label %103

101:                                              ; preds = %83
  %102 = load i8*, i8** %13, align 8
  store i8* %102, i8** @input_line_pointer, align 8
  br label %103

103:                                              ; preds = %101, %87
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104, %46
  %106 = call i32 (...) @SKIP_WHITESPACE()
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SHF_MERGE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load i8*, i8** @input_line_pointer, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 44
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i8*, i8** @input_line_pointer, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** @input_line_pointer, align 8
  %119 = call i32 (...) @SKIP_WHITESPACE()
  %120 = call i32 (...) @get_absolute_expression()
  store i32 %120, i32* %9, align 4
  %121 = call i32 (...) @SKIP_WHITESPACE()
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %126 = call i32 @as_warn(i32 %125)
  %127 = load i32, i32* @SHF_MERGE, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %124, %116
  br label %145

132:                                              ; preds = %111, %105
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SHF_MERGE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %139 = call i32 @as_warn(i32 %138)
  %140 = load i32, i32* @SHF_MERGE, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %137, %132
  br label %145

145:                                              ; preds = %144, %131
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @SHF_GROUP, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %145
  %151 = load i8*, i8** @input_line_pointer, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 44
  br i1 %154, label %155, label %181

155:                                              ; preds = %150
  %156 = load i8*, i8** @input_line_pointer, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** @input_line_pointer, align 8
  %158 = call i8* (...) @obj_elf_section_name()
  store i8* %158, i8** %4, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32, i32* @SHF_GROUP, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %180

166:                                              ; preds = %155
  %167 = load i8*, i8** @input_line_pointer, align 8
  %168 = call i64 @strncmp(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i8*, i8** @input_line_pointer, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 7
  store i8* %172, i8** @input_line_pointer, align 8
  store i32 1, i32* %10, align 4
  br label %179

173:                                              ; preds = %166
  %174 = load i8*, i8** %3, align 8
  %175 = call i64 @strncmp(i8* %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 1, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %173
  br label %179

179:                                              ; preds = %178, %170
  br label %180

180:                                              ; preds = %179, %161
  br label %194

181:                                              ; preds = %150, %145
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @SHF_GROUP, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %188 = call i32 @as_warn(i32 %187)
  %189 = load i32, i32* @SHF_GROUP, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %186, %181
  br label %194

194:                                              ; preds = %193, %180
  br label %232

195:                                              ; preds = %32
  br label %196

196:                                              ; preds = %223, %195
  %197 = call i32 (...) @SKIP_WHITESPACE()
  %198 = load i8*, i8** @input_line_pointer, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 35
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %204 = call i32 @as_bad(i32 %203)
  %205 = call i32 (...) @ignore_rest_of_line()
  br label %243

206:                                              ; preds = %196
  %207 = load i8*, i8** @input_line_pointer, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** @input_line_pointer, align 8
  store i8* %208, i8** %5, align 8
  %209 = call signext i8 (...) @get_symbol_end()
  store i8 %209, i8* %14, align 1
  %210 = load i8, i8* %14, align 1
  %211 = load i8*, i8** @input_line_pointer, align 8
  store i8 %210, i8* %211, align 1
  %212 = load i8*, i8** %5, align 8
  %213 = load i8*, i8** @input_line_pointer, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @obj_elf_section_word(i8* %212, i32 %218)
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = call i32 (...) @SKIP_WHITESPACE()
  br label %223

223:                                              ; preds = %206
  %224 = load i8*, i8** @input_line_pointer, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** @input_line_pointer, align 8
  %226 = load i8, i8* %224, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 44
  br i1 %228, label %196, label %229

229:                                              ; preds = %223
  %230 = load i8*, i8** @input_line_pointer, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 -1
  store i8* %231, i8** @input_line_pointer, align 8
  br label %232

232:                                              ; preds = %229, %194
  br label %233

233:                                              ; preds = %232, %26
  %234 = call i32 (...) @demand_empty_rest_of_line()
  %235 = load i8*, i8** %3, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i8*, i8** %4, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %2, align 4
  %242 = call i32 @obj_elf_change_section(i8* %235, i32 %236, i32 %237, i32 %238, i8* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %233, %202, %72, %44, %25, %17
  ret void
}

declare dso_local i32 @s_mri_sect(i8*) #1

declare dso_local i8* @obj_elf_section_name(...) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i8* @demand_copy_C_string(i32*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @obj_elf_parse_section_letters(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @obj_elf_section_type(i8*, i32) #1

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @get_absolute_expression(...) #1

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @obj_elf_section_word(i8*, i32) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @obj_elf_change_section(i8*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
