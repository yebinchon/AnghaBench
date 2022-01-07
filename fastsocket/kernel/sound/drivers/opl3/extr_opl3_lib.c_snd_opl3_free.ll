; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32, i32, {}* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opl3*)* @snd_opl3_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_free(%struct.snd_opl3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl3*, align 8
  store %struct.snd_opl3* %0, %struct.snd_opl3** %3, align 8
  %4 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %5 = icmp ne %struct.snd_opl3* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @snd_BUG_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %15 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %14, i32 0, i32 2
  %16 = bitcast {}** %15 to i32 (%struct.snd_opl3*)**
  %17 = load i32 (%struct.snd_opl3*)*, i32 (%struct.snd_opl3*)** %16, align 8
  %18 = icmp ne i32 (%struct.snd_opl3*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 2
  %22 = bitcast {}** %21 to i32 (%struct.snd_opl3*)**
  %23 = load i32 (%struct.snd_opl3*)*, i32 (%struct.snd_opl3*)** %22, align 8
  %24 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %25 = call i32 %23(%struct.snd_opl3* %24)
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %28 = call i32 @snd_opl3_clear_patches(%struct.snd_opl3* %27)
  %29 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %30 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @release_and_free_resource(i32 %31)
  %33 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %34 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @release_and_free_resource(i32 %35)
  %37 = load %struct.snd_opl3*, %struct.snd_opl3** %3, align 8
  %38 = call i32 @kfree(%struct.snd_opl3* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %26, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_opl3_clear_patches(%struct.snd_opl3*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @kfree(%struct.snd_opl3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
