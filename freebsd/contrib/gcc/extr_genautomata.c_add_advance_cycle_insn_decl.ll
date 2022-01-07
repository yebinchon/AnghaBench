; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_add_advance_cycle_insn_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_add_advance_cycle_insn_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i8*, i32, i32* }

@advance_cycle_insn_decl = common dso_local global %struct.TYPE_7__* null, align 8
@dm_insn_reserv = common dso_local global i32 0, align 4
@no_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"$advance_cycle\00", align 1
@description = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_advance_cycle_insn_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_advance_cycle_insn_decl() #0 {
  %1 = call %struct.TYPE_7__* @create_node(i32 4)
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %2 = load i32, i32* @dm_insn_reserv, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  store i32 %2, i32* %4, align 4
  %5 = load i32, i32* @no_pos, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %9 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_7__* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %12 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_7__* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %18 = call %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_7__* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @advance_cycle_insn_decl, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 %26
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @create_node(i32) #1

declare dso_local %struct.TYPE_8__* @DECL_INSN_RESERV(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
