; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_..seq_memory.h_snd_seq_unused_cells.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_..seq_memory.h_snd_seq_unused_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_pool*)* @snd_seq_unused_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_unused_cells(%struct.snd_seq_pool* %0) #0 {
  %2 = alloca %struct.snd_seq_pool*, align 8
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %2, align 8
  %3 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %2, align 8
  %4 = icmp ne %struct.snd_seq_pool* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %2, align 8
  %7 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %2, align 8
  %10 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = sub nsw i32 %8, %11
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %12, %5 ], [ 0, %13 ]
  ret i32 %15
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
