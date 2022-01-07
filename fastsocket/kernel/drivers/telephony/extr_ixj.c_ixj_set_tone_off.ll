; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_set_tone_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_set_tone_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, %struct.TYPE_4__*)* @ixj_set_tone_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_set_tone_off(i16 zeroext %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_4__*, align 8
  store i16 %0, i16* %4, align 2
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load i16, i16* %4, align 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i16 %6, i16* %8, align 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i64 @ixj_WriteDSPCommand(i16 zeroext 28165, %struct.TYPE_4__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i16, i16* %4, align 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = call i64 @ixj_WriteDSPCommand(i16 zeroext %14, %struct.TYPE_4__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @ixj_WriteDSPCommand(i16 zeroext, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
