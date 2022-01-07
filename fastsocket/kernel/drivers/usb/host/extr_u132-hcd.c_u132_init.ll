; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.u132 = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@intrdisable = common dso_local global i32 0, align 4
@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RH_A_NDP = common dso_local global i32 0, align 4
@MAX_U132_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*)* @u132_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_init(%struct.u132* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u132*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %3, align 8
  %7 = load %struct.u132*, %struct.u132** %3, align 8
  %8 = call i32 @u132_disable(%struct.u132* %7)
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.u132*, %struct.u132** %3, align 8
  %11 = getelementptr inbounds %struct.u132, %struct.u132* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.u132*, %struct.u132** %3, align 8
  %13 = load i32, i32* @intrdisable, align 4
  %14 = load i32, i32* @OHCI_INTR_MIE, align 4
  %15 = call i32 @u132_write_pcimem(%struct.u132* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.u132*, %struct.u132** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @u132_read_pcimem(%struct.u132* %21, i32 %22, i32* %5)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.u132*, %struct.u132** %3, align 8
  %30 = getelementptr inbounds %struct.u132, %struct.u132* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  %34 = load %struct.u132*, %struct.u132** %3, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 4
  %36 = call i32 @u132_read_pcimem(%struct.u132* %34, i32 %35, i32* %6)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RH_A_NDP, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.u132*, %struct.u132** %3, align 8
  %46 = getelementptr inbounds %struct.u132, %struct.u132* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.u132*, %struct.u132** %3, align 8
  %48 = call i32 @read_roothub_info(%struct.u132* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %28
  %55 = load %struct.u132*, %struct.u132** %3, align 8
  %56 = getelementptr inbounds %struct.u132, %struct.u132* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_U132_PORTS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %51, %39, %26, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @read_roothub_info(%struct.u132*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
