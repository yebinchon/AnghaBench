; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ak4531 = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ak4531*)* @snd_ak4531_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ak4531_free(%struct.snd_ak4531* %0) #0 {
  %2 = alloca %struct.snd_ak4531*, align 8
  store %struct.snd_ak4531* %0, %struct.snd_ak4531** %2, align 8
  %3 = load %struct.snd_ak4531*, %struct.snd_ak4531** %2, align 8
  %4 = icmp ne %struct.snd_ak4531* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.snd_ak4531*, %struct.snd_ak4531** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.snd_ak4531*)**
  %9 = load i32 (%struct.snd_ak4531*)*, i32 (%struct.snd_ak4531*)** %8, align 8
  %10 = icmp ne i32 (%struct.snd_ak4531*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load %struct.snd_ak4531*, %struct.snd_ak4531** %2, align 8
  %13 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.snd_ak4531*)**
  %15 = load i32 (%struct.snd_ak4531*)*, i32 (%struct.snd_ak4531*)** %14, align 8
  %16 = load %struct.snd_ak4531*, %struct.snd_ak4531** %2, align 8
  %17 = call i32 %15(%struct.snd_ak4531* %16)
  br label %18

18:                                               ; preds = %11, %5
  %19 = load %struct.snd_ak4531*, %struct.snd_ak4531** %2, align 8
  %20 = call i32 @kfree(%struct.snd_ak4531* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local i32 @kfree(%struct.snd_ak4531*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
