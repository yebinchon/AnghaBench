; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_setportfeature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_setportfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.u132 = type { i32, %struct.u132_port* }
%struct.u132_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RH_PS_PSS = common dso_local global i32 0, align 4
@RH_PS_PPS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32, i32)* @u132_roothub_setportfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_setportfeature(%struct.u132* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.u132*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132_port*, align 8
  store %struct.u132* %0, %struct.u132** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.u132*, %struct.u132** %5, align 8
  %16 = getelementptr inbounds %struct.u132, %struct.u132* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load %struct.u132*, %struct.u132** %5, align 8
  %26 = getelementptr inbounds %struct.u132, %struct.u132* %25, i32 0, i32 1
  %27 = load %struct.u132_port*, %struct.u132_port** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %27, i64 %29
  store %struct.u132_port* %30, %struct.u132_port** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.u132_port*, %struct.u132_port** %10, align 8
  %35 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %76 [
    i32 128, label %39
    i32 130, label %53
    i32 129, label %67
  ]

39:                                               ; preds = %22
  %40 = load %struct.u132*, %struct.u132** %5, align 8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RH_PS_PSS, align 4
  %47 = call i32 @u132_write_pcimem(%struct.u132* %40, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %79

53:                                               ; preds = %22
  %54 = load %struct.u132*, %struct.u132** %5, align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RH_PS_PPS, align 4
  %61 = call i32 @u132_write_pcimem(%struct.u132* %54, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %79

67:                                               ; preds = %22
  %68 = load %struct.u132*, %struct.u132** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @u132_roothub_portreset(%struct.u132* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %79

76:                                               ; preds = %22
  %77 = load i32, i32* @EPIPE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %75, %73, %66, %64, %52, %50, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

declare dso_local i32 @u132_roothub_portreset(%struct.u132*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
