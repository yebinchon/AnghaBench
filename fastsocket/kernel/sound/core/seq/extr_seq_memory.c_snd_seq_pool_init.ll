; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_pool_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_memory.c_snd_seq_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_pool = type { i32, i32, i32, i32, i64, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.snd_seq_pool* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"seq: malloc for sequencer events failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_pool_init(%struct.snd_seq_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_seq_event_cell*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_seq_pool* %0, %struct.snd_seq_pool** %3, align 8
  %7 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %8 = icmp ne %struct.snd_seq_pool* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %18 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %17, i32 0, i32 6
  %19 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %18, align 8
  %20 = icmp ne %struct.snd_seq_event_cell* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %93

22:                                               ; preds = %16
  %23 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %24 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 16, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.snd_seq_event_cell* @vmalloc(i32 %28)
  %30 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %31 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %30, i32 0, i32 6
  store %struct.snd_seq_event_cell* %29, %struct.snd_seq_event_cell** %31, align 8
  %32 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %33 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %32, i32 0, i32 6
  %34 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %33, align 8
  %35 = icmp eq %struct.snd_seq_event_cell* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = call i32 @snd_printd(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %93

40:                                               ; preds = %22
  %41 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %42 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %41, i32 0, i32 3
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %46 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %45, i32 0, i32 5
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %71, %40
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %50 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %55 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %54, i32 0, i32 6
  %56 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %56, i64 %58
  store %struct.snd_seq_event_cell* %59, %struct.snd_seq_event_cell** %5, align 8
  %60 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %61 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %62 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %61, i32 0, i32 1
  store %struct.snd_seq_pool* %60, %struct.snd_seq_pool** %62, align 8
  %63 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %64 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %63, i32 0, i32 5
  %65 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %64, align 8
  %66 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %67 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %66, i32 0, i32 0
  store %struct.snd_seq_event_cell* %65, %struct.snd_seq_event_cell** %67, align 8
  %68 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %69 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %70 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %69, i32 0, i32 5
  store %struct.snd_seq_event_cell* %68, %struct.snd_seq_event_cell** %70, align 8
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %76 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = sdiv i32 %78, 2
  %80 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %81 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %83 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %85 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %88 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.snd_seq_pool*, %struct.snd_seq_pool** %3, align 8
  %90 = getelementptr inbounds %struct.snd_seq_pool, %struct.snd_seq_pool* %89, i32 0, i32 3
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %74, %36, %21, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_event_cell* @vmalloc(i32) #1

declare dso_local i32 @snd_printd(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
