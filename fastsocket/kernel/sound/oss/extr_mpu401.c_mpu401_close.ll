; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i64, i32*, i64, i64 }
%struct.TYPE_2__ = type { %struct.coproc_operations* }
%struct.coproc_operations = type { i32, i32, i32 (i32, i32)* }

@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@midi_devs = common dso_local global %struct.TYPE_2__** null, align 8
@COPR_MIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpu401_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpu_config*, align 8
  %4 = alloca %struct.coproc_operations*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %5, i64 %7
  store %struct.mpu_config* %8, %struct.mpu_config** %3, align 8
  %9 = load %struct.mpu_config*, %struct.mpu_config** %3, align 8
  %10 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.mpu_config*, %struct.mpu_config** %3, align 8
  %15 = call i32 @reset_mpu401(%struct.mpu_config* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.mpu_config*, %struct.mpu_config** %3, align 8
  %18 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.mpu_config*, %struct.mpu_config** %3, align 8
  %20 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.coproc_operations*, %struct.coproc_operations** %26, align 8
  store %struct.coproc_operations* %27, %struct.coproc_operations** %4, align 8
  %28 = load %struct.coproc_operations*, %struct.coproc_operations** %4, align 8
  %29 = icmp ne %struct.coproc_operations* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %16
  %31 = load %struct.coproc_operations*, %struct.coproc_operations** %4, align 8
  %32 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %31, i32 0, i32 2
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.coproc_operations*, %struct.coproc_operations** %4, align 8
  %35 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @COPR_MIDI, align 4
  %38 = call i32 %33(i32 %36, i32 %37)
  %39 = load %struct.coproc_operations*, %struct.coproc_operations** %4, align 8
  %40 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @module_put(i32 %41)
  br label %43

43:                                               ; preds = %30, %16
  %44 = load %struct.mpu_config*, %struct.mpu_config** %3, align 8
  %45 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @reset_mpu401(%struct.mpu_config*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
