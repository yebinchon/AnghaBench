; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_post_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_post_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@PLD_SLIC_STATE_STANDBY = common dso_local global i32 0, align 4
@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"IXJ phone%d Finished Playing CallerID data %ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ixj_post_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_post_cid(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = call i32 @ixj_play_stop(%struct.TYPE_16__* %3)
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 5000
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @PLD_SLIC_STATE_STANDBY, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = call i32 @SLIC_SetState(i32 %10, %struct.TYPE_16__* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ixjdebug, align 4
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @jiffies, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = call i32 @ixj_fsk_free(%struct.TYPE_16__* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_base_frame(%struct.TYPE_16__* %31, i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @set_play_codec(%struct.TYPE_16__* %36, i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ixj_aec_start(%struct.TYPE_16__* %41, i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @set_play_volume(%struct.TYPE_16__* %46, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_rec_codec(%struct.TYPE_16__* %51, i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @set_rec_volume(%struct.TYPE_16__* %56, i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %26
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = call i32 @ixj_record_start(%struct.TYPE_16__* %66)
  br label %68

68:                                               ; preds = %65, %26
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = call i32 @ixj_play_start(%struct.TYPE_16__* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = call i32 @wake_up_interruptible(i32* %83)
  br label %85

85:                                               ; preds = %81, %76
  ret void
}

declare dso_local i32 @ixj_play_stop(%struct.TYPE_16__*) #1

declare dso_local i32 @SLIC_SetState(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @ixj_fsk_free(%struct.TYPE_16__*) #1

declare dso_local i32 @set_base_frame(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_play_codec(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ixj_aec_start(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_play_volume(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_rec_codec(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_rec_volume(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ixj_record_start(%struct.TYPE_16__*) #1

declare dso_local i32 @ixj_play_start(%struct.TYPE_16__*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
