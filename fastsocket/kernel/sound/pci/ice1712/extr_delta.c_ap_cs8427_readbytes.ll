; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_readbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_readbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_device*, i8*, i32)* @ap_cs8427_readbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_cs8427_readbytes(%struct.snd_i2c_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_i2c_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %11 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  store %struct.snd_ice1712* %14, %struct.snd_ice1712** %7, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %20 = call zeroext i8 @ap_cs8427_codec_select(%struct.snd_ice1712* %19)
  store i8 %20, i8* %9, align 1
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %22 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %4, align 8
  %23 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 1
  %26 = or i32 %25, 1
  %27 = load i8, i8* %9, align 1
  %28 = call i32 @ap_cs8427_write_byte(%struct.snd_ice1712* %21, i32 %26, i8 zeroext %27)
  br label %29

29:                                               ; preds = %33, %3
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %35 = load i8, i8* %9, align 1
  %36 = call i32 @ap_cs8427_read_byte(%struct.snd_ice1712* %34, i8 zeroext %35)
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 %37, i8* %38, align 1
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %42 = load i8, i8* %9, align 1
  %43 = call i32 @ap_cs8427_codec_deassert(%struct.snd_ice1712* %41, i8 zeroext %42)
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @ap_cs8427_codec_select(%struct.snd_ice1712*) #1

declare dso_local i32 @ap_cs8427_write_byte(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @ap_cs8427_read_byte(%struct.snd_ice1712*, i8 zeroext) #1

declare dso_local i32 @ap_cs8427_codec_deassert(%struct.snd_ice1712*, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
