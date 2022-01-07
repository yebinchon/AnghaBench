; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_BE = common dso_local global i32 0, align 4
@DIF_OP_BA = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @dt_cg_logical_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_logical_and(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @dt_irlist_label(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @dt_irlist_label(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dt_cg_node(%struct.TYPE_5__* %16, i32* %17, i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DIF_INSTR_TST(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @DT_LBL_NONE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dt_cg_node_alloc(i32 %27, i32 %28)
  %30 = call i32 @dt_irlist_append(i32* %26, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dt_regset_free(i32* %31, i32 %36)
  %38 = load i32, i32* @DIF_OP_BE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @DIF_INSTR_BRANCH(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @DT_LBL_NONE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dt_cg_node_alloc(i32 %42, i32 %43)
  %45 = call i32 @dt_irlist_append(i32* %41, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @dt_cg_node(%struct.TYPE_5__* %48, i32* %49, i32* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DIF_INSTR_TST(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @DT_LBL_NONE, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dt_cg_node_alloc(i32 %59, i32 %60)
  %62 = call i32 @dt_irlist_append(i32* %58, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @DIF_OP_BE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @DIF_INSTR_BRANCH(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @DT_LBL_NONE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dt_cg_node_alloc(i32 %74, i32 %75)
  %77 = call i32 @dt_irlist_append(i32* %73, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dt_cg_setx(i32* %78, i32 %81, i32 1)
  %83 = load i32, i32* @DIF_OP_BA, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @DIF_INSTR_BRANCH(i32 %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @DT_LBL_NONE, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @dt_cg_node_alloc(i32 %87, i32 %88)
  %90 = call i32 @dt_irlist_append(i32* %86, i32 %89)
  %91 = load i32, i32* @DIF_REG_R0, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @DIF_INSTR_MOV(i32 %91, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @dt_cg_node_alloc(i32 %97, i32 %98)
  %100 = call i32 @dt_irlist_append(i32* %96, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @DIF_INSTR_NOP, align 4
  %104 = call i32 @dt_cg_node_alloc(i32 %102, i32 %103)
  %105 = call i32 @dt_irlist_append(i32* %101, i32 %104)
  ret void
}

declare dso_local i32 @dt_irlist_label(i32*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @DIF_INSTR_TST(i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @DIF_INSTR_BRANCH(i32, i32) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_MOV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
