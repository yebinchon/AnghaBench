; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_field_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_lookup_field_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@TYPENAME_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@USING_DECL = common dso_local global i64 0, align 8
@vptr_identifier = common dso_local global i64 0, align 8
@n_calls_lookup_field_1 = common dso_local global i32 0, align 4
@n_fields_searched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_field_1(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @BOUND_TEMPLATE_TEMPLATE_PARM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @TYPENAME_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18, %3
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %4, align 8
  br label %236

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TYPE_NAME(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %156

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @TYPE_NAME(i64 %35)
  %37 = call i64 @DECL_LANG_SPECIFIC(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %156

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @TYPE_NAME(i64 %40)
  %42 = call %struct.TYPE_2__* @DECL_SORTED_FIELDS(i64 %41)
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %156

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TYPE_NAME(i64 %45)
  %47 = call %struct.TYPE_2__* @DECL_SORTED_FIELDS(i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64* %50, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @TYPE_NAME(i64 %51)
  %53 = call %struct.TYPE_2__* @DECL_SORTED_FIELDS(i64 %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %153, %44
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %154

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %12, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @DECL_NAME(i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %11, align 4
  br label %153

75:                                               ; preds = %60
  %76 = load i64*, i64** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @DECL_NAME(i64 %80)
  %82 = load i64, i64* %6, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %152

87:                                               ; preds = %75
  %88 = load i64, i64* @NULL_TREE, align 8
  store i64 %88, i64* %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i64*, i64** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i64*, i64** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @DECL_NAME(i64 %108)
  %110 = load i64, i64* %6, align 8
  %111 = icmp eq i64 %109, %110
  br label %112

112:                                              ; preds = %103, %99
  %113 = phi i1 [ false, %99 ], [ %111, %103 ]
  br i1 %113, label %92, label %114

114:                                              ; preds = %112
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @TREE_CODE(i64 %115)
  %117 = load i64, i64* @TYPE_DECL, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i64, i64* %8, align 8
  %121 = call i64 @DECL_CLASS_TEMPLATE_P(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* @NULL_TREE, align 8
  store i64 %124, i64* %8, align 8
  br label %125

125:                                              ; preds = %123, %119, %114
  br label %150

126:                                              ; preds = %87
  br label %127

127:                                              ; preds = %147, %126
  %128 = load i64*, i64** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i64*, i64** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @DECL_NAME(i64 %143)
  %145 = load i64, i64* %6, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %138, %134
  %148 = phi i1 [ false, %134 ], [ %146, %138 ]
  br i1 %148, label %127, label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %125
  %151 = load i64, i64* %8, align 8
  store i64 %151, i64* %4, align 8
  br label %236

152:                                              ; preds = %84
  br label %153

153:                                              ; preds = %152, %73
  br label %56

154:                                              ; preds = %56
  %155 = load i64, i64* @NULL_TREE, align 8
  store i64 %155, i64* %4, align 8
  br label %236

156:                                              ; preds = %39, %34, %30
  %157 = load i64, i64* %5, align 8
  %158 = call i64 @TYPE_FIELDS(i64 %157)
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i64 @TYPE_FIELDS(i64 %159)
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %219, %156
  %162 = load i64, i64* %8, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %161
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @DECL_P(i64 %165)
  %167 = call i32 @gcc_assert(i32 %166)
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @DECL_NAME(i64 %168)
  %170 = load i64, i64* @NULL_TREE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %164
  %173 = load i64, i64* %8, align 8
  %174 = call i64 @TREE_TYPE(i64 %173)
  %175 = call i64 @ANON_AGGR_TYPE_P(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load i64, i64* %8, align 8
  %179 = call i64 @TREE_TYPE(i64 %178)
  %180 = load i64, i64* %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @lookup_field_1(i64 %179, i64 %180, i32 %181)
  store i64 %182, i64* %13, align 8
  %183 = load i64, i64* %13, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i64, i64* %13, align 8
  store i64 %186, i64* %4, align 8
  br label %236

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187, %172, %164
  %189 = load i64, i64* %8, align 8
  %190 = call i64 @TREE_CODE(i64 %189)
  %191 = load i64, i64* @USING_DECL, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i64, i64* %8, align 8
  %195 = call i32 @DECL_DEPENDENT_P(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  br label %219

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198, %188
  %200 = load i64, i64* %8, align 8
  %201 = call i64 @DECL_NAME(i64 %200)
  %202 = load i64, i64* %6, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i64, i64* %8, align 8
  %209 = call i64 @TREE_CODE(i64 %208)
  %210 = load i64, i64* @TYPE_DECL, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %216, label %212

212:                                              ; preds = %207
  %213 = load i64, i64* %8, align 8
  %214 = call i64 @DECL_CLASS_TEMPLATE_P(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212, %207, %204
  %217 = load i64, i64* %8, align 8
  store i64 %217, i64* %4, align 8
  br label %236

218:                                              ; preds = %212, %199
  br label %219

219:                                              ; preds = %218, %197
  %220 = load i64, i64* %8, align 8
  %221 = call i64 @TREE_CHAIN(i64 %220)
  store i64 %221, i64* %8, align 8
  br label %161

222:                                              ; preds = %161
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* @vptr_identifier, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %222
  %227 = load i64, i64* %5, align 8
  %228 = call i64 @TYPE_POLYMORPHIC_P(i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @TYPE_VFIELD(i64 %231)
  store i64 %232, i64* %4, align 8
  br label %236

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233, %222
  %235 = load i64, i64* @NULL_TREE, align 8
  store i64 %235, i64* %4, align 8
  br label %236

236:                                              ; preds = %234, %230, %216, %185, %154, %150, %28
  %237 = load i64, i64* %4, align 8
  ret i64 %237
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local %struct.TYPE_2__* @DECL_SORTED_FIELDS(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @DECL_CLASS_TEMPLATE_P(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @DECL_DEPENDENT_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_POLYMORPHIC_P(i64) #1

declare dso_local i64 @TYPE_VFIELD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
