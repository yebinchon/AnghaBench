; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ali5451/extr_ali5451.c_snd_ali_codec_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"ali_codec_ready: codec is not ready.\0A \00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ali*, i32)* @snd_ali_codec_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_codec_ready(%struct.snd_ali* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ali*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 250)
  %10 = add i64 %8, %9
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %25, %2
  %12 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_ali_5451_peek(%struct.snd_ali* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %36

19:                                               ; preds = %11
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @jiffies, align 8
  %22 = call i32 @time_after_eq(i64 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %11

27:                                               ; preds = %24
  %28 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, -32769
  %32 = call i32 @snd_ali_5451_poke(%struct.snd_ali* %28, i32 %29, i32 %31)
  %33 = call i32 @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @snd_ali_5451_peek(%struct.snd_ali*, i32) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @snd_ali_5451_poke(%struct.snd_ali*, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
