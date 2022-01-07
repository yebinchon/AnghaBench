; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_compare_timestamp_rel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_prioq.c_compare_timestamp_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@SNDRV_SEQ_TIME_STAMP_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_TIME_STAMP_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, %struct.snd_seq_event*)* @compare_timestamp_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_timestamp_rel(%struct.snd_seq_event* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_event*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  %6 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %7 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SNDRV_SEQ_TIME_STAMP_TICK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %19 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %89

24:                                               ; preds = %13
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %30 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %89

35:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %89

36:                                               ; preds = %2
  %37 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %38 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %43 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %89

49:                                               ; preds = %36
  %50 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %51 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %56 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %49
  %62 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %63 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %68 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %89

74:                                               ; preds = %61
  %75 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %76 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %81 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %89

87:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %89

88:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %86, %73, %48, %35, %34, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
