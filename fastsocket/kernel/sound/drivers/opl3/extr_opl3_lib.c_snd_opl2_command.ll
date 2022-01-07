; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl2_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl2_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i64, i64, i32 }

@OPL3_RIGHT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl3*, i16, i8)* @snd_opl2_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl2_command(%struct.snd_opl3* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_opl3*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @OPL3_RIGHT, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %17 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i64 [ %18, %15 ], [ %22, %19 ]
  store i64 %24, i64* %8, align 8
  %25 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %26 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %25, i32 0, i32 2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i16, i16* %5, align 2
  %30 = trunc i16 %29 to i8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @outb(i8 zeroext %30, i64 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load i8, i8* %6, align 1
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = call i32 @outb(i8 zeroext %34, i64 %36)
  %38 = call i32 @udelay(i32 30)
  %39 = load %struct.snd_opl3*, %struct.snd_opl3** %4, align 8
  %40 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %39, i32 0, i32 2
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
