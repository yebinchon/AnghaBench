; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_recmask_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_recmask_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)* }

@AC97_RECORD_SELECT = common dso_local global i32 0, align 4
@ac97_rm2oss = common dso_local global i32* null, align 8
@ac97_oss_rm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32, i32)* @ac97_recmask_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_recmask_io(%struct.ac97_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ac97_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %13 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %12, i32 0, i32 0
  %14 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %13, align 8
  %15 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %16 = load i32, i32* @AC97_RECORD_SELECT, align 4
  %17 = call i32 %14(%struct.ac97_codec* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** @ac97_rm2oss, align 8
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 7
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load i32*, i32** @ac97_rm2oss, align 8
  %27 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %28 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %27, i32 0, i32 0
  %29 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %28, align 8
  %30 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %31 = load i32, i32* @AC97_RECORD_SELECT, align 4
  %32 = call i32 %29(%struct.ac97_codec* %30, i32 %31)
  %33 = and i32 %32, 7
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %26, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %25
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ffs(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** @ac97_oss_rm, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %60 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %59, i32 0, i32 1
  %61 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %60, align 8
  %62 = load %struct.ac97_codec*, %struct.ac97_codec** %5, align 8
  %63 = load i32, i32* @AC97_RECORD_SELECT, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 %61(%struct.ac97_codec* %62, i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %46, %11
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
