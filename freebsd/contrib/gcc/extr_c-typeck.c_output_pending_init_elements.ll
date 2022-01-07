; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_output_pending_init_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_output_pending_init_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_node = type { i64, %struct.init_node*, %struct.init_node*, %struct.init_node*, i32 }

@constructor_pending_elts = common dso_local global %struct.init_node* null, align 8
@constructor_type = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@constructor_unfilled_index = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@constructor_unfilled_fields = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @output_pending_init_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_pending_init_elements(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.init_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.init_node*, %struct.init_node** @constructor_pending_elts, align 8
  store %struct.init_node* %7, %struct.init_node** %3, align 8
  br label %8

8:                                                ; preds = %242, %1
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %214, %8
  %10 = load %struct.init_node*, %struct.init_node** %3, align 8
  %11 = icmp ne %struct.init_node* %10, null
  br i1 %11, label %12, label %215

12:                                               ; preds = %9
  %13 = load i64, i64* @constructor_type, align 8
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @ARRAY_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %103

17:                                               ; preds = %12
  %18 = load %struct.init_node*, %struct.init_node** %3, align 8
  %19 = getelementptr inbounds %struct.init_node, %struct.init_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @constructor_unfilled_index, align 8
  %22 = call i64 @tree_int_cst_equal(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.init_node*, %struct.init_node** %3, align 8
  %26 = getelementptr inbounds %struct.init_node, %struct.init_node* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* @constructor_type, align 8
  %29 = call i32 @TREE_TYPE(i64 %28)
  %30 = load i64, i64* @constructor_unfilled_index, align 8
  %31 = call i32 @output_init_element(i32 %27, i32 1, i32 %29, i64 %30, i32 0)
  br label %102

32:                                               ; preds = %17
  %33 = load i64, i64* @constructor_unfilled_index, align 8
  %34 = load %struct.init_node*, %struct.init_node** %3, align 8
  %35 = getelementptr inbounds %struct.init_node, %struct.init_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @tree_int_cst_lt(i64 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.init_node*, %struct.init_node** %3, align 8
  %41 = getelementptr inbounds %struct.init_node, %struct.init_node* %40, i32 0, i32 3
  %42 = load %struct.init_node*, %struct.init_node** %41, align 8
  %43 = icmp ne %struct.init_node* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.init_node*, %struct.init_node** %3, align 8
  %46 = getelementptr inbounds %struct.init_node, %struct.init_node* %45, i32 0, i32 3
  %47 = load %struct.init_node*, %struct.init_node** %46, align 8
  store %struct.init_node* %47, %struct.init_node** %3, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.init_node*, %struct.init_node** %3, align 8
  %50 = getelementptr inbounds %struct.init_node, %struct.init_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %4, align 8
  br label %215

52:                                               ; preds = %44
  br label %101

53:                                               ; preds = %32
  %54 = load %struct.init_node*, %struct.init_node** %3, align 8
  %55 = getelementptr inbounds %struct.init_node, %struct.init_node* %54, i32 0, i32 2
  %56 = load %struct.init_node*, %struct.init_node** %55, align 8
  %57 = icmp ne %struct.init_node* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.init_node*, %struct.init_node** %3, align 8
  %60 = getelementptr inbounds %struct.init_node, %struct.init_node* %59, i32 0, i32 2
  %61 = load %struct.init_node*, %struct.init_node** %60, align 8
  store %struct.init_node* %61, %struct.init_node** %3, align 8
  br label %100

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %78, %62
  %64 = load %struct.init_node*, %struct.init_node** %3, align 8
  %65 = getelementptr inbounds %struct.init_node, %struct.init_node* %64, i32 0, i32 1
  %66 = load %struct.init_node*, %struct.init_node** %65, align 8
  %67 = icmp ne %struct.init_node* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.init_node*, %struct.init_node** %3, align 8
  %70 = getelementptr inbounds %struct.init_node, %struct.init_node* %69, i32 0, i32 1
  %71 = load %struct.init_node*, %struct.init_node** %70, align 8
  %72 = getelementptr inbounds %struct.init_node, %struct.init_node* %71, i32 0, i32 2
  %73 = load %struct.init_node*, %struct.init_node** %72, align 8
  %74 = load %struct.init_node*, %struct.init_node** %3, align 8
  %75 = icmp eq %struct.init_node* %73, %74
  br label %76

76:                                               ; preds = %68, %63
  %77 = phi i1 [ false, %63 ], [ %75, %68 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = load %struct.init_node*, %struct.init_node** %3, align 8
  %80 = getelementptr inbounds %struct.init_node, %struct.init_node* %79, i32 0, i32 1
  %81 = load %struct.init_node*, %struct.init_node** %80, align 8
  store %struct.init_node* %81, %struct.init_node** %3, align 8
  br label %63

82:                                               ; preds = %76
  %83 = load %struct.init_node*, %struct.init_node** %3, align 8
  %84 = getelementptr inbounds %struct.init_node, %struct.init_node* %83, i32 0, i32 1
  %85 = load %struct.init_node*, %struct.init_node** %84, align 8
  store %struct.init_node* %85, %struct.init_node** %3, align 8
  %86 = load %struct.init_node*, %struct.init_node** %3, align 8
  %87 = icmp ne %struct.init_node* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load i64, i64* @constructor_unfilled_index, align 8
  %90 = load %struct.init_node*, %struct.init_node** %3, align 8
  %91 = getelementptr inbounds %struct.init_node, %struct.init_node* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @tree_int_cst_lt(i64 %89, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.init_node*, %struct.init_node** %3, align 8
  %97 = getelementptr inbounds %struct.init_node, %struct.init_node* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %4, align 8
  br label %215

99:                                               ; preds = %88, %82
  br label %100

100:                                              ; preds = %99, %58
  br label %101

101:                                              ; preds = %100, %52
  br label %102

102:                                              ; preds = %101, %24
  br label %214

103:                                              ; preds = %12
  %104 = load i64, i64* @constructor_type, align 8
  %105 = call i64 @TREE_CODE(i64 %104)
  %106 = load i64, i64* @RECORD_TYPE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @constructor_type, align 8
  %110 = call i64 @TREE_CODE(i64 %109)
  %111 = load i64, i64* @UNION_TYPE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %213

113:                                              ; preds = %108, %103
  %114 = load i64, i64* @constructor_unfilled_fields, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %215

117:                                              ; preds = %113
  %118 = load i64, i64* @constructor_unfilled_fields, align 8
  %119 = call i64 @bit_position(i64 %118)
  store i64 %119, i64* %5, align 8
  %120 = load %struct.init_node*, %struct.init_node** %3, align 8
  %121 = getelementptr inbounds %struct.init_node, %struct.init_node* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @bit_position(i64 %122)
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @tree_int_cst_equal(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %117
  %129 = load %struct.init_node*, %struct.init_node** %3, align 8
  %130 = getelementptr inbounds %struct.init_node, %struct.init_node* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* @constructor_unfilled_fields, align 8
  %132 = load %struct.init_node*, %struct.init_node** %3, align 8
  %133 = getelementptr inbounds %struct.init_node, %struct.init_node* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.init_node*, %struct.init_node** %3, align 8
  %136 = getelementptr inbounds %struct.init_node, %struct.init_node* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @TREE_TYPE(i64 %137)
  %139 = load %struct.init_node*, %struct.init_node** %3, align 8
  %140 = getelementptr inbounds %struct.init_node, %struct.init_node* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @output_init_element(i32 %134, i32 1, i32 %138, i64 %141, i32 0)
  br label %212

143:                                              ; preds = %117
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @tree_int_cst_lt(i64 %144, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load %struct.init_node*, %struct.init_node** %3, align 8
  %150 = getelementptr inbounds %struct.init_node, %struct.init_node* %149, i32 0, i32 3
  %151 = load %struct.init_node*, %struct.init_node** %150, align 8
  %152 = icmp ne %struct.init_node* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.init_node*, %struct.init_node** %3, align 8
  %155 = getelementptr inbounds %struct.init_node, %struct.init_node* %154, i32 0, i32 3
  %156 = load %struct.init_node*, %struct.init_node** %155, align 8
  store %struct.init_node* %156, %struct.init_node** %3, align 8
  br label %161

157:                                              ; preds = %148
  %158 = load %struct.init_node*, %struct.init_node** %3, align 8
  %159 = getelementptr inbounds %struct.init_node, %struct.init_node* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %4, align 8
  br label %215

161:                                              ; preds = %153
  br label %211

162:                                              ; preds = %143
  %163 = load %struct.init_node*, %struct.init_node** %3, align 8
  %164 = getelementptr inbounds %struct.init_node, %struct.init_node* %163, i32 0, i32 2
  %165 = load %struct.init_node*, %struct.init_node** %164, align 8
  %166 = icmp ne %struct.init_node* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load %struct.init_node*, %struct.init_node** %3, align 8
  %169 = getelementptr inbounds %struct.init_node, %struct.init_node* %168, i32 0, i32 2
  %170 = load %struct.init_node*, %struct.init_node** %169, align 8
  store %struct.init_node* %170, %struct.init_node** %3, align 8
  br label %210

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %187, %171
  %173 = load %struct.init_node*, %struct.init_node** %3, align 8
  %174 = getelementptr inbounds %struct.init_node, %struct.init_node* %173, i32 0, i32 1
  %175 = load %struct.init_node*, %struct.init_node** %174, align 8
  %176 = icmp ne %struct.init_node* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load %struct.init_node*, %struct.init_node** %3, align 8
  %179 = getelementptr inbounds %struct.init_node, %struct.init_node* %178, i32 0, i32 1
  %180 = load %struct.init_node*, %struct.init_node** %179, align 8
  %181 = getelementptr inbounds %struct.init_node, %struct.init_node* %180, i32 0, i32 2
  %182 = load %struct.init_node*, %struct.init_node** %181, align 8
  %183 = load %struct.init_node*, %struct.init_node** %3, align 8
  %184 = icmp eq %struct.init_node* %182, %183
  br label %185

185:                                              ; preds = %177, %172
  %186 = phi i1 [ false, %172 ], [ %184, %177 ]
  br i1 %186, label %187, label %191

187:                                              ; preds = %185
  %188 = load %struct.init_node*, %struct.init_node** %3, align 8
  %189 = getelementptr inbounds %struct.init_node, %struct.init_node* %188, i32 0, i32 1
  %190 = load %struct.init_node*, %struct.init_node** %189, align 8
  store %struct.init_node* %190, %struct.init_node** %3, align 8
  br label %172

191:                                              ; preds = %185
  %192 = load %struct.init_node*, %struct.init_node** %3, align 8
  %193 = getelementptr inbounds %struct.init_node, %struct.init_node* %192, i32 0, i32 1
  %194 = load %struct.init_node*, %struct.init_node** %193, align 8
  store %struct.init_node* %194, %struct.init_node** %3, align 8
  %195 = load %struct.init_node*, %struct.init_node** %3, align 8
  %196 = icmp ne %struct.init_node* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  %198 = load i64, i64* %5, align 8
  %199 = load %struct.init_node*, %struct.init_node** %3, align 8
  %200 = getelementptr inbounds %struct.init_node, %struct.init_node* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @bit_position(i64 %201)
  %203 = call i64 @tree_int_cst_lt(i64 %198, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load %struct.init_node*, %struct.init_node** %3, align 8
  %207 = getelementptr inbounds %struct.init_node, %struct.init_node* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %4, align 8
  br label %215

209:                                              ; preds = %197, %191
  br label %210

210:                                              ; preds = %209, %167
  br label %211

211:                                              ; preds = %210, %161
  br label %212

212:                                              ; preds = %211, %128
  br label %213

213:                                              ; preds = %212, %108
  br label %214

214:                                              ; preds = %213, %102
  br label %9

215:                                              ; preds = %205, %157, %116, %95, %48, %9
  %216 = load i32, i32* %2, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i64, i64* %4, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218, %215
  ret void

222:                                              ; preds = %218
  %223 = load i64, i64* @constructor_type, align 8
  %224 = call i64 @TREE_CODE(i64 %223)
  %225 = load i64, i64* @RECORD_TYPE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load i64, i64* @constructor_type, align 8
  %229 = call i64 @TREE_CODE(i64 %228)
  %230 = load i64, i64* @UNION_TYPE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %227, %222
  %233 = load i64, i64* %4, align 8
  store i64 %233, i64* @constructor_unfilled_fields, align 8
  br label %242

234:                                              ; preds = %227
  %235 = load i64, i64* @constructor_type, align 8
  %236 = call i64 @TREE_CODE(i64 %235)
  %237 = load i64, i64* @ARRAY_TYPE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load i64, i64* %4, align 8
  store i64 %240, i64* @constructor_unfilled_index, align 8
  br label %241

241:                                              ; preds = %239, %234
  br label %242

242:                                              ; preds = %241, %232
  br label %8
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @output_init_element(i32, i32, i32, i64, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @bit_position(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
