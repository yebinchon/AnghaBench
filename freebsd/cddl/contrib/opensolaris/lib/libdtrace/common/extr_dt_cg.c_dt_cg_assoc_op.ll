; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_assoc_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_assoc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@DT_NODE_VAR = common dso_local global i64 0, align 8
@DT_IDFLG_LOCAL = common dso_local global i32 0, align 4
@DT_IDFLG_TLS = common dso_local global i32 0, align 4
@DIF_OP_LDTAA = common dso_local global i64 0, align 8
@DIF_OP_LDGAA = common dso_local global i64 0, align 8
@DT_IDFLG_DIFR = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i64 0, align 8
@DT_NF_REF = common dso_local global i32 0, align 4
@DIF_OP_STTAA = common dso_local global i64 0, align 8
@DIF_OP_STGAA = common dso_local global i64 0, align 8
@DIF_OP_BNE = common dso_local global i32 0, align 4
@DT_IDFLG_DIFW = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @dt_cg_assoc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_assoc_op(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DT_NODE_VAR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DT_IDFLG_LOCAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @dt_cg_arglist(%struct.TYPE_6__* %37, i32* %40, i32* %41, i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @dt_regset_alloc(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DT_IDFLG_TLS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i64, i64* @DIF_OP_LDTAA, align 8
  store i64 %57, i64* %8, align 8
  br label %60

58:                                               ; preds = %3
  %59 = load i64, i64* @DIF_OP_LDGAA, align 8
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, i32* @DT_IDFLG_DIFR, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DIF_INSTR_LDV(i64 %68, i32 %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* @DT_LBL_NONE, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dt_cg_node_alloc(i64 %79, i32 %80)
  %82 = call i32 @dt_irlist_append(i32* %78, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DT_NF_REF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %179

89:                                               ; preds = %60
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @DIF_OP_LDTAA, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i64, i64* @DIF_OP_STTAA, align 8
  br label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @DIF_OP_STGAA, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  store i64 %98, i64* %9, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i64 @dt_irlist_label(i32* %99)
  store i64 %100, i64* %10, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DIF_INSTR_TST(i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* @DT_LBL_NONE, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dt_cg_node_alloc(i64 %106, i32 %107)
  %109 = call i32 @dt_irlist_append(i32* %105, i32 %108)
  %110 = load i32, i32* @DIF_OP_BNE, align 4
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @DIF_INSTR_BRANCH(i32 %110, i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = load i64, i64* @DT_LBL_NONE, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dt_cg_node_alloc(i64 %114, i32 %115)
  %117 = call i32 @dt_irlist_append(i32* %113, i32 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = call i32 @dt_node_type_size(%struct.TYPE_5__* %122)
  %124 = call i32 @dt_cg_setx(i32* %118, i32 %121, i32 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @DIF_INSTR_ALLOCS(i32 %127, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i64, i64* @DT_LBL_NONE, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dt_cg_node_alloc(i64 %133, i32 %134)
  %136 = call i32 @dt_irlist_append(i32* %132, i32 %135)
  %137 = load i32, i32* @DT_IDFLG_DIFW, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %137
  store i32 %143, i32* %141, align 4
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @DIF_INSTR_STV(i64 %144, i32 %149, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i64, i64* @DT_LBL_NONE, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dt_cg_node_alloc(i64 %155, i32 %156)
  %158 = call i32 @dt_irlist_append(i32* %154, i32 %157)
  %159 = load i64, i64* %8, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DIF_INSTR_LDV(i64 %159, i32 %164, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = load i64, i64* @DT_LBL_NONE, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @dt_cg_node_alloc(i64 %170, i32 %171)
  %173 = call i32 @dt_irlist_append(i32* %169, i32 %172)
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i32, i32* @DIF_INSTR_NOP, align 4
  %177 = call i32 @dt_cg_node_alloc(i64 %175, i32 %176)
  %178 = call i32 @dt_irlist_append(i32* %174, i32 %177)
  br label %179

179:                                              ; preds = %97, %60
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dt_cg_arglist(%struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @DIF_INSTR_LDV(i64, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i64, i32) #1

declare dso_local i64 @dt_irlist_label(i32*) #1

declare dso_local i32 @DIF_INSTR_TST(i32) #1

declare dso_local i32 @DIF_INSTR_BRANCH(i32, i64) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @dt_node_type_size(%struct.TYPE_5__*) #1

declare dso_local i32 @DIF_INSTR_ALLOCS(i32, i32) #1

declare dso_local i32 @DIF_INSTR_STV(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
