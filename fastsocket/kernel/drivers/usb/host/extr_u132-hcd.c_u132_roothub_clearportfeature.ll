; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_clearportfeature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_roothub_clearportfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.u132 = type { i32, i32, %struct.TYPE_3__*, %struct.u132_port* }
%struct.TYPE_3__ = type { i32 }
%struct.u132_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RH_PS_CCS = common dso_local global i32 0, align 4
@RH_PS_PESC = common dso_local global i32 0, align 4
@RH_PS_POCI = common dso_local global i32 0, align 4
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_USB_OPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TODO resume_root_hub\0A\00", align 1
@RH_PS_PSSC = common dso_local global i32 0, align 4
@RH_PS_LSDA = common dso_local global i32 0, align 4
@RH_PS_CSC = common dso_local global i32 0, align 4
@RH_PS_OCIC = common dso_local global i32 0, align 4
@RH_PS_PRSC = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32, i32)* @u132_roothub_clearportfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_clearportfeature(%struct.u132* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.u132*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.u132_port*, align 8
  store %struct.u132* %0, %struct.u132** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.u132*, %struct.u132** %5, align 8
  %17 = getelementptr inbounds %struct.u132, %struct.u132* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load %struct.u132*, %struct.u132** %5, align 8
  %27 = getelementptr inbounds %struct.u132, %struct.u132* %26, i32 0, i32 3
  %28 = load %struct.u132_port*, %struct.u132_port** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %28, i64 %30
  store %struct.u132_port* %31, %struct.u132_port** %11, align 8
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.u132_port*, %struct.u132_port** %11, align 8
  %36 = getelementptr inbounds %struct.u132_port, %struct.u132_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %70 [
    i32 130, label %40
    i32 134, label %42
    i32 128, label %44
    i32 131, label %60
    i32 129, label %62
    i32 135, label %64
    i32 133, label %66
    i32 132, label %68
  ]

40:                                               ; preds = %23
  %41 = load i32, i32* @RH_PS_CCS, align 4
  store i32 %41, i32* %9, align 4
  br label %73

42:                                               ; preds = %23
  %43 = load i32, i32* @RH_PS_PESC, align 4
  store i32 %43, i32* %9, align 4
  br label %73

44:                                               ; preds = %23
  %45 = load i32, i32* @RH_PS_POCI, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.u132*, %struct.u132** %5, align 8
  %47 = getelementptr inbounds %struct.u132, %struct.u132* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @OHCI_USB_OPER, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.u132*, %struct.u132** %5, align 8
  %55 = getelementptr inbounds %struct.u132, %struct.u132* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %44
  br label %73

60:                                               ; preds = %23
  %61 = load i32, i32* @RH_PS_PSSC, align 4
  store i32 %61, i32* %9, align 4
  br label %73

62:                                               ; preds = %23
  %63 = load i32, i32* @RH_PS_LSDA, align 4
  store i32 %63, i32* %9, align 4
  br label %73

64:                                               ; preds = %23
  %65 = load i32, i32* @RH_PS_CSC, align 4
  store i32 %65, i32* %9, align 4
  br label %73

66:                                               ; preds = %23
  %67 = load i32, i32* @RH_PS_OCIC, align 4
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %23
  %69 = load i32, i32* @RH_PS_PRSC, align 4
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %23
  %71 = load i32, i32* @EPIPE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %87

73:                                               ; preds = %68, %66, %64, %62, %60, %59, %42, %40
  %74 = load %struct.u132*, %struct.u132** %5, align 8
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @u132_write_pcimem(%struct.u132* %74, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %84, %70, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
