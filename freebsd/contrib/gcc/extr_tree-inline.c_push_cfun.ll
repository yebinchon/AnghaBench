; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_push_cfun.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_push_cfun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32 }

@function_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@cfun_stack = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.function* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_cfun(%struct.function* %0) #0 {
  %2 = alloca %struct.function*, align 8
  store %struct.function* %0, %struct.function** %2, align 8
  %3 = load i32, i32* @function_p, align 4
  %4 = load i32, i32* @heap, align 4
  %5 = load i32, i32* @cfun_stack, align 4
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %7 = call i32 @VEC_safe_push(i32 %3, i32 %4, i32 %5, %struct.function* %6)
  %8 = load %struct.function*, %struct.function** %2, align 8
  store %struct.function* %8, %struct.function** @cfun, align 8
  ret void
}

declare dso_local i32 @VEC_safe_push(i32, i32, i32, %struct.function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
