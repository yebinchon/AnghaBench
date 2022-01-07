; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_ternary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_ternary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_BE = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_OP_BA = common dso_local global i32 0, align 4
@DIF_INSTR_NOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*)* @dt_cg_ternary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_ternary_op(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @dt_irlist_label(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @dt_irlist_label(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @dt_cg_node(%struct.TYPE_9__* %17, i32* %18, i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @DIF_INSTR_TST(i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @DT_LBL_NONE, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %28, i8* %29)
  %31 = call i32 @dt_irlist_append(i32* %27, %struct.TYPE_8__* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dt_regset_free(i32* %32, i32 %37)
  %39 = load i32, i32* @DIF_OP_BE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @DIF_INSTR_BRANCH(i32 %39, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @DT_LBL_NONE, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %43, i8* %44)
  %46 = call i32 @dt_irlist_append(i32* %42, %struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @dt_cg_node(%struct.TYPE_9__* %49, i32* %50, i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DIF_REG_R0, align 4
  %59 = call i8* @DIF_INSTR_MOV(i32 %57, i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i32, i32* @DT_LBL_NONE, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %60, i8* %61)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %10, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = call i32 @dt_irlist_append(i32* %63, %struct.TYPE_8__* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dt_regset_free(i32* %66, i32 %71)
  %73 = load i32, i32* @DIF_OP_BA, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @DIF_INSTR_BRANCH(i32 %73, i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @DT_LBL_NONE, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %77, i8* %78)
  %80 = call i32 @dt_irlist_append(i32* %76, %struct.TYPE_8__* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i8*, i8** @DIF_INSTR_NOP, align 8
  %84 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %82, i8* %83)
  %85 = call i32 @dt_irlist_append(i32* %81, %struct.TYPE_8__* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @dt_cg_node(%struct.TYPE_9__* %88, i32* %89, i32* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @DIF_INSTR_MOV(i32 %103, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** @DIF_INSTR_NOP, align 8
  %113 = call %struct.TYPE_8__* @dt_cg_node_alloc(i32 %111, i8* %112)
  %114 = call i32 @dt_irlist_append(i32* %110, %struct.TYPE_8__* %113)
  ret void
}

declare dso_local i32 @dt_irlist_label(i32*) #1

declare dso_local i32 @dt_cg_node(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i8* @DIF_INSTR_TST(i32) #1

declare dso_local i32 @dt_irlist_append(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @dt_cg_node_alloc(i32, i8*) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

declare dso_local i8* @DIF_INSTR_BRANCH(i32, i32) #1

declare dso_local i8* @DIF_INSTR_MOV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
