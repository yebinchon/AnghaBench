; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@split_argument = common dso_local global i64 0, align 8
@automata_num = common dso_local global i64 0, align 8
@description = common dso_local global %struct.TYPE_2__* null, align 8
@automaton_generation_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate() #0 {
  %1 = load i64, i64* @split_argument, align 8
  store i64 %1, i64* @automata_num, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @description, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @automata_num, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @description, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* @automata_num, align 8
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 (...) @initiate_states()
  %13 = call i32 (...) @initiate_arcs()
  %14 = call i32 (...) @initiate_automata_lists()
  %15 = call i32 (...) @initiate_pass_states()
  %16 = call i32 (...) @initiate_excl_sets()
  %17 = call i32 (...) @initiate_presence_absence_pattern_sets()
  %18 = call i32 (...) @create_ticker()
  store i32 %18, i32* @automaton_generation_time, align 4
  %19 = call i32 (...) @create_automata()
  %20 = call i32 @ticker_off(i32* @automaton_generation_time)
  ret void
}

declare dso_local i32 @initiate_states(...) #1

declare dso_local i32 @initiate_arcs(...) #1

declare dso_local i32 @initiate_automata_lists(...) #1

declare dso_local i32 @initiate_pass_states(...) #1

declare dso_local i32 @initiate_excl_sets(...) #1

declare dso_local i32 @initiate_presence_absence_pattern_sets(...) #1

declare dso_local i32 @create_ticker(...) #1

declare dso_local i32 @create_automata(...) #1

declare dso_local i32 @ticker_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
