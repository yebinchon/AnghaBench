; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_corb_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_corb_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_bus = type { %struct.azx* }
%struct.azx = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@CORBWP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICH6_MAX_CORB_ENTRIES = common dso_local global i32 0, align 4
@CORBRP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_bus*, i32)* @azx_corb_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_corb_send_cmd(%struct.hda_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.azx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_bus* %0, %struct.hda_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %11 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %10, i32 0, i32 0
  %12 = load %struct.azx*, %struct.azx** %11, align 8
  store %struct.azx* %12, %struct.azx** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @azx_command_addr(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.azx*, %struct.azx** %6, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.azx*, %struct.azx** %6, align 8
  %19 = load i32, i32* @CORBWP, align 4
  %20 = call i32 @azx_readw(%struct.azx* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 65535
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.azx*, %struct.azx** %6, align 8
  %25 = getelementptr inbounds %struct.azx, %struct.azx* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @ICH6_MAX_CORB_ENTRIES, align 4
  %33 = load i32, i32* %8, align 4
  %34 = urem i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.azx*, %struct.azx** %6, align 8
  %36 = load i32, i32* @CORBRP, align 4
  %37 = call i32 @azx_readw(%struct.azx* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load %struct.azx*, %struct.azx** %6, align 8
  %43 = getelementptr inbounds %struct.azx, %struct.azx* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %29
  %48 = load %struct.azx*, %struct.azx** %6, align 8
  %49 = getelementptr inbounds %struct.azx, %struct.azx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.azx*, %struct.azx** %6, align 8
  %60 = getelementptr inbounds %struct.azx, %struct.azx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = load %struct.azx*, %struct.azx** %6, align 8
  %67 = load i32, i32* @CORBWP, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @azx_writel(%struct.azx* %66, i32 %67, i32 %68)
  %70 = load %struct.azx*, %struct.azx** %6, align 8
  %71 = getelementptr inbounds %struct.azx, %struct.azx* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_irq(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %47, %41, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @azx_command_addr(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @azx_readw(%struct.azx*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
