; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_xlate_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_xlate_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32* }

@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_INSTR_FLUSHTS = common dso_local global i32 0, align 4
@DIF_OP_PUSHTV = common dso_local global i32 0, align 4
@DIF_TYPE_CTF = common dso_local global i32 0, align 4
@DIF_REG_R0 = common dso_local global i32 0, align 4
@DIF_SUBR_ALLOCA = common dso_local global i32 0, align 4
@dt_cg_xlate_member = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32*)* @dt_cg_xlate_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_cg_xlate_expand(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @dt_regset_alloc(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ctf_type_size(i32 %19, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @dt_cg_setx(i32* %26, i32 %27, i64 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @DT_LBL_NONE, align 4
  %32 = load i32, i32* @DIF_INSTR_FLUSHTS, align 4
  %33 = call i32 @dt_cg_node_alloc(i32 %31, i32 %32)
  %34 = call i32 @dt_irlist_append(i32* %30, i32 %33)
  %35 = load i32, i32* @DIF_OP_PUSHTV, align 4
  %36 = load i32, i32* @DIF_TYPE_CTF, align 4
  %37 = load i32, i32* @DIF_REG_R0, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @DIF_INSTR_PUSHTS(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @DT_LBL_NONE, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dt_cg_node_alloc(i32 %41, i32 %42)
  %44 = call i32 @dt_irlist_append(i32* %40, i32 %43)
  %45 = load i32, i32* @DIF_SUBR_ALLOCA, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @DIF_INSTR_CALL(i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @DT_LBL_NONE, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dt_cg_node_alloc(i32 %49, i32 %50)
  %52 = call i32 @dt_irlist_append(i32* %48, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  store i32* %53, i32** %54, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32* %57, i32** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @dt_cg_xlate_member, align 4
  %76 = call i32 @ctf_member_iter(i32 %69, i32 %74, i32 %75, %struct.TYPE_7__* %9)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i64 @ctf_type_size(i32, i32) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i64) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @DIF_INSTR_PUSHTS(i32, i32, i32, i32) #1

declare dso_local i32 @DIF_INSTR_CALL(i32, i32) #1

declare dso_local i32 @ctf_member_iter(i32, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
