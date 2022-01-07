; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_neg.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_logical_neg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_BE = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_OP_BA = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @dt_cg_logical_neg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_logical_neg(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dt_cg_node(%struct.TYPE_5__* %16, i32* %17, i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DIF_INSTR_TST(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @DT_LBL_NONE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dt_cg_node_alloc(i32 %32, i32 %33)
  %35 = call i32 @dt_irlist_append(i32* %31, i32 %34)
  %36 = load i32, i32* @DIF_OP_BE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DIF_INSTR_BRANCH(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @DT_LBL_NONE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dt_cg_node_alloc(i32 %40, i32 %41)
  %43 = call i32 @dt_irlist_append(i32* %39, i32 %42)
  %44 = load i32, i32* @DIF_REG_R0, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @DIF_INSTR_MOV(i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @DT_LBL_NONE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dt_cg_node_alloc(i32 %50, i32 %51)
  %53 = call i32 @dt_irlist_append(i32* %49, i32 %52)
  %54 = load i32, i32* @DIF_OP_BA, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @DIF_INSTR_BRANCH(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @DT_LBL_NONE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dt_cg_node_alloc(i32 %58, i32 %59)
  %61 = call i32 @dt_irlist_append(i32* %57, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dt_cg_xsetx(i32* %62, i32* null, i32 %63, i32 %66, i32 1)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DIF_INSTR_NOP, align 4
  %71 = call i32 @dt_cg_node_alloc(i32 %69, i32 %70)
  %72 = call i32 @dt_irlist_append(i32* %68, i32 %71)
  ret void
}

declare dso_local i32 @dt_irlist_label(i32*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @DIF_INSTR_TST(i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @DIF_INSTR_BRANCH(i32, i32) #1

declare dso_local i32 @DIF_INSTR_MOV(i32, i32) #1

declare dso_local i32 @dt_cg_xsetx(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
