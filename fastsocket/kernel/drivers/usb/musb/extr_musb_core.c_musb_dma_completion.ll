; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_core.c_musb_dma_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musb_core.c_musb_dma_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_HM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_dma_completion(%struct.musb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.musb*, %struct.musb** %4, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MUSB_DEVCTL, align 4
  %12 = call i32 @musb_readb(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = call i32 (...) @is_cppi_enabled()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MUSB_DEVCTL_HM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.musb*, %struct.musb** %4, align 8
  %25 = call i32 @musb_h_ep0_irq(%struct.musb* %24)
  br label %29

26:                                               ; preds = %18
  %27 = load %struct.musb*, %struct.musb** %4, align 8
  %28 = call i32 @musb_g_ep0_irq(%struct.musb* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %15
  br label %79

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MUSB_DEVCTL_HM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = call i64 (...) @is_host_capable()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.musb*, %struct.musb** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @musb_host_tx(%struct.musb* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  br label %55

47:                                               ; preds = %34
  %48 = call i64 (...) @is_peripheral_capable()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.musb*, %struct.musb** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @musb_g_tx(%struct.musb* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %46
  br label %78

56:                                               ; preds = %31
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MUSB_DEVCTL_HM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = call i64 (...) @is_host_capable()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.musb*, %struct.musb** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @musb_host_rx(%struct.musb* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %77

69:                                               ; preds = %56
  %70 = call i64 (...) @is_peripheral_capable()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.musb*, %struct.musb** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @musb_g_rx(%struct.musb* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %55
  br label %79

79:                                               ; preds = %78, %30
  ret void
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @is_cppi_enabled(...) #1

declare dso_local i32 @musb_h_ep0_irq(%struct.musb*) #1

declare dso_local i32 @musb_g_ep0_irq(%struct.musb*) #1

declare dso_local i64 @is_host_capable(...) #1

declare dso_local i32 @musb_host_tx(%struct.musb*, i32) #1

declare dso_local i64 @is_peripheral_capable(...) #1

declare dso_local i32 @musb_g_tx(%struct.musb*, i32) #1

declare dso_local i32 @musb_host_rx(%struct.musb*, i32) #1

declare dso_local i32 @musb_g_rx(%struct.musb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
