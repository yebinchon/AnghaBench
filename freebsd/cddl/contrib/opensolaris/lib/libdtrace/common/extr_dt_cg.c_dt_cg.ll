; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_19__*, i32, i32*, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@EDT_NOMEM = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_20__* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@DT_IDENT_XLPTR = common dso_local global i32 0, align 4
@D_CG_DYN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"expression cannot evaluate to result of a translated pointer\0A\00", align 1
@DT_NODE_MEMBER = common dso_local global i64 0, align 8
@DT_IDFLG_CGREG = common dso_local global i32 0, align 4
@DT_IDENT_XLSOU = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_cg(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @dt_regset_create(i32 %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EDT_NOMEM, align 4
  %29 = call i32 @longjmp(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %13, %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dt_regset_reset(i32* %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dt_regset_alloc(i32* %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dt_inttab_destroy(i32* %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** @yypcb, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @dt_inttab_create(i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EDT_NOMEM, align 4
  %61 = call i32 @longjmp(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @dt_strtab_destroy(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @BUFSIZ, align 4
  %74 = call i32* @dt_strtab_create(i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = icmp eq i32* %74, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @EDT_NOMEM, align 4
  %83 = call i32 @longjmp(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = call i32 @dt_irlist_destroy(i32* %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = call i32 @dt_irlist_create(i32* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = icmp eq %struct.TYPE_19__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  store %struct.TYPE_19__* %97, %struct.TYPE_19__** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = load i32, i32* @DT_IDENT_XLPTR, align 4
  %102 = call i32* @dt_node_resolve(%struct.TYPE_19__* %100, i32 %101)
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %84
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %106 = load i32, i32* @D_CG_DYN, align 4
  %107 = call i32 @dnerror(%struct.TYPE_19__* %105, i32 %106, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %84
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DT_NODE_MEMBER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %136

114:                                              ; preds = %108
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %6, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  store %struct.TYPE_19__* %120, %struct.TYPE_19__** %4, align 8
  %121 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @dt_regset_alloc(i32* %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %114, %108
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @dt_cg_node(%struct.TYPE_19__* %137, i32* %139, i32* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = load i32, i32* @DT_IDENT_XLSOU, align 4
  %146 = call i32* @dt_node_resolve(%struct.TYPE_19__* %144, i32 %145)
  store i32* %146, i32** %7, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %167

148:                                              ; preds = %136
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @dt_cg_xlate_expand(%struct.TYPE_19__* %149, i32* %150, i32* %152, i32* %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dt_regset_free(i32* %159, i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %148, %136
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @DIF_INSTR_RET(i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dt_regset_free(i32* %174, i32 %177)
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* @DT_LBL_NONE, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @dt_cg_node_alloc(i32 %181, i32 %182)
  %184 = call i32 @dt_irlist_append(i32* %180, i32 %183)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @DT_NODE_MEMBER, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %212

190:                                              ; preds = %167
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @dt_regset_free(i32* %193, i32 %198)
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 4
  %204 = load i32, i32* @DT_IDFLG_CGREG, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %205
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %190, %167
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @dt_regset_free(i32* %215, i32 0)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @dt_regset_assert_free(i32* %219)
  ret void
}

declare dso_local i32* @dt_regset_create(i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @dt_regset_reset(i32*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_inttab_destroy(i32*) #1

declare dso_local i32* @dt_inttab_create(i32) #1

declare dso_local i32 @dt_strtab_destroy(i32*) #1

declare dso_local i32* @dt_strtab_create(i32) #1

declare dso_local i32 @dt_irlist_destroy(i32*) #1

declare dso_local i32 @dt_irlist_create(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @dt_node_resolve(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dnerror(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @dt_cg_xlate_expand(%struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @DIF_INSTR_RET(i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_assert_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
