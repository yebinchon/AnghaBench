; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_set_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_jack.c_snd_jack_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_jack = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_jack_set_parent(%struct.snd_jack* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.snd_jack*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.snd_jack* %0, %struct.snd_jack** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %6 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.snd_jack*, %struct.snd_jack** %3, align 8
  %11 = getelementptr inbounds %struct.snd_jack, %struct.snd_jack* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %9, %struct.device** %14, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
