; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_partial_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_partial_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_die_info = type { i32, i32, i64, i64, i32, i8*, i32, i8*, i32*, i8*, i8*, i32, i32, i32 }
%struct.dwarf2_cu = type { i32 }
%struct.abbrev_info = type { i32, i32*, i32, i32 }
%struct.attribute = type { i32, i32 }

@zeroed_partial_die = common dso_local global %struct.partial_die_info zeroinitializer, align 8
@.str = private unnamed_addr constant [60 x i8] c"Dwarf Error: Could not find abbrev number %d [in module %s]\00", align 1
@dwarf_info_buffer = common dso_local global i8* null, align 8
@DW_FORM_data4 = common dso_local global i32 0, align 4
@DW_FORM_data8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DW_AT_location\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"partial symbol information\00", align 1
@DW_FORM_ref_addr = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"ignoring absolute DW_AT_sibling\00", align 1
@HAS_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.partial_die_info*, i32*, i8*, %struct.dwarf2_cu*)* @read_partial_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_partial_die(%struct.partial_die_info* %0, i32* %1, i8* %2, %struct.dwarf2_cu* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.partial_die_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dwarf2_cu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.abbrev_info*, align 8
  %14 = alloca %struct.attribute, align 4
  %15 = alloca %struct.attribute, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.partial_die_info, align 8
  %20 = alloca i8*, align 8
  store %struct.partial_die_info* %0, %struct.partial_die_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %22 = bitcast %struct.partial_die_info* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.partial_die_info* @zeroed_partial_die to i8*), i64 96, i1 false)
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @read_unsigned_leb128(i32* %23, i8* %24, i32* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %5, align 8
  br label %240

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %37 = call %struct.abbrev_info* @dwarf2_lookup_abbrev(i32 %35, %struct.dwarf2_cu* %36)
  store %struct.abbrev_info* %37, %struct.abbrev_info** %13, align 8
  %38 = load %struct.abbrev_info*, %struct.abbrev_info** %13, align 8
  %39 = icmp ne %struct.abbrev_info* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @bfd_get_filename(i32* %42)
  %44 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** @dwarf_info_buffer, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %53 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.abbrev_info*, %struct.abbrev_info** %13, align 8
  %55 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %58 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 8
  %59 = load %struct.abbrev_info*, %struct.abbrev_info** %13, align 8
  %60 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %63 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %66 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %171, %45
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.abbrev_info*, %struct.abbrev_info** %13, align 8
  %70 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %174

73:                                               ; preds = %67
  %74 = load %struct.abbrev_info*, %struct.abbrev_info** %13, align 8
  %75 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %83 = call i8* @read_attribute(%struct.attribute* %14, i32* %79, i32* %80, i8* %81, %struct.dwarf2_cu* %82)
  store i8* %83, i8** %8, align 8
  %84 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %169 [
    i32 131, label %86
    i32 139, label %97
    i32 132, label %102
    i32 135, label %107
    i32 133, label %112
    i32 134, label %135
    i32 136, label %139
    i32 137, label %143
    i32 128, label %147
    i32 138, label %150
    i32 129, label %150
    i32 130, label %153
  ]

86:                                               ; preds = %73
  %87 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %88 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = call i8* @DW_STRING(%struct.attribute* %14)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %95 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %94, i32 0, i32 8
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %170

97:                                               ; preds = %73
  %98 = call i8* @DW_STRING(%struct.attribute* %14)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %101 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %100, i32 0, i32 8
  store i32* %99, i32** %101, align 8
  br label %170

102:                                              ; preds = %73
  store i32 1, i32* %17, align 4
  %103 = call i8* @DW_ADDR(%struct.attribute* %14)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %106 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %170

107:                                              ; preds = %73
  store i32 1, i32* %18, align 4
  %108 = call i8* @DW_ADDR(%struct.attribute* %14)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %111 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  br label %170

112:                                              ; preds = %73
  %113 = call i32 @attr_form_is_block(%struct.attribute* %14)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = call i32 @DW_BLOCK(%struct.attribute* %14)
  %117 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %118 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %117, i32 0, i32 11
  store i32 %116, i32* %118, align 8
  br label %134

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DW_FORM_data4, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DW_FORM_data8, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124, %119
  %130 = call i32 (...) @dwarf2_complex_location_expr_complaint()
  br label %133

131:                                              ; preds = %124
  %132 = call i32 @dwarf2_invalid_attrib_class_complaint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %115
  br label %170

135:                                              ; preds = %73
  %136 = call i8* @DW_UNSND(%struct.attribute* %14)
  %137 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %138 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %137, i32 0, i32 10
  store i8* %136, i8** %138, align 8
  br label %170

139:                                              ; preds = %73
  %140 = call i8* @DW_UNSND(%struct.attribute* %14)
  %141 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %142 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  br label %170

143:                                              ; preds = %73
  %144 = call i8* @DW_UNSND(%struct.attribute* %14)
  %145 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %146 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %145, i32 0, i32 9
  store i8* %144, i8** %146, align 8
  br label %170

147:                                              ; preds = %73
  %148 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %149 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %148, i32 0, i32 4
  store i32 1, i32* %149, align 8
  br label %170

150:                                              ; preds = %73, %73
  store i32 1, i32* %16, align 4
  %151 = bitcast %struct.attribute* %15 to i8*
  %152 = bitcast %struct.attribute* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 8, i1 false)
  br label %170

