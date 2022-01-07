; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_do_ccupdate_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slab.c_do_ccupdate_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccupdate_struct = type { %struct.array_cache**, %struct.TYPE_2__* }
%struct.array_cache = type { i32 }
%struct.TYPE_2__ = type { %struct.array_cache** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_ccupdate_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ccupdate_local(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ccupdate_struct*, align 8
  %4 = alloca %struct.array_cache*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ccupdate_struct*
  store %struct.ccupdate_struct* %6, %struct.ccupdate_struct** %3, align 8
  %7 = call i32 (...) @check_irq_off()
  %8 = load %struct.ccupdate_struct*, %struct.ccupdate_struct** %3, align 8
  %9 = getelementptr inbounds %struct.ccupdate_struct, %struct.ccupdate_struct* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.array_cache* @cpu_cache_get(%struct.TYPE_2__* %10)
  store %struct.array_cache* %11, %struct.array_cache** %4, align 8
  %12 = load %struct.ccupdate_struct*, %struct.ccupdate_struct** %3, align 8
  %13 = getelementptr inbounds %struct.ccupdate_struct, %struct.ccupdate_struct* %12, i32 0, i32 0
  %14 = load %struct.array_cache**, %struct.array_cache*** %13, align 8
  %15 = call i64 (...) @smp_processor_id()
  %16 = getelementptr inbounds %struct.array_cache*, %struct.array_cache** %14, i64 %15
  %17 = load %struct.array_cache*, %struct.array_cache** %16, align 8
  %18 = load %struct.ccupdate_struct*, %struct.ccupdate_struct** %3, align 8
  %19 = getelementptr inbounds %struct.ccupdate_struct, %struct.ccupdate_struct* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.array_cache**, %struct.array_cache*** %21, align 8
  %23 = call i64 (...) @smp_processor_id()
  %24 = getelementptr inbounds %struct.array_cache*, %struct.array_cache** %22, i64 %23
  store %struct.array_cache* %17, %struct.array_cache** %24, align 8
  %25 = load %struct.array_cache*, %struct.array_cache** %4, align 8
  %26 = load %struct.ccupdate_struct*, %struct.ccupdate_struct** %3, align 8
  %27 = getelementptr inbounds %struct.ccupdate_struct, %struct.ccupdate_struct* %26, i32 0, i32 0
  %28 = load %struct.array_cache**, %struct.array_cache*** %27, align 8
  %29 = call i64 (...) @smp_processor_id()
  %30 = getelementptr inbounds %struct.array_cache*, %struct.array_cache** %28, i64 %29
  store %struct.array_cache* %25, %struct.array_cache** %30, align 8
  ret void
}

declare dso_local i32 @check_irq_off(...) #1

declare dso_local %struct.array_cache* @cpu_cache_get(%struct.TYPE_2__*) #1

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
