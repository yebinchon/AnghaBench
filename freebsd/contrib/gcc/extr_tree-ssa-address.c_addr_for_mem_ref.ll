; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_addr_for_mem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_addr_for_mem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_addr_template = type { i8*, i8**, i8** }
%struct.mem_address = type { i64, i64, i64, i64, i64 }

@addr_for_mem_ref.templates_initialized = internal global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"test_symbol\00", align 1
@LAST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i8* null, align 8
@templates = common dso_local global %struct.mem_addr_template* null, align 8
@current_function_decl = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @addr_for_mem_ref(%struct.mem_address* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mem_address*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mem_addr_template*, align 8
  %13 = alloca i32, align 4
  store %struct.mem_address* %0, %struct.mem_address** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %15 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %20 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @integer_onep(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %26 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @TREE_INT_CST_LOW(i64 %27)
  %29 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %30 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @TREE_INT_CST_HIGH(i64 %31)
  %33 = load i32, i32* @Pmode, align 4
  %34 = call i8* @immed_double_const(i32 %28, i32 %32, i32 %33)
  store i8* %34, i8** %10, align 8
  br label %37

35:                                               ; preds = %18, %2
  %36 = load i8*, i8** @NULL_RTX, align 8
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %39 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %44 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @integer_zerop(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %50 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @TREE_INT_CST_LOW(i64 %51)
  %53 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %54 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @TREE_INT_CST_HIGH(i64 %55)
  %57 = load i32, i32* @Pmode, align 4
  %58 = call i8* @immed_double_const(i32 %52, i32 %56, i32 %57)
  store i8* %58, i8** %11, align 8
  br label %61

59:                                               ; preds = %42, %37
  %60 = load i8*, i8** @NULL_RTX, align 8
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %183, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @addr_for_mem_ref.templates_initialized, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %148, label %67

67:                                               ; preds = %64
  store i32 1, i32* @addr_for_mem_ref.templates_initialized, align 4
  %68 = load i32, i32* @Pmode, align 4
  %69 = call i32 @ggc_strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %70 = call i8* @gen_rtx_SYMBOL_REF(i32 %68, i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = load i32, i32* @Pmode, align 4
  %72 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %73 = add nsw i64 %72, 1
  %74 = call i8* @gen_raw_REG(i32 %71, i64 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* @Pmode, align 4
  %76 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %77 = add nsw i64 %76, 2
  %78 = call i8* @gen_raw_REG(i32 %75, i64 %77)
  store i8* %78, i8** %9, align 8
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %144, %67
  %80 = load i32, i32* %13, align 4
  %81 = icmp ult i32 %80, 32
  br i1 %81, label %82, label %147

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, 16
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  br label %90

88:                                               ; preds = %82
  %89 = load i8*, i8** @NULL_RTX, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i8*, i8** %8, align 8
  br label %99

97:                                               ; preds = %90
  %98 = load i8*, i8** @NULL_RTX, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i8* [ %96, %95 ], [ %98, %97 ]
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %101, 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  br label %108

106:                                              ; preds = %99
  %107 = load i8*, i8** @NULL_RTX, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ]
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i8*, i8** @const0_rtx, align 8
  br label %117

115:                                              ; preds = %108
  %116 = load i8*, i8** @NULL_RTX, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i8* [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %13, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** @const0_rtx, align 8
  br label %126

124:                                              ; preds = %117
  %125 = load i8*, i8** @NULL_RTX, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i8* [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.mem_addr_template*, %struct.mem_addr_template** @templates, align 8
  %129 = load i32, i32* %13, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %128, i64 %130
  %132 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %131, i32 0, i32 0
  %133 = load %struct.mem_addr_template*, %struct.mem_addr_template** @templates, align 8
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %133, i64 %135
  %137 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %136, i32 0, i32 2
  %138 = load %struct.mem_addr_template*, %struct.mem_addr_template** @templates, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %138, i64 %140
  %142 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %141, i32 0, i32 1
  %143 = call i32 @gen_addr_rtx(i8* %91, i8* %100, i8* %109, i8* %118, i8* %127, i8** %132, i8*** %137, i8*** %142)
  br label %144

144:                                              ; preds = %126
  %145 = load i32, i32* %13, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %79

147:                                              ; preds = %79
  br label %148

148:                                              ; preds = %147, %64
  %149 = load %struct.mem_addr_template*, %struct.mem_addr_template** @templates, align 8
  %150 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %151 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %154 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %157 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @TEMPL_IDX(i64 %152, i64 %155, i64 %158, i8* %159, i8* %160)
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %149, i64 %162
  store %struct.mem_addr_template* %163, %struct.mem_addr_template** %12, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %148
  %167 = load i8*, i8** %10, align 8
  %168 = load %struct.mem_addr_template*, %struct.mem_addr_template** %12, align 8
  %169 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %168, i32 0, i32 2
  %170 = load i8**, i8*** %169, align 8
  store i8* %167, i8** %170, align 8
  br label %171

171:                                              ; preds = %166, %148
  %172 = load i8*, i8** %11, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.mem_addr_template*, %struct.mem_addr_template** %12, align 8
  %177 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  store i8* %175, i8** %178, align 8
  br label %179

179:                                              ; preds = %174, %171
  %180 = load %struct.mem_addr_template*, %struct.mem_addr_template** %12, align 8
  %181 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %3, align 8
  br label %241

183:                                              ; preds = %61
  %184 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %185 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %190 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @current_function_decl, align 4
  %193 = call i64 @build_addr(i64 %191, i32 %192)
  %194 = load i8*, i8** @NULL_RTX, align 8
  %195 = load i32, i32* @Pmode, align 4
  %196 = load i32, i32* @EXPAND_NORMAL, align 4
  %197 = call i8* @expand_expr(i64 %193, i8* %194, i32 %195, i32 %196)
  br label %200

198:                                              ; preds = %183
  %199 = load i8*, i8** @NULL_RTX, align 8
  br label %200

200:                                              ; preds = %198, %188
  %201 = phi i8* [ %197, %188 ], [ %199, %198 ]
  store i8* %201, i8** %7, align 8
  %202 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %203 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %200
  %207 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %208 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i8*, i8** @NULL_RTX, align 8
  %211 = load i32, i32* @Pmode, align 4
  %212 = load i32, i32* @EXPAND_NORMAL, align 4
  %213 = call i8* @expand_expr(i64 %209, i8* %210, i32 %211, i32 %212)
  br label %216

214:                                              ; preds = %200
  %215 = load i8*, i8** @NULL_RTX, align 8
  br label %216

216:                                              ; preds = %214, %206
  %217 = phi i8* [ %213, %206 ], [ %215, %214 ]
  store i8* %217, i8** %8, align 8
  %218 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %219 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load %struct.mem_address*, %struct.mem_address** %4, align 8
  %224 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i8*, i8** @NULL_RTX, align 8
  %227 = load i32, i32* @Pmode, align 4
  %228 = load i32, i32* @EXPAND_NORMAL, align 4
  %229 = call i8* @expand_expr(i64 %225, i8* %226, i32 %227, i32 %228)
  br label %232

230:                                              ; preds = %216
  %231 = load i8*, i8** @NULL_RTX, align 8
  br label %232

232:                                              ; preds = %230, %222
  %233 = phi i8* [ %229, %222 ], [ %231, %230 ]
  store i8* %233, i8** %9, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = load i8*, i8** %8, align 8
  %236 = load i8*, i8** %9, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = load i8*, i8** %11, align 8
  %239 = call i32 @gen_addr_rtx(i8* %234, i8* %235, i8* %236, i8* %237, i8* %238, i8** %6, i8*** null, i8*** null)
  %240 = load i8*, i8** %6, align 8
  store i8* %240, i8** %3, align 8
  br label %241

241:                                              ; preds = %232, %179
  %242 = load i8*, i8** %3, align 8
  ret i8* %242
}

declare dso_local i32 @integer_onep(i64) #1

declare dso_local i8* @immed_double_const(i32, i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i8* @gen_rtx_SYMBOL_REF(i32, i32) #1

declare dso_local i32 @ggc_strdup(i8*) #1

declare dso_local i8* @gen_raw_REG(i32, i64) #1

declare dso_local i32 @gen_addr_rtx(i8*, i8*, i8*, i8*, i8*, i8**, i8***, i8***) #1

declare dso_local i32 @TEMPL_IDX(i64, i64, i64, i8*, i8*) #1

declare dso_local i8* @expand_expr(i64, i8*, i32, i32) #1

declare dso_local i64 @build_addr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
