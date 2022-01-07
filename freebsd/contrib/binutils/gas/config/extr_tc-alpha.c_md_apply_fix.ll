; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_apply_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_apply_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpha_operand = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8*, i32 }

@BFD_RELOC_16_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_32_PCREL = common dso_local global i32 0, align 4
@BFD_RELOC_64_PCREL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unhandled relocation type %s\00", align 1
@alpha_num_operands = common dso_local global i64 0, align 8
@alpha_operands = common dso_local global %struct.alpha_operand* null, align 8
@absolute_section = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"non-absolute expression in constant field\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"type %d reloc done?\0A\00", align 1
@BFD_RELOC_ALPHA_GPDISP = common dso_local global i32 0, align 4
@alpha_gp_symbol = common dso_local global i32 0, align 4
@alpha_gp_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_apply_fix(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.alpha_operand*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %164 [
    i32 144, label %28
    i32 143, label %62
    i32 156, label %75
    i32 154, label %85
    i32 153, label %95
    i32 130, label %121
    i32 131, label %121
    i32 142, label %121
    i32 141, label %121
    i32 155, label %122
    i32 140, label %142
    i32 147, label %162
    i32 137, label %162
    i32 139, label %162
    i32 151, label %162
    i32 128, label %163
    i32 129, label %163
  ]

28:                                               ; preds = %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 10
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 9
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %43, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %49, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %34, %28
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @sign_extend_16(i32 %58)
  %60 = sub nsw i32 %57, %59
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %8, align 4
  br label %67

62:                                               ; preds = %3
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @sign_extend_16(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @section_symbol(i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @md_number_to_chars(i8* %72, i32 %73, i32 2)
  br label %226

75:                                               ; preds = %3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @BFD_RELOC_16_PCREL, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %75
  store i32 2, i32* %10, align 4
  br label %105

85:                                               ; preds = %3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @BFD_RELOC_32_PCREL, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %85
  store i32 4, i32* %10, align 4
  br label %105

95:                                               ; preds = %3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @BFD_RELOC_64_PCREL, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %95
  store i32 8, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %94, %84
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @md_number_to_chars(i8* %116, i32 %117, i32 %118)
  br label %253

120:                                              ; preds = %110, %105
  br label %256

121:                                              ; preds = %3, %3, %3, %3
  br label %256

122:                                              ; preds = %3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @bfd_getl32(i8* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, -2097152
  %137 = load i32, i32* %8, align 4
  %138 = ashr i32 %137, 2
  %139 = and i32 %138, 2097151
  %140 = or i32 %136, %139
  store i32 %140, i32* %9, align 4
  br label %249

141:                                              ; preds = %127, %122
  br label %256

142:                                              ; preds = %3
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @bfd_getl32(i8* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, -16384
  %157 = load i32, i32* %8, align 4
  %158 = ashr i32 %157, 2
  %159 = and i32 %158, 16383
  %160 = or i32 %156, %159
  store i32 %160, i32* %9, align 4
  br label %249

161:                                              ; preds = %147, %142
  br label %256

162:                                              ; preds = %3, %3, %3, %3
  br label %256

163:                                              ; preds = %3, %3
  br label %256

164:                                              ; preds = %3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @bfd_get_reloc_code_name(i32 %173)
  %175 = call i32 @as_fatal(i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %169, %164
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 0, %179
  %181 = load i64, i64* @alpha_num_operands, align 8
  %182 = trunc i64 %181 to i32
  %183 = icmp slt i32 %180, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @assert(i32 %184)
  %186 = load %struct.alpha_operand*, %struct.alpha_operand** @alpha_operands, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 0, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.alpha_operand, %struct.alpha_operand* %186, i64 %191
  store %struct.alpha_operand* %192, %struct.alpha_operand** %12, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %176
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @S_GET_SEGMENT(i64 %200)
  %202 = load i32, i32* @absolute_section, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %212 = call i32 @as_bad_where(i32 %207, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %204, %197, %176
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @bfd_getl32(i8* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.alpha_operand*, %struct.alpha_operand** %12, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @insert_operand(i32 %216, %struct.alpha_operand* %217, i32 %218, i32 %221, i32 %224)
  store i32 %225, i32* %9, align 4
  br label %249

226:                                              ; preds = %67
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231, %226
  br label %256

237:                                              ; preds = %231
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @as_warn_where(i32 %240, i32 %243, i32 %244, i32 %247)
  br label %253

249:                                              ; preds = %213, %152, %132
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @md_number_to_chars(i8* %250, i32 %251, i32 4)
  br label %253

253:                                              ; preds = %249, %237, %115
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  store i32 1, i32* %255, align 4
  br label %256

256:                                              ; preds = %253, %236, %163, %162, %161, %141, %121, %120
  ret void
}

declare dso_local i32 @sign_extend_16(i32) #1

declare dso_local i64 @section_symbol(i32) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

declare dso_local i32 @bfd_getl32(i8*) #1

declare dso_local i32 @as_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_reloc_code_name(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @S_GET_SEGMENT(i64) #1

declare dso_local i32 @as_bad_where(i32, i32, i32) #1

declare dso_local i32 @insert_operand(i32, %struct.alpha_operand*, i32, i32, i32) #1

declare dso_local i32 @as_warn_where(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
