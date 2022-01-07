; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@mpu_cmd.rec = internal global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mpu_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu_cmd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_cmd.rec, i32 0, i32 0), align 8
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 240
  %13 = icmp eq i32 %12, 224
  %14 = zext i1 %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_cmd.rec, i32 0, i32 1), align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 240
  %17 = icmp eq i32 %16, 160
  %18 = zext i1 %17 to i32
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_cmd.rec, i32 0, i32 2), align 8
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_cmd.rec, i32 0, i32 3), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mpu401_command(i32 %23, %struct.TYPE_3__* @mpu_cmd.rec)
  store i32 %24, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mpu_cmd.rec, i32 0, i32 3), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mpu401_command(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
