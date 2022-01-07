; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_use_local_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_analyze_use_local_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_register_properties = type { i32, i64, i64, i64, %struct.see_occr*, %struct.see_occr*, i32 }
%struct.see_occr = type { i32, %struct.see_occr*, i8* }
%struct.see_ref_s = type { i8* }
%struct.see_pre_extension_expr = type { i32, i64, i64, i64, %struct.see_occr*, %struct.see_occr*, i32 }

@USE_EXTENSION = common dso_local global i32 0, align 4
@see_bb_hash_ar = common dso_local global %struct.see_register_properties** null, align 8
@INSERT = common dso_local global i32 0, align 4
@df = common dso_local global i32 0, align 4
@antloc = common dso_local global i32* null, align 8
@comp = common dso_local global i32* null, align 8
@ae_kill = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @see_analyze_use_local_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_analyze_use_local_prop(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.see_ref_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.see_pre_extension_expr*, align 8
  %10 = alloca %struct.see_register_properties*, align 8
  %11 = alloca %struct.see_register_properties**, align 8
  %12 = alloca %struct.see_register_properties, align 8
  %13 = alloca %struct.see_occr*, align 8
  %14 = alloca %struct.see_occr*, align 8
  %15 = alloca %struct.see_register_properties*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.see_ref_s*
  store %struct.see_ref_s* %19, %struct.see_ref_s** %5, align 8
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.see_ref_s*, %struct.see_ref_s** %5, align 8
  %23 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @see_get_extension_reg(i8* %25, i32 1)
  store i8* %26, i8** %8, align 8
  store %struct.see_occr* null, %struct.see_occr** %13, align 8
  store %struct.see_occr* null, %struct.see_occr** %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @BLOCK_NUM(i8* %27)
  store i32 %28, i32* %17, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @USE_EXTENSION, align 4
  %31 = call %struct.see_register_properties* @see_seek_pre_extension_expr(i8* %29, i32 %30)
  %32 = bitcast %struct.see_register_properties* %31 to %struct.see_pre_extension_expr*
  store %struct.see_pre_extension_expr* %32, %struct.see_pre_extension_expr** %9, align 8
  %33 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %34 = bitcast %struct.see_pre_extension_expr* %33 to %struct.see_register_properties*
  %35 = call i32 @gcc_assert(%struct.see_register_properties* %34)
  %36 = load %struct.see_register_properties**, %struct.see_register_properties*** @see_bb_hash_ar, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.see_register_properties*, %struct.see_register_properties** %36, i64 %38
  %40 = load %struct.see_register_properties*, %struct.see_register_properties** %39, align 8
  store %struct.see_register_properties* %40, %struct.see_register_properties** %15, align 8
  %41 = load %struct.see_register_properties*, %struct.see_register_properties** %15, align 8
  %42 = call i32 @gcc_assert(%struct.see_register_properties* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @REGNO(i8* %43)
  %45 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %12, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = load %struct.see_register_properties*, %struct.see_register_properties** %15, align 8
  %47 = load i32, i32* @INSERT, align 4
  %48 = call i64 @htab_find_slot(%struct.see_register_properties* %46, %struct.see_register_properties* %12, i32 %47)
  %49 = inttoptr i64 %48 to %struct.see_register_properties**
  store %struct.see_register_properties** %49, %struct.see_register_properties*** %11, align 8
  %50 = load %struct.see_register_properties**, %struct.see_register_properties*** %11, align 8
  %51 = load %struct.see_register_properties*, %struct.see_register_properties** %50, align 8
  store %struct.see_register_properties* %51, %struct.see_register_properties** %10, align 8
  %52 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %53 = call i32 @gcc_assert(%struct.see_register_properties* %52)
  %54 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %55 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %16, align 4
  %57 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %58 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @df, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @DF_INSN_LUID(i32 %60, i8* %61)
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %151

64:                                               ; preds = %2
  %65 = load i32*, i32** @antloc, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @SET_BIT(i32 %69, i32 %70)
  %72 = call %struct.see_occr* @xmalloc(i32 24)
  store %struct.see_occr* %72, %struct.see_occr** %13, align 8
  %73 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %74 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %73, i32 0, i32 1
  store %struct.see_occr* null, %struct.see_occr** %74, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %77 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %80 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %82 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %81, i32 0, i32 5
  %83 = load %struct.see_occr*, %struct.see_occr** %82, align 8
  store %struct.see_occr* %83, %struct.see_occr** %14, align 8
  %84 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %85 = icmp ne %struct.see_occr* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %64
  %87 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %88 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %89 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %88, i32 0, i32 5
  store %struct.see_occr* %87, %struct.see_occr** %89, align 8
  br label %104

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %96, %90
  %92 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %93 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %92, i32 0, i32 1
  %94 = load %struct.see_occr*, %struct.see_occr** %93, align 8
  %95 = icmp ne %struct.see_occr* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %98 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %97, i32 0, i32 1
  %99 = load %struct.see_occr*, %struct.see_occr** %98, align 8
  store %struct.see_occr* %99, %struct.see_occr** %14, align 8
  br label %91

100:                                              ; preds = %91
  %101 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %102 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %103 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %102, i32 0, i32 1
  store %struct.see_occr* %101, %struct.see_occr** %103, align 8
  br label %104

104:                                              ; preds = %100, %86
  %105 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %106 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %104
  %110 = load i32*, i32** @comp, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @SET_BIT(i32 %114, i32 %115)
  %117 = call %struct.see_occr* @xmalloc(i32 24)
  store %struct.see_occr* %117, %struct.see_occr** %13, align 8
  %118 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %119 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %118, i32 0, i32 1
  store %struct.see_occr* null, %struct.see_occr** %119, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %122 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %125 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %127 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %126, i32 0, i32 4
  %128 = load %struct.see_occr*, %struct.see_occr** %127, align 8
  store %struct.see_occr* %128, %struct.see_occr** %14, align 8
  %129 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %130 = icmp ne %struct.see_occr* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %109
  %132 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %133 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %134 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %133, i32 0, i32 4
  store %struct.see_occr* %132, %struct.see_occr** %134, align 8
  br label %149

135:                                              ; preds = %109
  br label %136

136:                                              ; preds = %141, %135
  %137 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %138 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %137, i32 0, i32 1
  %139 = load %struct.see_occr*, %struct.see_occr** %138, align 8
  %140 = icmp ne %struct.see_occr* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %143 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %142, i32 0, i32 1
  %144 = load %struct.see_occr*, %struct.see_occr** %143, align 8
  store %struct.see_occr* %144, %struct.see_occr** %14, align 8
  br label %136

145:                                              ; preds = %136
  %146 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %147 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %148 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %147, i32 0, i32 1
  store %struct.see_occr* %146, %struct.see_occr** %148, align 8
  br label %149

149:                                              ; preds = %145, %131
  br label %150

150:                                              ; preds = %149, %104
  br label %208

151:                                              ; preds = %2
  %152 = load %struct.see_register_properties*, %struct.see_register_properties** %10, align 8
  %153 = getelementptr inbounds %struct.see_register_properties, %struct.see_register_properties* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @df, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = call i64 @DF_INSN_LUID(i32 %155, i8* %156)
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %207

159:                                              ; preds = %151
  %160 = load i32*, i32** @comp, align 8
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @SET_BIT(i32 %164, i32 %165)
  %167 = load i32*, i32** @ae_kill, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @RESET_BIT(i32 %171, i32 %172)
  %174 = call %struct.see_occr* @xmalloc(i32 24)
  store %struct.see_occr* %174, %struct.see_occr** %13, align 8
  %175 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %176 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %175, i32 0, i32 1
  store %struct.see_occr* null, %struct.see_occr** %176, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %179 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %182 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %184 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %183, i32 0, i32 4
  %185 = load %struct.see_occr*, %struct.see_occr** %184, align 8
  store %struct.see_occr* %185, %struct.see_occr** %14, align 8
  %186 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %187 = icmp ne %struct.see_occr* %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %159
  %189 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %190 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %9, align 8
  %191 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %190, i32 0, i32 4
  store %struct.see_occr* %189, %struct.see_occr** %191, align 8
  br label %206

192:                                              ; preds = %159
  br label %193

193:                                              ; preds = %198, %192
  %194 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %195 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %194, i32 0, i32 1
  %196 = load %struct.see_occr*, %struct.see_occr** %195, align 8
  %197 = icmp ne %struct.see_occr* %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %200 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %199, i32 0, i32 1
  %201 = load %struct.see_occr*, %struct.see_occr** %200, align 8
  store %struct.see_occr* %201, %struct.see_occr** %14, align 8
  br label %193

202:                                              ; preds = %193
  %203 = load %struct.see_occr*, %struct.see_occr** %13, align 8
  %204 = load %struct.see_occr*, %struct.see_occr** %14, align 8
  %205 = getelementptr inbounds %struct.see_occr, %struct.see_occr* %204, i32 0, i32 1
  store %struct.see_occr* %203, %struct.see_occr** %205, align 8
  br label %206

206:                                              ; preds = %202, %188
  br label %207

207:                                              ; preds = %206, %151
  br label %208

208:                                              ; preds = %207, %150
  ret i32 1
}

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local i32 @BLOCK_NUM(i8*) #1

declare dso_local %struct.see_register_properties* @see_seek_pre_extension_expr(i8*, i32) #1

declare dso_local i32 @gcc_assert(%struct.see_register_properties*) #1

declare dso_local i32 @REGNO(i8*) #1

declare dso_local i64 @htab_find_slot(%struct.see_register_properties*, %struct.see_register_properties*, i32) #1

declare dso_local i64 @DF_INSN_LUID(i32, i8*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local %struct.see_occr* @xmalloc(i32) #1

declare dso_local i32 @RESET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
