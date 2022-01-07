; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 (i32, i32*, i32)*, i32, i32 }

@UDA1380_MVOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"uda1380: hw write %x val %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"uda1380: READ BACK VAL %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@uda1380_cache_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32)* @uda1380_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_write(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 65280
  %14 = lshr i32 %13, 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @uda1380_write_reg_cache(%struct.snd_soc_codec* %19, i32 %20, i32 %21)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @UDA1380_MVOL, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %86

32:                                               ; preds = %27, %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %37, align 8
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = call i32 %38(i32 %41, i32* %42, i32 3)
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %83

45:                                               ; preds = %32
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %50 = call i32 @i2c_master_send(i32 %48, i32* %49, i32 1)
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %52 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %55 = call i32 @i2c_master_recv(i32 %53, i32* %54, i32 2)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %58, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %45
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %68, %70
  %72 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %86

75:                                               ; preds = %45
  %76 = load i32, i32* %6, align 4
  %77 = icmp uge i32 %76, 16
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = sub i32 %79, 16
  %81 = call i32 @clear_bit(i32 %80, i32* @uda1380_cache_dirty)
  br label %82

82:                                               ; preds = %78, %75
  store i32 0, i32* %4, align 4
  br label %86

83:                                               ; preds = %32
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %82, %65, %31
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @uda1380_write_reg_cache(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
