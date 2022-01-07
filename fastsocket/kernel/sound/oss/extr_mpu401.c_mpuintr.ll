; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpuintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpuintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i64, i32, i64 }

@dev_conf = common dso_local global %struct.mpu_config* null, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@MODE_SYNTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpuintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpuintr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpu_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mpu_config*, %struct.mpu_config** @dev_conf, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %11, i64 %13
  store %struct.mpu_config* %14, %struct.mpu_config** %5, align 8
  %15 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %16 = call i64 @input_avail(%struct.mpu_config* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %19 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %20 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %25 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OPEN_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %32 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MODE_SYNTH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %23
  %37 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %38 = call i32 @mpu401_input_loop(%struct.mpu_config* %37)
  br label %42

39:                                               ; preds = %30, %18
  %40 = load %struct.mpu_config*, %struct.mpu_config** %5, align 8
  %41 = call i32 @read_data(%struct.mpu_config* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @IRQ_RETVAL(i32 %44)
  ret i32 %45
}

declare dso_local i64 @input_avail(%struct.mpu_config*) #1

declare dso_local i32 @mpu401_input_loop(%struct.mpu_config*) #1

declare dso_local i32 @read_data(%struct.mpu_config*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
