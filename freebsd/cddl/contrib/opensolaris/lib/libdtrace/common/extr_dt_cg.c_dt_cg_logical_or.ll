; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_or.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_BNE = common dso_local global i32 0, align 4
@DIF_OP_BE = common dso_local global i32 0, align 4
@DIF_OP_BA = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @dt_cg_logical_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_logical_or(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @dt_irlist_label(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @dt_irlist_label(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @dt_irlist_label(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @dt_cg_node(%struct.TYPE_5__* %19, i32* %20, i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DIF_INSTR_TST(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @DT_LBL_NONE, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @dt_cg_node_alloc(i32 %30, i32 %31)
  %33 = call i32 @dt_irlist_append(i32* %29, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dt_regset_free(i32* %34, i32 %39)
  %41 = load i32, i32* @DIF_OP_BNE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DIF_INSTR_BRANCH(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @DT_LBL_NONE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dt_cg_node_alloc(i32 %45, i32 %46)
  %48 = call i32 @dt_irlist_append(i32* %44, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @dt_cg_node(%struct.TYPE_5__* %51, i32* %52, i32* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DIF_INSTR_TST(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @DT_LBL_NONE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @dt_cg_node_alloc(i32 %62, i32 %63)
  %65 = call i32 @dt_irlist_append(i32* %61, i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @DIF_OP_BE, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @DIF_INSTR_BRANCH(i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @DT_LBL_NONE, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @dt_cg_node_alloc(i32 %77, i32 %78)
  %80 = call i32 @dt_irlist_append(i32* %76, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dt_cg_xsetx(i32* %81, i32* null, i32 %82, i32 %85, i32 1)
  %87 = load i32, i32* @DIF_OP_BA, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @DIF_INSTR_BRANCH(i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @DT_LBL_NONE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @dt_cg_node_alloc(i32 %91, i32 %92)
  %94 = call i32 @dt_irlist_append(i32* %90, i32 %93)
  %95 = load i32, i32* @DIF_REG_R0, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @DIF_INSTR_MOV(i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dt_cg_node_alloc(i32 %101, i32 %102)
  %104 = call i32 @dt_irlist_append(i32* %100, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @DIF_INSTR_NOP, align 4
  %108 = call i32 @dt_cg_node_alloc(i32 %106, i32 %107)
  %109 = call i32 @dt_irlist_append(i32* %105, i32 %108)
  ret void
}

declare dso_local i32 @dt_irlist_label(i32*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @DIF_INSTR_TST(i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @DIF_INSTR_BRANCH(i32, i32) #1

declare dso_local i32 @dt_cg_xsetx(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @DIF_INSTR_MOV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
