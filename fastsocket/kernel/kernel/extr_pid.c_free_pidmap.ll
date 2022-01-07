; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_free_pidmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_free_pidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upid = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pidmap* }
%struct.pidmap = type { i32, i32 }

@BITS_PER_PAGE = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upid*)* @free_pidmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pidmap(%struct.upid* %0) #0 {
  %2 = alloca %struct.upid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pidmap*, align 8
  %5 = alloca i32, align 4
  store %struct.upid* %0, %struct.upid** %2, align 8
  %6 = load %struct.upid*, %struct.upid** %2, align 8
  %7 = getelementptr inbounds %struct.upid, %struct.upid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.upid*, %struct.upid** %2, align 8
  %10 = getelementptr inbounds %struct.upid, %struct.upid* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pidmap*, %struct.pidmap** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BITS_PER_PAGE, align 4
  %16 = sdiv i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %13, i64 %17
  store %struct.pidmap* %18, %struct.pidmap** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.pidmap*, %struct.pidmap** %4, align 8
  %24 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clear_bit(i32 %22, i32 %25)
  %27 = load %struct.pidmap*, %struct.pidmap** %4, align 8
  %28 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
