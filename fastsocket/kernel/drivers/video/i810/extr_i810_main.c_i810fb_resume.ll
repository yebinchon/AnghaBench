; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810fb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { %struct.TYPE_8__*, %struct.i810fb_par* }
%struct.TYPE_8__ = type { i32 (i32, %struct.fb_info*)* }
%struct.i810fb_par = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@PM_EVENT_ON = common dso_local global i32 0, align 4
@PM_EVENT_FREEZE = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@VESA_NO_BLANKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @i810fb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810fb_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.i810fb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.i810fb_par*, %struct.i810fb_par** %10, align 8
  store %struct.i810fb_par* %11, %struct.i810fb_par** %5, align 8
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PM_EVENT_ON, align 4
  %16 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %17 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PM_EVENT_FREEZE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @PCI_D0, align 4
  %24 = call i32 @pci_set_power_state(%struct.pci_dev* %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  %26 = call i32 (...) @acquire_console_sem()
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_set_power_state(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pci_restore_state(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i64 @pci_enable_device(%struct.pci_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %69

36:                                               ; preds = %25
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @pci_set_master(%struct.pci_dev* %37)
  %39 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %40 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %44 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @agp_bind_memory(i32 %42, i32 %46)
  %48 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %49 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %53 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @agp_bind_memory(i32 %51, i32 %55)
  %57 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %58 = call i32 @i810fb_set_par(%struct.fb_info* %57)
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = call i32 @fb_set_suspend(%struct.fb_info* %59, i32 0)
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32 (i32, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)** %64, align 8
  %66 = load i32, i32* @VESA_NO_BLANKING, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = call i32 %65(i32 %66, %struct.fb_info* %67)
  br label %69

69:                                               ; preds = %36, %35
  %70 = call i32 (...) @release_console_sem()
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @agp_bind_memory(i32, i32) #1

declare dso_local i32 @i810fb_set_par(%struct.fb_info*) #1

declare dso_local i32 @fb_set_suspend(%struct.fb_info*, i32) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
