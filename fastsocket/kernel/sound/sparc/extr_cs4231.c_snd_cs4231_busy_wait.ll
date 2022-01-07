; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_busy_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_busy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32 }

@REGSEL = common dso_local global i32 0, align 4
@CS4231_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs4231*)* @snd_cs4231_busy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4231_busy_wait(%struct.snd_cs4231* %0) #0 {
  %2 = alloca %struct.snd_cs4231*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %2, align 8
  store i32 5, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %10 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %11 = load i32, i32* @REGSEL, align 4
  %12 = call i32 @CS4231U(%struct.snd_cs4231* %10, i32 %11)
  %13 = call i32 @__cs4231_readb(%struct.snd_cs4231* %9, i32 %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %3, align 4
  br label %5

17:                                               ; preds = %5
  store i32 500, i32* %3, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %23 = load %struct.snd_cs4231*, %struct.snd_cs4231** %2, align 8
  %24 = load i32, i32* @REGSEL, align 4
  %25 = call i32 @CS4231U(%struct.snd_cs4231* %23, i32 %24)
  %26 = call i32 @__cs4231_readb(%struct.snd_cs4231* %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CS4231_INIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %37

32:                                               ; preds = %21
  %33 = call i32 @msleep(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  br label %18

37:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @__cs4231_readb(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
