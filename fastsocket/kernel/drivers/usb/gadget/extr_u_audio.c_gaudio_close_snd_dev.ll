; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c_gaudio_close_snd_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_audio.c_gaudio_close_snd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gaudio = type { %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.gaudio_snd_dev = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gaudio*)* @gaudio_close_snd_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gaudio_close_snd_dev(%struct.gaudio* %0) #0 {
  %2 = alloca %struct.gaudio*, align 8
  %3 = alloca %struct.gaudio_snd_dev*, align 8
  store %struct.gaudio* %0, %struct.gaudio** %2, align 8
  %4 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %5 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %4, i32 0, i32 2
  store %struct.gaudio_snd_dev* %5, %struct.gaudio_snd_dev** %3, align 8
  %6 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @IS_ERR(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @filp_close(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %21 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %20, i32 0, i32 1
  store %struct.gaudio_snd_dev* %21, %struct.gaudio_snd_dev** %3, align 8
  %22 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %23 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IS_ERR(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @filp_close(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %37 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %36, i32 0, i32 0
  store %struct.gaudio_snd_dev* %37, %struct.gaudio_snd_dev** %3, align 8
  %38 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_ERR(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @filp_close(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  ret i32 0
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @filp_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
