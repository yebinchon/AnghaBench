; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_fifo.c_snd_seq_fifo_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_fifo = type { i32, i64, i32*, %struct.snd_seq_event_cell*, %struct.snd_seq_pool* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.snd_seq_pool = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_fifo_resize(%struct.snd_seq_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_seq_pool*, align 8
  %8 = alloca %struct.snd_seq_pool*, align 8
  %9 = alloca %struct.snd_seq_event_cell*, align 8
  %10 = alloca %struct.snd_seq_event_cell*, align 8
  %11 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_fifo* %0, %struct.snd_seq_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %13 = icmp ne %struct.snd_seq_fifo* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %16 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %15, i32 0, i32 4
  %17 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %16, align 8
  %18 = icmp ne %struct.snd_seq_pool* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %82

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.snd_seq_pool* @snd_seq_pool_new(i32 %29)
  store %struct.snd_seq_pool* %30, %struct.snd_seq_pool** %7, align 8
  %31 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %32 = icmp eq %struct.snd_seq_pool* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %28
  %37 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %38 = call i64 @snd_seq_pool_init(%struct.snd_seq_pool* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @snd_seq_pool_delete(%struct.snd_seq_pool** %7)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %36
  %45 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %46 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %50 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %49, i32 0, i32 4
  %51 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %50, align 8
  store %struct.snd_seq_pool* %51, %struct.snd_seq_pool** %8, align 8
  %52 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %53 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %52, i32 0, i32 3
  %54 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %53, align 8
  store %struct.snd_seq_event_cell* %54, %struct.snd_seq_event_cell** %11, align 8
  %55 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %7, align 8
  %56 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %57 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %56, i32 0, i32 4
  store %struct.snd_seq_pool* %55, %struct.snd_seq_pool** %57, align 8
  %58 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %59 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %58, i32 0, i32 3
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %59, align 8
  %60 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %63 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.snd_seq_fifo*, %struct.snd_seq_fifo** %4, align 8
  %65 = getelementptr inbounds %struct.snd_seq_fifo, %struct.snd_seq_fifo* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  store %struct.snd_seq_event_cell* %68, %struct.snd_seq_event_cell** %9, align 8
  br label %69

69:                                               ; preds = %78, %44
  %70 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %9, align 8
  %71 = icmp ne %struct.snd_seq_event_cell* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %9, align 8
  %74 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %73, i32 0, i32 0
  %75 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %74, align 8
  store %struct.snd_seq_event_cell* %75, %struct.snd_seq_event_cell** %10, align 8
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %9, align 8
  %77 = call i32 @snd_seq_cell_free(%struct.snd_seq_event_cell* %76)
  br label %78

78:                                               ; preds = %72
  %79 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  store %struct.snd_seq_event_cell* %79, %struct.snd_seq_event_cell** %9, align 8
  br label %69

80:                                               ; preds = %69
  %81 = call i32 @snd_seq_pool_delete(%struct.snd_seq_pool** %8)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %40, %33, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_pool* @snd_seq_pool_new(i32) #1

declare dso_local i64 @snd_seq_pool_init(%struct.snd_seq_pool*) #1

declare dso_local i32 @snd_seq_pool_delete(%struct.snd_seq_pool**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_cell_free(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
