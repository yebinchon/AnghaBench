; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automaton_descriptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_automaton_descriptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@description = common dso_local global %struct.TYPE_7__* null, align 8
@output_description_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\0AAutomaton \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@output_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_automaton_descriptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_automaton_descriptions() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @description, align 8
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %1, align 8
  br label %5

5:                                                ; preds = %21, %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load i32, i32* @output_description_file, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @output_description_file, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %13 = call i32 @output_automaton_name(i32 %11, %struct.TYPE_6__* %12)
  %14 = load i32, i32* @output_description_file, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = call i32 @output_automaton_units(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = load i32, i32* @output_state, align 4
  %20 = call i32 @pass_states(%struct.TYPE_6__* %18, i32 %19)
  br label %21

21:                                               ; preds = %8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @output_automaton_name(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @output_automaton_units(%struct.TYPE_6__*) #1

declare dso_local i32 @pass_states(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
