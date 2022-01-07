; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pop_temp_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_pop_temp_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { %struct.temp_slot* }

@temp_slot_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_temp_slots() #0 {
  %1 = alloca %struct.temp_slot*, align 8
  %2 = alloca %struct.temp_slot*, align 8
  %3 = load i32, i32* @temp_slot_level, align 4
  %4 = call %struct.temp_slot** @temp_slots_at_level(i32 %3)
  %5 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %5, %struct.temp_slot** %1, align 8
  br label %6

6:                                                ; preds = %15, %0
  %7 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %8 = icmp ne %struct.temp_slot* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %11 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %10, i32 0, i32 0
  %12 = load %struct.temp_slot*, %struct.temp_slot** %11, align 8
  store %struct.temp_slot* %12, %struct.temp_slot** %2, align 8
  %13 = load %struct.temp_slot*, %struct.temp_slot** %1, align 8
  %14 = call i32 @make_slot_available(%struct.temp_slot* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.temp_slot*, %struct.temp_slot** %2, align 8
  store %struct.temp_slot* %16, %struct.temp_slot** %1, align 8
  br label %6

17:                                               ; preds = %6
  %18 = call i32 (...) @combine_temp_slots()
  %19 = load i32, i32* @temp_slot_level, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @temp_slot_level, align 4
  ret void
}

declare dso_local %struct.temp_slot** @temp_slots_at_level(i32) #1

declare dso_local i32 @make_slot_available(%struct.temp_slot*) #1

declare dso_local i32 @combine_temp_slots(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
