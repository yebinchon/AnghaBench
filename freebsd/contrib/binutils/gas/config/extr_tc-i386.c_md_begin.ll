; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@op_hash = common dso_local global i32 0, align 4
@i386_optab = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Internal Error:  Can't hash %s: %s\00", align 1
@reg_hash = common dso_local global i32 0, align 4
@i386_regtab_size = common dso_local global i32 0, align 4
@i386_regtab = common dso_local global %struct.TYPE_8__* null, align 8
@digit_chars = common dso_local global i8* null, align 8
@mnemonic_chars = common dso_local global i8* null, align 8
@register_chars = common dso_local global i8* null, align 8
@operand_chars = common dso_local global i8* null, align 8
@identifier_chars = common dso_local global i8* null, align 8
@operand_special_chars = common dso_local global i8* null, align 8
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@x86_dwarf2_return_column = common dso_local global i32 0, align 4
@x86_cie_data_alignment = common dso_local global i32 0, align 4
@IS_ELF = common dso_local global i64 0, align 8
@bss_section = common dso_local global i32 0, align 4
@data_section = common dso_local global i32 0, align 4
@text_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = call i32 (...) @hash_new()
  store i32 %8, i32* @op_hash, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @i386_optab, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %2, align 8
  %10 = call i64 @xmalloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %14, align 8
  br label %15

15:                                               ; preds = %0, %66
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 1
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %2, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 -1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @strcmp(i32* %25, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %22, %15
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load i32, i32* @op_hash, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 -1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = ptrtoint %struct.TYPE_6__* %41 to i32
  %43 = call i8* @hash_insert(i32 %36, i32* %40, i32 %42)
  store i8* %43, i8** %1, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 -1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %1, align 8
  %53 = call i32 @as_fatal(i32 %47, i32* %51, i8* %52)
  br label %54

54:                                               ; preds = %46, %32
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %67

60:                                               ; preds = %54
  %61 = call i64 @xmalloc(i32 16)
  %62 = inttoptr i64 %61 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %3, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  br label %66

66:                                               ; preds = %60, %22
  br label %15

67:                                               ; preds = %59
  %68 = call i32 (...) @hash_new()
  store i32 %68, i32* @reg_hash, align 4
  %69 = load i32, i32* @i386_regtab_size, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @i386_regtab, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %4, align 8
  br label %71

71:                                               ; preds = %93, %67
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %5, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* @reg_hash, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = ptrtoint %struct.TYPE_8__* %80 to i32
  %82 = call i8* @hash_insert(i32 %76, i32* %79, i32 %81)
  store i8* %82, i8** %1, align 8
  %83 = load i8*, i8** %1, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i8*, i8** %1, align 8
  %91 = call i32 @as_fatal(i32 %86, i32* %89, i8* %90)
  br label %92

92:                                               ; preds = %85, %75
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 1
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %4, align 8
  br label %71

96:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %213, %96
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 256
  br i1 %99, label %100, label %216

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @ISDIGIT(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** @digit_chars, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 %106, i8* %110, align 1
  %111 = load i32, i32* %6, align 4
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** @mnemonic_chars, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  %117 = load i32, i32* %6, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** @register_chars, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  %123 = load i32, i32* %6, align 4
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** @operand_chars, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 %124, i8* %128, align 1
  br label %180

129:                                              ; preds = %100
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @ISLOWER(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** @mnemonic_chars, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  %140 = load i32, i32* %6, align 4
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** @register_chars, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  %146 = load i32, i32* %6, align 4
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** @operand_chars, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8 %147, i8* %151, align 1
  br label %179

152:                                              ; preds = %129
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @ISUPPER(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load i32, i32* %6, align 4
  %158 = call signext i8 @TOLOWER(i32 %157)
  %159 = load i8*, i8** @mnemonic_chars, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 %158, i8* %162, align 1
  %163 = load i8*, i8** @mnemonic_chars, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** @register_chars, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  store i8 %167, i8* %171, align 1
  %172 = load i32, i32* %6, align 4
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** @operand_chars, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %173, i8* %177, align 1
  br label %178

178:                                              ; preds = %156, %152
  br label %179

179:                                              ; preds = %178, %133
  br label %180

180:                                              ; preds = %179, %104
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @ISALPHA(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %6, align 4
  %186 = call i64 @ISDIGIT(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184, %180
  %189 = load i32, i32* %6, align 4
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** @identifier_chars, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 %190, i8* %194, align 1
  br label %212

195:                                              ; preds = %184
  %196 = load i32, i32* %6, align 4
  %197 = icmp sge i32 %196, 128
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = trunc i32 %199 to i8
  %201 = load i8*, i8** @identifier_chars, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  store i8 %200, i8* %204, align 1
  %205 = load i32, i32* %6, align 4
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** @operand_chars, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8 %206, i8* %210, align 1
  br label %211

211:                                              ; preds = %198, %195
  br label %212

212:                                              ; preds = %211, %188
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %97

216:                                              ; preds = %97
  %217 = load i8*, i8** @digit_chars, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 45
  store i8 45, i8* %218, align 1
  %219 = load i8*, i8** @mnemonic_chars, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 45
  store i8 45, i8* %220, align 1
  %221 = load i8*, i8** @mnemonic_chars, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 46
  store i8 46, i8* %222, align 1
  %223 = load i8*, i8** @identifier_chars, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 95
  store i8 95, i8* %224, align 1
  %225 = load i8*, i8** @identifier_chars, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 46
  store i8 46, i8* %226, align 1
  %227 = load i8*, i8** @operand_special_chars, align 8
  store i8* %227, i8** %7, align 8
  br label %228

228:                                              ; preds = %241, %216
  %229 = load i8*, i8** %7, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = load i8*, i8** %7, align 8
  %235 = load i8, i8* %234, align 1
  %236 = load i8*, i8** @operand_chars, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds i8, i8* %236, i64 %239
  store i8 %235, i8* %240, align 1
  br label %241

241:                                              ; preds = %233
  %242 = load i8*, i8** %7, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %7, align 8
  br label %228

244:                                              ; preds = %228
  %245 = load i64, i64* @flag_code, align 8
  %246 = load i64, i64* @CODE_64BIT, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  store i32 16, i32* @x86_dwarf2_return_column, align 4
  store i32 -8, i32* @x86_cie_data_alignment, align 4
  br label %250

249:                                              ; preds = %244
  store i32 8, i32* @x86_dwarf2_return_column, align 4
  store i32 -4, i32* @x86_cie_data_alignment, align 4
  br label %250

250:                                              ; preds = %249, %248
  ret void
}

declare dso_local i32 @hash_new(...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i8* @hash_insert(i32, i32*, i32) #1

declare dso_local i32 @as_fatal(i32, i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i64 @ISLOWER(i32) #1

declare dso_local i64 @ISUPPER(i32) #1

declare dso_local signext i8 @TOLOWER(i32) #1

declare dso_local i64 @ISALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
