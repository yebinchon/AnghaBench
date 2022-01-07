; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32*, i32 }
%struct.spi_transfer = type { i32*, i32 }
%struct.spi_message = type { i32 }

@AD1938_SPI_BUFLEN = common dso_local global i32 0, align 4
@AD1938_SPI_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32)* @ad1938_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_write_reg(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca %struct.spi_message, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %3
  %24 = load i32, i32* @AD1938_SPI_BUFLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %30 = load i32, i32* @AD1938_SPI_BUFLEN, align 4
  store i32 %30, i32* %29, align 8
  %31 = load i32, i32* @AD1938_SPI_ADDR, align 4
  %32 = shl i32 %31, 1
  %33 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %36, i32* %37, align 8
  %38 = call i32 @spi_message_init(%struct.spi_message* %12)
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %12)
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @spi_sync(i32 %42, %struct.spi_message* %12)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %23
  %53 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %54

54:                                               ; preds = %52, %3
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
