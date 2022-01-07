; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"NEIGH: BUG, double timer add, state is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, i64)* @neigh_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_add_timer(%struct.neighbour* %0, i64 %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i64, align 8
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %6 = call i32 @neigh_hold(%struct.neighbour* %5)
  %7 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %8 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @mod_timer(i32* %8, i64 %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %15 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 (...) @dump_stack()
  br label %19

19:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
