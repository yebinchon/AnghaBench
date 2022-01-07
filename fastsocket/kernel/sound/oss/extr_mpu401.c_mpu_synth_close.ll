; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_synth_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_synth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mpu_config = type { i64, i64, i32* }
%struct.TYPE_4__ = type { %struct.coproc_operations* }
%struct.coproc_operations = type { i32, i32, i32 (i32, i32)* }

@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8
@COPR_MIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mpu_synth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu_synth_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpu_config*, align 8
  %5 = alloca %struct.coproc_operations*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %6, i64 %8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %13, i64 %15
  store %struct.mpu_config* %16, %struct.mpu_config** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @mpu_cmd(i32 %17, i32 21, i32 0)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mpu_cmd(i32 %19, i32 138, i32 0)
  %21 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %22 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.coproc_operations*, %struct.coproc_operations** %28, align 8
  store %struct.coproc_operations* %29, %struct.coproc_operations** %5, align 8
  %30 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %31 = icmp ne %struct.coproc_operations* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %34 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %33, i32 0, i32 2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %37 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @COPR_MIDI, align 4
  %40 = call i32 %35(i32 %38, i32 %39)
  %41 = load %struct.coproc_operations*, %struct.coproc_operations** %5, align 8
  %42 = getelementptr inbounds %struct.coproc_operations, %struct.coproc_operations* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @module_put(i32 %43)
  br label %45

45:                                               ; preds = %32, %1
  %46 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %47 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %49 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
