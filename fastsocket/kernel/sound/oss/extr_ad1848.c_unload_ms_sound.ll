; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_unload_ms_sound.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_unload_ms_sound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i64, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unload_ms_sound(%struct.address_info* %0) #0 {
  %2 = alloca %struct.address_info*, align 8
  store %struct.address_info* %0, %struct.address_info** %2, align 8
  %3 = load %struct.address_info*, %struct.address_info** %2, align 8
  %4 = getelementptr inbounds %struct.address_info, %struct.address_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 4
  %7 = load %struct.address_info*, %struct.address_info** %2, align 8
  %8 = getelementptr inbounds %struct.address_info, %struct.address_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.address_info*, %struct.address_info** %2, align 8
  %11 = getelementptr inbounds %struct.address_info, %struct.address_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.address_info*, %struct.address_info** %2, align 8
  %14 = getelementptr inbounds %struct.address_info, %struct.address_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ad1848_unload(i64 %6, i32 %9, i32 %12, i32 %15, i32 0)
  %17 = load %struct.address_info*, %struct.address_info** %2, align 8
  %18 = getelementptr inbounds %struct.address_info, %struct.address_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sound_unload_audiodev(i32 %21)
  %23 = load %struct.address_info*, %struct.address_info** %2, align 8
  %24 = getelementptr inbounds %struct.address_info, %struct.address_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @release_region(i64 %25, i32 4)
  ret void
}

declare dso_local i32 @ad1848_unload(i64, i32, i32, i32, i32) #1

declare dso_local i32 @sound_unload_audiodev(i32) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
