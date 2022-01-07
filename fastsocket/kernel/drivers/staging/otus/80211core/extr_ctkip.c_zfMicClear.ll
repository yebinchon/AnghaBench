; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicClear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsMicVar = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfMicClear(%struct.zsMicVar* %0) #0 {
  %2 = alloca %struct.zsMicVar*, align 8
  store %struct.zsMicVar* %0, %struct.zsMicVar** %2, align 8
  %3 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %4 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %7 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %9 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %12 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %14 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.zsMicVar*, %struct.zsMicVar** %2, align 8
  %16 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
