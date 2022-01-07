; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_dep_stack_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_symbol.c_dep_stack_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dep_stack = type { %struct.symbol*, %struct.dep_stack*, %struct.dep_stack* }
%struct.symbol = type { i32 }

@check_top = common dso_local global %struct.dep_stack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dep_stack*, %struct.symbol*)* @dep_stack_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dep_stack_insert(%struct.dep_stack* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.dep_stack*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.dep_stack* %0, %struct.dep_stack** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %5 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %6 = call i32 @memset(%struct.dep_stack* %5, i32 0, i32 24)
  %7 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %8 = icmp ne %struct.dep_stack* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %11 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %12 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %11, i32 0, i32 2
  store %struct.dep_stack* %10, %struct.dep_stack** %12, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.dep_stack*, %struct.dep_stack** @check_top, align 8
  %15 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %16 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %15, i32 0, i32 1
  store %struct.dep_stack* %14, %struct.dep_stack** %16, align 8
  %17 = load %struct.symbol*, %struct.symbol** %4, align 8
  %18 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  %19 = getelementptr inbounds %struct.dep_stack, %struct.dep_stack* %18, i32 0, i32 0
  store %struct.symbol* %17, %struct.symbol** %19, align 8
  %20 = load %struct.dep_stack*, %struct.dep_stack** %3, align 8
  store %struct.dep_stack* %20, %struct.dep_stack** @check_top, align 8
  ret void
}

declare dso_local i32 @memset(%struct.dep_stack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
