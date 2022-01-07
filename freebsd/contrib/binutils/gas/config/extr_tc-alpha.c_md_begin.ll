; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i64 }

@O_max = common dso_local global i64 0, align 8
@alpha_opcode_hash = common dso_local global i8* null, align 8
@alpha_num_opcodes = common dso_local global i32 0, align 4
@alpha_opcodes = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"internal error: can't hash opcode `%s': %s\00", align 1
@alpha_macro_hash = common dso_local global i8* null, align 8
@alpha_num_macros = common dso_local global i32 0, align 4
@alpha_macros = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"internal error: can't hash macro `%s': %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@reg_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@alpha_register_table = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"$f%d\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@g_switch_value = common dso_local global i32 0, align 4
@alpha_literal_hash = common dso_local global i8* null, align 8
@text_section = common dso_local global i32 0, align 4
@ECOFF_DEBUGGING = common dso_local global i64 0, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@alpha_gp_symbol = common dso_local global i8* null, align 8
@alpha_link_section = common dso_local global i32 0, align 4
@alpha_link_symbol = common dso_local global i32 0, align 4
@alpha_lita_section = common dso_local global i32 0, align 4
@alpha_lita_symbol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8], align 1
  %10 = alloca [5 x i8], align 1
  %11 = load i64, i64* @O_max, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @O_max, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i8* (...) @hash_new()
  store i8* %19, i8** @alpha_opcode_hash, align 8
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %112, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @alpha_num_opcodes, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %113

24:                                               ; preds = %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @alpha_opcodes, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  %31 = load i8*, i8** @alpha_opcode_hash, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @alpha_opcodes, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = bitcast %struct.TYPE_5__* %36 to i8*
  %38 = call i8* @hash_insert(i8* %31, i8* %32, i8* %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @as_fatal(i32 %42, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i8*, i8** %3, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i8* @xmalloc(i32 %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(i8* %54, i8* %55, i32 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i32 @strcpy(i8* %69, i8* %71)
  %73 = load i8*, i8** @alpha_opcode_hash, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @alpha_opcodes, align 8
  %76 = load i32, i32* %1, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = bitcast %struct.TYPE_5__* %78 to i8*
  %80 = call i8* @hash_insert(i8* %73, i8* %74, i8* %79)
  br label %81

81:                                               ; preds = %50, %46
  br label %82

82:                                               ; preds = %111, %81
  %83 = load i32, i32* %1, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* @alpha_num_opcodes, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @alpha_opcodes, align 8
  %89 = load i32, i32* %1, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %87
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @alpha_opcodes, align 8
  %98 = load i32, i32* %1, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @strcmp(i8* %102, i8* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %96, %87
  %108 = phi i1 [ true, %87 ], [ %106, %96 ]
  br label %109

109:                                              ; preds = %107, %82
  %110 = phi i1 [ false, %82 ], [ %108, %107 ]
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  br label %82

112:                                              ; preds = %109
  br label %20

113:                                              ; preds = %20
  %114 = call i8* (...) @hash_new()
  store i8* %114, i8** @alpha_macro_hash, align 8
  store i32 0, i32* %1, align 4
  br label %115

115:                                              ; preds = %172, %113
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @alpha_num_macros, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %115
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alpha_macros, align 8
  %121 = load i32, i32* %1, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %7, align 8
  %126 = load i8*, i8** @alpha_macro_hash, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alpha_macros, align 8
  %129 = load i32, i32* %1, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = bitcast %struct.TYPE_6__* %131 to i8*
  %133 = call i8* @hash_insert(i8* %126, i8* %127, i8* %132)
  store i8* %133, i8** %8, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %119
  %137 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @as_fatal(i32 %137, i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %119
  br label %142

142:                                              ; preds = %171, %141
  %143 = load i32, i32* %1, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* @alpha_num_macros, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alpha_macros, align 8
  %149 = load i32, i32* %1, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = icmp eq i8* %153, %154
  br i1 %155, label %167, label %156

156:                                              ; preds = %147
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @alpha_macros, align 8
  %158 = load i32, i32* %1, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @strcmp(i8* %162, i8* %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  br label %167

167:                                              ; preds = %156, %147
  %168 = phi i1 [ true, %147 ], [ %166, %156 ]
  br label %169

169:                                              ; preds = %167, %142
  %170 = phi i1 [ false, %142 ], [ %168, %167 ]
  br i1 %170, label %171, label %172

171:                                              ; preds = %169
  br label %142

172:                                              ; preds = %169
  br label %115

173:                                              ; preds = %115
  store i32 0, i32* %1, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %1, align 4
  %176 = icmp ult i32 %175, 32
  br i1 %176, label %177, label %192

177:                                              ; preds = %174
  %178 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %179 = load i32, i32* %1, align 4
  %180 = call i32 @sprintf(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %182 = load i32, i32* @reg_section, align 4
  %183 = load i32, i32* %1, align 4
  %184 = call i8* @symbol_create(i8* %181, i32 %182, i32 %183, i32* @zero_address_frag)
  %185 = load i8**, i8*** @alpha_register_table, align 8
  %186 = load i32, i32* %1, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %184, i8** %188, align 8
  br label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %1, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %1, align 4
  br label %174

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %209, %192
  %194 = load i32, i32* %1, align 4
  %195 = icmp ult i32 %194, 64
  br i1 %195, label %196, label %212

196:                                              ; preds = %193
  %197 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %198 = load i32, i32* %1, align 4
  %199 = sub i32 %198, 32
  %200 = call i32 @sprintf(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %202 = load i32, i32* @reg_section, align 4
  %203 = load i32, i32* %1, align 4
  %204 = call i8* @symbol_create(i8* %201, i32 %202, i32 %203, i32* @zero_address_frag)
  %205 = load i8**, i8*** @alpha_register_table, align 8
  %206 = load i32, i32* %1, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  store i8* %204, i8** %208, align 8
  br label %209

209:                                              ; preds = %196
  %210 = load i32, i32* %1, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %1, align 4
  br label %193

212:                                              ; preds = %193
  %213 = load i32, i32* @stdoutput, align 4
  %214 = load i32, i32* @g_switch_value, align 4
  %215 = call i32 @bfd_set_gp_size(i32 %213, i32 %214)
  %216 = call i8* (...) @hash_new()
  store i8* %216, i8** @alpha_literal_hash, align 8
  %217 = load i32, i32* @text_section, align 4
  %218 = call i32 @subseg_set(i32 %217, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @hash_new(...) #1

declare dso_local i8* @hash_insert(i8*, i8*, i8*) #1

declare dso_local i32 @as_fatal(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @symbol_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @bfd_set_gp_size(i32, i32) #1

declare dso_local i32 @subseg_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
