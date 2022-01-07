; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region_must_not_throw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_gen_eh_region_must_not_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_region = type { i32 }

@ERT_MUST_NOT_THROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eh_region* @gen_eh_region_must_not_throw(%struct.eh_region* %0) #0 {
  %2 = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %0, %struct.eh_region** %2, align 8
  %3 = load i32, i32* @ERT_MUST_NOT_THROW, align 4
  %4 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %5 = call %struct.eh_region* @gen_eh_region(i32 %3, %struct.eh_region* %4)
  ret %struct.eh_region* %5
}

declare dso_local %struct.eh_region* @gen_eh_region(i32, %struct.eh_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
