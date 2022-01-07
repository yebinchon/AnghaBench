; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_policydb.c_policydb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ebitmap, %struct.ebitmap, i64, %struct.TYPE_4__, i32, %struct.role_trans*, %struct.role_trans*, %struct.role_trans*, %struct.ocontext**, i32, %struct.role_trans*, %struct.role_trans*, %struct.role_trans*, %struct.role_trans*, %struct.role_trans**, %struct.TYPE_3__* }
%struct.ebitmap = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocontext = type { %struct.ocontext* }
%struct.role_trans = type { %struct.role_trans*, %struct.ocontext*, %struct.role_trans* }
%struct.TYPE_3__ = type { i32 }
%struct.genfs = type { %struct.genfs*, %struct.ocontext*, %struct.genfs* }
%struct.role_allow = type { %struct.role_allow*, %struct.ocontext*, %struct.role_allow* }

@SYM_NUM = common dso_local global i32 0, align 4
@destroy_f = common dso_local global i32* null, align 8
@OCON_NUM = common dso_local global i32 0, align 4
@OCON_FSUSE = common dso_local global i32 0, align 4
@range_tr_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @policydb_destroy(%struct.policydb* %0) #0 {
  %2 = alloca %struct.policydb*, align 8
  %3 = alloca %struct.ocontext*, align 8
  %4 = alloca %struct.ocontext*, align 8
  %5 = alloca %struct.genfs*, align 8
  %6 = alloca %struct.genfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.role_allow*, align 8
  %9 = alloca %struct.role_allow*, align 8
  %10 = alloca %struct.role_trans*, align 8
  %11 = alloca %struct.role_trans*, align 8
  %12 = alloca %struct.ebitmap*, align 8
  store %struct.policydb* %0, %struct.policydb** %2, align 8
  store %struct.role_allow* null, %struct.role_allow** %9, align 8
  store %struct.role_trans* null, %struct.role_trans** %11, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %42, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SYM_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = call i32 (...) @cond_resched()
  %19 = load %struct.policydb*, %struct.policydb** %2, align 8
  %20 = getelementptr inbounds %struct.policydb, %struct.policydb* %19, i32 0, i32 15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @destroy_f, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hashtab_map(i32 %26, i32 %31, i32* null)
  %33 = load %struct.policydb*, %struct.policydb** %2, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i32 0, i32 15
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hashtab_destroy(i32 %40)
  br label %42

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %13

45:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SYM_NUM, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.policydb*, %struct.policydb** %2, align 8
  %52 = getelementptr inbounds %struct.policydb, %struct.policydb* %51, i32 0, i32 14
  %53 = load %struct.role_trans**, %struct.role_trans*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.role_trans*, %struct.role_trans** %53, i64 %55
  %57 = load %struct.role_trans*, %struct.role_trans** %56, align 8
  %58 = call i32 @kfree(%struct.role_trans* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.policydb*, %struct.policydb** %2, align 8
  %64 = getelementptr inbounds %struct.policydb, %struct.policydb* %63, i32 0, i32 13
  %65 = load %struct.role_trans*, %struct.role_trans** %64, align 8
  %66 = call i32 @kfree(%struct.role_trans* %65)
  %67 = load %struct.policydb*, %struct.policydb** %2, align 8
  %68 = getelementptr inbounds %struct.policydb, %struct.policydb* %67, i32 0, i32 12
  %69 = load %struct.role_trans*, %struct.role_trans** %68, align 8
  %70 = call i32 @kfree(%struct.role_trans* %69)
  %71 = load %struct.policydb*, %struct.policydb** %2, align 8
  %72 = getelementptr inbounds %struct.policydb, %struct.policydb* %71, i32 0, i32 11
  %73 = load %struct.role_trans*, %struct.role_trans** %72, align 8
  %74 = call i32 @kfree(%struct.role_trans* %73)
  %75 = load %struct.policydb*, %struct.policydb** %2, align 8
  %76 = getelementptr inbounds %struct.policydb, %struct.policydb* %75, i32 0, i32 10
  %77 = load %struct.role_trans*, %struct.role_trans** %76, align 8
  %78 = call i32 @kfree(%struct.role_trans* %77)
  %79 = load %struct.policydb*, %struct.policydb** %2, align 8
  %80 = getelementptr inbounds %struct.policydb, %struct.policydb* %79, i32 0, i32 9
  %81 = call i32 @avtab_destroy(i32* %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %113, %62
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @OCON_NUM, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = call i32 (...) @cond_resched()
  %88 = load %struct.policydb*, %struct.policydb** %2, align 8
  %89 = getelementptr inbounds %struct.policydb, %struct.policydb* %88, i32 0, i32 8
  %90 = load %struct.ocontext**, %struct.ocontext*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %90, i64 %92
  %94 = load %struct.ocontext*, %struct.ocontext** %93, align 8
  store %struct.ocontext* %94, %struct.ocontext** %3, align 8
  br label %95

95:                                               ; preds = %98, %86
  %96 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %97 = icmp ne %struct.ocontext* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  store %struct.ocontext* %99, %struct.ocontext** %4, align 8
  %100 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %101 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %100, i32 0, i32 0
  %102 = load %struct.ocontext*, %struct.ocontext** %101, align 8
  store %struct.ocontext* %102, %struct.ocontext** %3, align 8
  %103 = load %struct.ocontext*, %struct.ocontext** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ocontext_destroy(%struct.ocontext* %103, i32 %104)
  br label %95

106:                                              ; preds = %95
  %107 = load %struct.policydb*, %struct.policydb** %2, align 8
  %108 = getelementptr inbounds %struct.policydb, %struct.policydb* %107, i32 0, i32 8
  %109 = load %struct.ocontext**, %struct.ocontext*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %109, i64 %111
  store %struct.ocontext* null, %struct.ocontext** %112, align 8
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %82

116:                                              ; preds = %82
  %117 = load %struct.policydb*, %struct.policydb** %2, align 8
  %118 = getelementptr inbounds %struct.policydb, %struct.policydb* %117, i32 0, i32 7
  %119 = load %struct.role_trans*, %struct.role_trans** %118, align 8
  %120 = bitcast %struct.role_trans* %119 to %struct.genfs*
  store %struct.genfs* %120, %struct.genfs** %5, align 8
  br label %121

121:                                              ; preds = %145, %116
  %122 = load %struct.genfs*, %struct.genfs** %5, align 8
  %123 = icmp ne %struct.genfs* %122, null
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = call i32 (...) @cond_resched()
  %126 = load %struct.genfs*, %struct.genfs** %5, align 8
  %127 = getelementptr inbounds %struct.genfs, %struct.genfs* %126, i32 0, i32 2
  %128 = load %struct.genfs*, %struct.genfs** %127, align 8
  %129 = bitcast %struct.genfs* %128 to %struct.role_trans*
  %130 = call i32 @kfree(%struct.role_trans* %129)
  %131 = load %struct.genfs*, %struct.genfs** %5, align 8
  %132 = getelementptr inbounds %struct.genfs, %struct.genfs* %131, i32 0, i32 1
  %133 = load %struct.ocontext*, %struct.ocontext** %132, align 8
  store %struct.ocontext* %133, %struct.ocontext** %3, align 8
  br label %134

134:                                              ; preds = %137, %124
  %135 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %136 = icmp ne %struct.ocontext* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  store %struct.ocontext* %138, %struct.ocontext** %4, align 8
  %139 = load %struct.ocontext*, %struct.ocontext** %3, align 8
  %140 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %139, i32 0, i32 0
  %141 = load %struct.ocontext*, %struct.ocontext** %140, align 8
  store %struct.ocontext* %141, %struct.ocontext** %3, align 8
  %142 = load %struct.ocontext*, %struct.ocontext** %4, align 8
  %143 = load i32, i32* @OCON_FSUSE, align 4
  %144 = call i32 @ocontext_destroy(%struct.ocontext* %142, i32 %143)
  br label %134

145:                                              ; preds = %134
  %146 = load %struct.genfs*, %struct.genfs** %5, align 8
  store %struct.genfs* %146, %struct.genfs** %6, align 8
  %147 = load %struct.genfs*, %struct.genfs** %5, align 8
  %148 = getelementptr inbounds %struct.genfs, %struct.genfs* %147, i32 0, i32 0
  %149 = load %struct.genfs*, %struct.genfs** %148, align 8
  store %struct.genfs* %149, %struct.genfs** %5, align 8
  %150 = load %struct.genfs*, %struct.genfs** %6, align 8
  %151 = bitcast %struct.genfs* %150 to %struct.role_trans*
  %152 = call i32 @kfree(%struct.role_trans* %151)
  br label %121

153:                                              ; preds = %121
  %154 = load %struct.policydb*, %struct.policydb** %2, align 8
  %155 = getelementptr inbounds %struct.policydb, %struct.policydb* %154, i32 0, i32 7
  store %struct.role_trans* null, %struct.role_trans** %155, align 8
  %156 = load %struct.policydb*, %struct.policydb** %2, align 8
  %157 = call i32 @cond_policydb_destroy(%struct.policydb* %156)
  %158 = load %struct.policydb*, %struct.policydb** %2, align 8
  %159 = getelementptr inbounds %struct.policydb, %struct.policydb* %158, i32 0, i32 6
  %160 = load %struct.role_trans*, %struct.role_trans** %159, align 8
  store %struct.role_trans* %160, %struct.role_trans** %10, align 8
  br label %161

161:                                              ; preds = %169, %153
  %162 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  %163 = icmp ne %struct.role_trans* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = call i32 (...) @cond_resched()
  %166 = load %struct.role_trans*, %struct.role_trans** %11, align 8
  %167 = call i32 @kfree(%struct.role_trans* %166)
  %168 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  store %struct.role_trans* %168, %struct.role_trans** %11, align 8
  br label %169

169:                                              ; preds = %164
  %170 = load %struct.role_trans*, %struct.role_trans** %10, align 8
  %171 = getelementptr inbounds %struct.role_trans, %struct.role_trans* %170, i32 0, i32 0
  %172 = load %struct.role_trans*, %struct.role_trans** %171, align 8
  store %struct.role_trans* %172, %struct.role_trans** %10, align 8
  br label %161

173:                                              ; preds = %161
  %174 = load %struct.role_trans*, %struct.role_trans** %11, align 8
  %175 = call i32 @kfree(%struct.role_trans* %174)
  %176 = load %struct.policydb*, %struct.policydb** %2, align 8
  %177 = getelementptr inbounds %struct.policydb, %struct.policydb* %176, i32 0, i32 5
  %178 = load %struct.role_trans*, %struct.role_trans** %177, align 8
  %179 = bitcast %struct.role_trans* %178 to %struct.role_allow*
  store %struct.role_allow* %179, %struct.role_allow** %8, align 8
  br label %180

180:                                              ; preds = %189, %173
  %181 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  %182 = icmp ne %struct.role_allow* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = call i32 (...) @cond_resched()
  %185 = load %struct.role_allow*, %struct.role_allow** %9, align 8
  %186 = bitcast %struct.role_allow* %185 to %struct.role_trans*
  %187 = call i32 @kfree(%struct.role_trans* %186)
  %188 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  store %struct.role_allow* %188, %struct.role_allow** %9, align 8
  br label %189

189:                                              ; preds = %183
  %190 = load %struct.role_allow*, %struct.role_allow** %8, align 8
  %191 = getelementptr inbounds %struct.role_allow, %struct.role_allow* %190, i32 0, i32 0
  %192 = load %struct.role_allow*, %struct.role_allow** %191, align 8
  store %struct.role_allow* %192, %struct.role_allow** %8, align 8
  br label %180

193:                                              ; preds = %180
  %194 = load %struct.role_allow*, %struct.role_allow** %9, align 8
  %195 = bitcast %struct.role_allow* %194 to %struct.role_trans*
  %196 = call i32 @kfree(%struct.role_trans* %195)
  %197 = load %struct.policydb*, %struct.policydb** %2, align 8
  %198 = getelementptr inbounds %struct.policydb, %struct.policydb* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @range_tr_destroy, align 4
  %201 = call i32 @hashtab_map(i32 %199, i32 %200, i32* null)
  %202 = load %struct.policydb*, %struct.policydb** %2, align 8
  %203 = getelementptr inbounds %struct.policydb, %struct.policydb* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @hashtab_destroy(i32 %204)
  %206 = load %struct.policydb*, %struct.policydb** %2, align 8
  %207 = getelementptr inbounds %struct.policydb, %struct.policydb* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %238

210:                                              ; preds = %193
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %230, %210
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.policydb*, %struct.policydb** %2, align 8
  %214 = getelementptr inbounds %struct.policydb, %struct.policydb* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %211
  %219 = load %struct.policydb*, %struct.policydb** %2, align 8
  %220 = getelementptr inbounds %struct.policydb, %struct.policydb* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call %struct.ebitmap* @flex_array_get(i64 %221, i32 %222)
  store %struct.ebitmap* %223, %struct.ebitmap** %12, align 8
  %224 = load %struct.ebitmap*, %struct.ebitmap** %12, align 8
  %225 = icmp ne %struct.ebitmap* %224, null
  br i1 %225, label %227, label %226

226:                                              ; preds = %218
  br label %230

227:                                              ; preds = %218
  %228 = load %struct.ebitmap*, %struct.ebitmap** %12, align 8
  %229 = call i32 @ebitmap_destroy(%struct.ebitmap* %228)
  br label %230

230:                                              ; preds = %227, %226
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %211

233:                                              ; preds = %211
  %234 = load %struct.policydb*, %struct.policydb** %2, align 8
  %235 = getelementptr inbounds %struct.policydb, %struct.policydb* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @flex_array_free(i64 %236)
  br label %238

238:                                              ; preds = %233, %193
  %239 = load %struct.policydb*, %struct.policydb** %2, align 8
  %240 = getelementptr inbounds %struct.policydb, %struct.policydb* %239, i32 0, i32 1
  %241 = call i32 @ebitmap_destroy(%struct.ebitmap* %240)
  %242 = load %struct.policydb*, %struct.policydb** %2, align 8
  %243 = getelementptr inbounds %struct.policydb, %struct.policydb* %242, i32 0, i32 0
  %244 = call i32 @ebitmap_destroy(%struct.ebitmap* %243)
  ret void
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @hashtab_map(i32, i32, i32*) #1

declare dso_local i32 @hashtab_destroy(i32) #1

declare dso_local i32 @kfree(%struct.role_trans*) #1

declare dso_local i32 @avtab_destroy(i32*) #1

declare dso_local i32 @ocontext_destroy(%struct.ocontext*, i32) #1

declare dso_local i32 @cond_policydb_destroy(%struct.policydb*) #1

declare dso_local %struct.ebitmap* @flex_array_get(i64, i32) #1

declare dso_local i32 @ebitmap_destroy(%struct.ebitmap*) #1

declare dso_local i32 @flex_array_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
