; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_compare_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_compare_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DIF_OP_SCMP = common dso_local global i32 0, align 4
@DIF_OP_CMP = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_OP_BA = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32)* @dt_cg_compare_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_compare_op(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @dt_irlist_label(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @dt_irlist_label(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @dt_cg_node(%struct.TYPE_6__* %19, i32* %20, i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @dt_cg_node(%struct.TYPE_6__* %25, i32* %26, i32* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i64 @dt_node_is_string(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i64 @dt_node_is_string(%struct.TYPE_6__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %4
  %41 = load i32, i32* @DIF_OP_SCMP, align 4
  store i32 %41, i32* %12, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @DIF_OP_CMP, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DIF_INSTR_CMP(i32 %45, i32 %50, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @DT_LBL_NONE, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dt_cg_node_alloc(i32 %58, i32 %59)
  %61 = call i32 @dt_irlist_append(i32* %57, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dt_regset_free(i32* %62, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @DIF_INSTR_BRANCH(i32 %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @DT_LBL_NONE, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @dt_cg_node_alloc(i32 %80, i32 %81)
  %83 = call i32 @dt_irlist_append(i32* %79, i32 %82)
  %84 = load i32, i32* @DIF_REG_R0, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @DIF_INSTR_MOV(i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @DT_LBL_NONE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @dt_cg_node_alloc(i32 %90, i32 %91)
  %93 = call i32 @dt_irlist_append(i32* %89, i32 %92)
  %94 = load i32, i32* @DIF_OP_BA, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @DIF_INSTR_BRANCH(i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @DT_LBL_NONE, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @dt_cg_node_alloc(i32 %98, i32 %99)
  %101 = call i32 @dt_irlist_append(i32* %97, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dt_cg_xsetx(i32* %102, i32* null, i32 %103, i32 %106, i32 1)
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @DIF_INSTR_NOP, align 4
  %111 = call i32 @dt_cg_node_alloc(i32 %109, i32 %110)
  %112 = call i32 @dt_irlist_append(i32* %108, i32 %111)
  ret void
}

declare dso_local i32 @dt_irlist_label(i32*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @dt_node_is_string(%struct.TYPE_6__*) #1

declare dso_local i32 @DIF_INSTR_CMP(i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i32 @DIF_INSTR_BRANCH(i32, i32) #1

declare dso_local i32 @DIF_INSTR_MOV(i32, i32) #1

declare dso_local i32 @dt_cg_xsetx(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
