; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_typed_reg_or_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_typed_reg_or_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_typed_alias = type { i32, i32, %struct.neon_type_el }
%struct.neon_type_el = type { i32, i32 }
%struct.reg_entry = type { i64, i32, %struct.neon_typed_alias* }
%struct.TYPE_3__ = type { i64, i32 }

@NT_invtype = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@REG_TYPE_NDQ = common dso_local global i32 0, align 4
@REG_TYPE_NQ = common dso_local global i64 0, align 8
@REG_TYPE_VFD = common dso_local global i64 0, align 8
@REG_TYPE_VFSD = common dso_local global i32 0, align 4
@REG_TYPE_VFS = common dso_local global i64 0, align 8
@REG_TYPE_NSDQ = common dso_local global i32 0, align 4
@REG_TYPE_MMXWC = common dso_local global i32 0, align 4
@REG_TYPE_MMXWCG = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@NTA_HASTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't redefine type for operand\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"only D registers may be indexed\00", align 1
@NTA_HASINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't change index for operand\00", align 1
@NEON_ALL_LANES = common dso_local global i32 0, align 4
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"constant expression required\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32*, %struct.neon_typed_alias*)* @parse_typed_reg_or_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_typed_reg_or_scalar(i8** %0, i32 %1, i32* %2, %struct.neon_typed_alias* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.neon_typed_alias*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.reg_entry*, align 8
  %12 = alloca %struct.neon_typed_alias, align 4
  %13 = alloca %struct.neon_type_el, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.neon_typed_alias* %3, %struct.neon_typed_alias** %9, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = call %struct.reg_entry* @arm_reg_parse_multi(i8** %10)
  store %struct.reg_entry* %18, %struct.reg_entry** %11, align 8
  %19 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* @NT_invtype, align 4
  %22 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 2
  %23 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 2
  %25 = getelementptr inbounds %struct.neon_type_el, %struct.neon_type_el* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %27 = icmp eq %struct.reg_entry* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %4
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @arm_reg_alt_syntax(i8** %10, i8* %30, %struct.reg_entry* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @FAIL, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  %39 = load i8**, i8*** %6, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %9, align 8
  %42 = icmp ne %struct.neon_typed_alias* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %9, align 8
  %45 = bitcast %struct.neon_typed_alias* %44 to i8*
  %46 = bitcast %struct.neon_typed_alias* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 16, i1 false)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %237

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @REG_TYPE_NDQ, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %55 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REG_TYPE_NQ, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %113, label %59

59:                                               ; preds = %53
  %60 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %61 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REG_TYPE_VFD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %113, label %65

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @REG_TYPE_VFSD, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %71 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @REG_TYPE_VFS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %113, label %75

75:                                               ; preds = %69
  %76 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %77 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REG_TYPE_VFD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %113, label %81

81:                                               ; preds = %75, %65
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @REG_TYPE_NSDQ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %87 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @REG_TYPE_VFS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %113, label %91

91:                                               ; preds = %85
  %92 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %93 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @REG_TYPE_VFD, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %113, label %97

97:                                               ; preds = %91
  %98 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %99 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REG_TYPE_NQ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %97, %81
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @REG_TYPE_MMXWC, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %109 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @REG_TYPE_MMXWCG, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %97, %91, %85, %75, %69, %59, %53
  %114 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %115 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %113, %107, %103
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %122 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @FAIL, align 4
  store i32 %126, i32* %5, align 4
  br label %237

127:                                              ; preds = %118
  %128 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %129 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %128, i32 0, i32 2
  %130 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %129, align 8
  %131 = icmp ne %struct.neon_typed_alias* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %134 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %133, i32 0, i32 2
  %135 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %134, align 8
  %136 = bitcast %struct.neon_typed_alias* %12 to i8*
  %137 = bitcast %struct.neon_typed_alias* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 16, i1 false)
  br label %138

138:                                              ; preds = %132, %127
  %139 = call i64 @parse_neon_operand_type(%struct.neon_type_el* %13, i8** %10)
  %140 = load i64, i64* @SUCCESS, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @NTA_HASTYPE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %150 = call i32 @first_error(i32 %149)
  %151 = load i32, i32* @FAIL, align 4
  store i32 %151, i32* %5, align 4
  br label %237

152:                                              ; preds = %142
  %153 = load i32, i32* @NTA_HASTYPE, align 4
  %154 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  %157 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 2
  %158 = bitcast %struct.neon_type_el* %157 to i8*
  %159 = bitcast %struct.neon_type_el* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 8, i1 false)
  br label %160

160:                                              ; preds = %152, %138
  %161 = call i32 @skip_past_char(i8** %10, i8 signext 91)
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @SUCCESS, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %218

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* @REG_TYPE_VFD, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %172 = call i32 @first_error(i32 %171)
  %173 = load i32, i32* @FAIL, align 4
  store i32 %173, i32* %5, align 4
  br label %237

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @NTA_HASINDEX, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %182 = call i32 @first_error(i32 %181)
  %183 = load i32, i32* @FAIL, align 4
  store i32 %183, i32* %5, align 4
  br label %237

184:                                              ; preds = %174
  %185 = load i32, i32* @NTA_HASINDEX, align 4
  %186 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 4
  %189 = call i32 @skip_past_char(i8** %10, i8 signext 93)
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @SUCCESS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* @NEON_ALL_LANES, align 4
  %195 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 1
  store i32 %194, i32* %195, align 4
  br label %217

196:                                              ; preds = %184
  %197 = load i32, i32* @GE_NO_PREFIX, align 4
  %198 = call i32 @my_get_expression(%struct.TYPE_3__* %15, i8** %10, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @O_constant, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %205 = call i32 @first_error(i32 %204)
  %206 = load i32, i32* @FAIL, align 4
  store i32 %206, i32* %5, align 4
  br label %237

207:                                              ; preds = %196
  %208 = call i32 @skip_past_char(i8** %10, i8 signext 93)
  %209 = load i32, i32* @FAIL, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @FAIL, align 4
  store i32 %212, i32* %5, align 4
  br label %237

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %12, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %193
  br label %218

218:                                              ; preds = %217, %160
  %219 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %9, align 8
  %220 = icmp ne %struct.neon_typed_alias* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %9, align 8
  %223 = bitcast %struct.neon_typed_alias* %222 to i8*
  %224 = bitcast %struct.neon_typed_alias* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 4 %224, i64 16, i1 false)
  br label %225

225:                                              ; preds = %221, %218
  %226 = load i32*, i32** %8, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* %7, align 4
  %230 = load i32*, i32** %8, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i8*, i8** %10, align 8
  %233 = load i8**, i8*** %6, align 8
  store i8* %232, i8** %233, align 8
  %234 = load %struct.reg_entry*, %struct.reg_entry** %11, align 8
  %235 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %231, %211, %203, %180, %170, %148, %125, %47
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local %struct.reg_entry* @arm_reg_parse_multi(i8**) #1

declare dso_local i32 @arm_reg_alt_syntax(i8**, i8*, %struct.reg_entry*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @parse_neon_operand_type(%struct.neon_type_el*, i8**) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @skip_past_char(i8**, i8 signext) #1

declare dso_local i32 @my_get_expression(%struct.TYPE_3__*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
