; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_free_all_tagged_tu_seen_up_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_free_all_tagged_tu_seen_up_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagged_tu_seen_cache = type { %struct.tagged_tu_seen_cache* }

@tagged_tu_seen_base = common dso_local global %struct.tagged_tu_seen_cache* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tagged_tu_seen_cache*)* @free_all_tagged_tu_seen_up_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_tagged_tu_seen_up_to(%struct.tagged_tu_seen_cache* %0) #0 {
  %2 = alloca %struct.tagged_tu_seen_cache*, align 8
  %3 = alloca %struct.tagged_tu_seen_cache*, align 8
  %4 = alloca %struct.tagged_tu_seen_cache*, align 8
  store %struct.tagged_tu_seen_cache* %0, %struct.tagged_tu_seen_cache** %2, align 8
  %5 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** @tagged_tu_seen_base, align 8
  store %struct.tagged_tu_seen_cache* %5, %struct.tagged_tu_seen_cache** %3, align 8
  br label %6

6:                                                ; preds = %10, %1
  %7 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %3, align 8
  %8 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %2, align 8
  %9 = icmp ne %struct.tagged_tu_seen_cache* %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %3, align 8
  store %struct.tagged_tu_seen_cache* %11, %struct.tagged_tu_seen_cache** %4, align 8
  %12 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %4, align 8
  %13 = getelementptr inbounds %struct.tagged_tu_seen_cache, %struct.tagged_tu_seen_cache* %12, i32 0, i32 0
  %14 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %13, align 8
  store %struct.tagged_tu_seen_cache* %14, %struct.tagged_tu_seen_cache** %3, align 8
  %15 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %4, align 8
  %16 = call i32 @free(%struct.tagged_tu_seen_cache* %15)
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.tagged_tu_seen_cache*, %struct.tagged_tu_seen_cache** %2, align 8
  store %struct.tagged_tu_seen_cache* %18, %struct.tagged_tu_seen_cache** @tagged_tu_seen_base, align 8
  ret void
}

declare dso_local i32 @free(%struct.tagged_tu_seen_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
