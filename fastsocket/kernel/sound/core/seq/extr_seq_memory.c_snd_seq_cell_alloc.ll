; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_cell_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_cell_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i32, i32, i32, i32, %struct.snd_seq_event_cell*, i64, i32, i32* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell* }
%struct.file = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"seq: pool is not initialized\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_pool*, %struct.snd_seq_event_cell**, i32, %struct.file*)* @snd_seq_cell_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_cell_alloc(%struct.snd_seq_pool* %0, %struct.snd_seq_event_cell** %1, i32 %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_seq_pool*, align 8
  %7 = alloca %struct.snd_seq_event_cell**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.snd_seq_event_cell*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %6, align 8
  store %struct.snd_seq_event_cell** %1, %struct.snd_seq_event_cell*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file* %3, %struct.file** %9, align 8
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %18 = icmp eq %struct.snd_seq_pool* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %134

22:                                               ; preds = %4
  %23 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %7, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %23, align 8
  %24 = load i32, i32* @current, align 4
  %25 = call i32 @init_waitqueue_entry(i32* %13, i32 %24)
  %26 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %26, i32 0, i32 1
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %31 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = call i32 @snd_printd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %128

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %77, %38
  %40 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %41 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %40, i32 0, i32 5
  %42 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %41, align 8
  %43 = icmp eq %struct.snd_seq_event_cell* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %49 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %44, %39
  %54 = phi i1 [ false, %44 ], [ false, %39 ], [ %52, %47 ]
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %57 = call i32 @set_current_state(i32 %56)
  %58 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %59 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %58, i32 0, i32 7
  %60 = call i32 @add_wait_queue(i32* %59, i32* %13)
  %61 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %62 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = call i32 (...) @schedule()
  %65 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %66 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %65, i32 0, i32 1
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %69 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %68, i32 0, i32 7
  %70 = call i32 @remove_wait_queue(i32* %69, i32* %13)
  %71 = load i32, i32* @current, align 4
  %72 = call i64 @signal_pending(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @ERESTARTSYS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %128

77:                                               ; preds = %55
  br label %39

78:                                               ; preds = %53
  %79 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %80 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %128

86:                                               ; preds = %78
  %87 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %88 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %87, i32 0, i32 5
  %89 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %88, align 8
  store %struct.snd_seq_event_cell* %89, %struct.snd_seq_event_cell** %10, align 8
  %90 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %91 = icmp ne %struct.snd_seq_event_cell* %90, null
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %94 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %93, i32 0, i32 0
  %95 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %94, align 8
  %96 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %97 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %96, i32 0, i32 5
  store %struct.snd_seq_event_cell* %95, %struct.snd_seq_event_cell** %97, align 8
  %98 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %99 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %98, i32 0, i32 4
  %100 = call i32 @atomic_inc(i32* %99)
  %101 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %102 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %101, i32 0, i32 4
  %103 = call i32 @atomic_read(i32* %102)
  store i32 %103, i32* %14, align 4
  %104 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %105 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %92
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %112 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %92
  %114 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %115 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %119 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %118, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %119, align 8
  store i32 0, i32* %12, align 4
  br label %125

120:                                              ; preds = %86
  %121 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %122 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %127 = load %struct.snd_seq_event_cell**, %struct.snd_seq_event_cell*** %7, align 8
  store %struct.snd_seq_event_cell* %126, %struct.snd_seq_event_cell** %127, align 8
  br label %128

128:                                              ; preds = %125, %83, %74, %34
  %129 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %6, align 8
  %130 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %129, i32 0, i32 1
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %128, %19
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
