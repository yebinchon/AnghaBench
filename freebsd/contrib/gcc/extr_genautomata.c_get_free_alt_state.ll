; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_get_free_alt_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_get_free_alt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__*, i32* }

@first_free_alt_state = common dso_local global %struct.TYPE_5__* null, align 8
@allocated_alt_states_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @get_free_alt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @get_free_alt_state() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @first_free_alt_state, align 8
  %3 = icmp ne %struct.TYPE_5__* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @first_free_alt_state, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @first_free_alt_state, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** @first_free_alt_state, align 8
  br label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @allocated_alt_states_num, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @allocated_alt_states_num, align 4
  %12 = call %struct.TYPE_5__* @create_node(i32 4)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %1, align 8
  br label %13

13:                                               ; preds = %9, %4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %20
}

declare dso_local %struct.TYPE_5__* @create_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