153:                                              ; preds = %73
  %154 = getelementptr inbounds %struct.attribute, %struct.attribute* %14, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DW_FORM_ref_addr, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %168

160:                                              ; preds = %153
  %161 = load i8*, i8** @dwarf_info_buffer, align 8
  %162 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %163 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %14, %struct.dwarf2_cu* %162)
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %167 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %160, %158
  br label %170

169:                                              ; preds = %73
  br label %170

170:                                              ; preds = %169, %168, %150, %147, %143, %139, %135, %134, %107, %102, %97, %96
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %67

174:                                              ; preds = %67
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %174
  %178 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %179 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %210

182:                                              ; preds = %177
  %183 = load i8*, i8** @dwarf_info_buffer, align 8
  %184 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %185 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %15, %struct.dwarf2_cu* %184)
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8* %187, i8** %20, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %191 = call i8* @read_partial_die(%struct.partial_die_info* %19, i32* %188, i8* %189, %struct.dwarf2_cu* %190)
  %192 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %19, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %209

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %19, i32 0, i32 8
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %199 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %198, i32 0, i32 8
  store i32* %197, i32** %199, align 8
  %200 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %19, i32 0, i32 7
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %19, i32 0, i32 7
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %207 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %206, i32 0, i32 7
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %203, %195
  br label %209

209:                                              ; preds = %208, %182
  br label %210

210:                                              ; preds = %209, %177, %174
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %238

213:                                              ; preds = %210
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %213
  %217 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %218 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %221 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %219, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %216
  %225 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %226 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %224
  %230 = load i32*, i32** %7, align 8
  %231 = call i32 @bfd_get_file_flags(i32* %230)
  %232 = load i32, i32* @HAS_RELOC, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %229, %224
  %236 = load %struct.partial_die_info*, %struct.partial_die_info** %6, align 8
  %237 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %236, i32 0, i32 6
  store i32 1, i32* %237, align 8
  br label %238

238:                                              ; preds = %235, %229, %216, %213, %210
  %239 = load i8*, i8** %8, align 8
  store i8* %239, i8** %5, align 8
  br label %240

240:                                              ; preds = %238, %32
  %241 = load i8*, i8** %5, align 8
  ret i8* %241
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_unsigned_leb128(i32*, i8*, i32*) #2

declare dso_local %struct.abbrev_info* @dwarf2_lookup_abbrev(i32, %struct.dwarf2_cu*) #2

declare dso_local i32 @error(i8*, i32, i8*) #2

declare dso_local i8* @bfd_get_filename(i32*) #2

declare dso_local i8* @read_attribute(%struct.attribute*, i32*, i32*, i8*, %struct.dwarf2_cu*) #2

declare dso_local i8* @DW_STRING(%struct.attribute*) #2

declare dso_local i8* @DW_ADDR(%struct.attribute*) #2

declare dso_local i32 @attr_form_is_block(%struct.attribute*) #2

declare dso_local i32 @DW_BLOCK(%struct.attribute*) #2

declare dso_local i32 @dwarf2_complex_location_expr_complaint(...) #2

declare dso_local i32 @dwarf2_invalid_attrib_class_complaint(i8*, i8*) #2

declare dso_local i8* @DW_UNSND(%struct.attribute*) #2

declare dso_local i32 @complaint(i32*, i8*) #2

declare dso_local i32 @dwarf2_get_ref_die_offset(%struct.attribute*, %struct.dwarf2_cu*) #2

declare dso_local i32 @bfd_get_file_flags(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
