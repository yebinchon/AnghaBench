; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_chk_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_chk_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mpu_config*)* @mpu401_chk_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_chk_version(i32 %0, %struct.mpu_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpu_config*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mpu_config* %1, %struct.mpu_config** %4, align 8
  %6 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %7 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %9 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @mpu_cmd(i32 %10, i32 172, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 240
  %18 = icmp sgt i32 %17, 32
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %34

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %23 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @mpu_cmd(i32 %24, i32 173, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %29 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mpu_config*, %struct.mpu_config** %4, align 8
  %33 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %27, %19, %14
  ret void
}

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
