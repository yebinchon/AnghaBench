; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_create_alt_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_create_alt_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, %struct.insn_reserv_decl*, %struct.TYPE_6__* }
%struct.insn_reserv_decl = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@curr_ainsn = common dso_local global %struct.TYPE_6__* null, align 8
@advance_cycle_insn_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @create_alt_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_alt_states(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.insn_reserv_decl*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** @curr_ainsn, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.insn_reserv_decl*, %struct.insn_reserv_decl** %12, align 8
  store %struct.insn_reserv_decl* %13, %struct.insn_reserv_decl** %3, align 8
  %14 = load %struct.insn_reserv_decl*, %struct.insn_reserv_decl** %3, align 8
  %15 = load i32, i32* @advance_cycle_insn_decl, align 4
  %16 = call %struct.insn_reserv_decl* @DECL_INSN_RESERV(i32 %15)
  %17 = icmp ne %struct.insn_reserv_decl* %14, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.insn_reserv_decl*, %struct.insn_reserv_decl** %3, align 8
  %22 = getelementptr inbounds %struct.insn_reserv_decl, %struct.insn_reserv_decl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = call i32 @process_alts_for_forming_states(i32 %23, %struct.TYPE_5__* %24, i32 0)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @uniq_sort_alt_states(i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %18, %10
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curr_ainsn, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** @curr_ainsn, align 8
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local %struct.insn_reserv_decl* @DECL_INSN_RESERV(i32) #1

declare dso_local i32 @process_alts_for_forming_states(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @uniq_sort_alt_states(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
