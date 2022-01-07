; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-cache.c_snd_soc_7_9_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-cache.c_snd_soc_7_9_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32*, i32, i32 (i32, i32*, i32)*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32)* @snd_soc_7_9_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_7_9_write(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 1
  %20 = load i32, i32* %7, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 1
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 2
  %42 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %41, align 8
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %47 = call i32 %42(i32 %45, i32* %46, i32 2)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54, %50
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
