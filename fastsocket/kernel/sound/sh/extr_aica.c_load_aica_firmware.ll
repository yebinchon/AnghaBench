; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_load_aica_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_load_aica_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"aica_firmware.bin\00", align 1
@pd = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_aica_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_aica_firmware() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.firmware*, align 8
  %4 = call i32 (...) @spu_reset()
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pd, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @request_firmware(%struct.firmware** %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %26

13:                                               ; preds = %0
  %14 = call i32 (...) @spu_disable()
  %15 = load %struct.firmware*, %struct.firmware** %3, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spu_memload(i32 0, i32 %17, i32 %20)
  %22 = call i32 (...) @spu_enable()
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = call i32 @release_firmware(%struct.firmware* %23)
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @spu_reset(...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spu_disable(...) #1

declare dso_local i32 @spu_memload(i32, i32, i32) #1

declare dso_local i32 @spu_enable(...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
