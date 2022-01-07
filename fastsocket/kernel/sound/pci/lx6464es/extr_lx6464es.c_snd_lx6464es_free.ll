; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_snd_lx6464es_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx6464es.c_snd_lx6464es_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"->snd_lx6464es_free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @snd_lx6464es_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_lx6464es_free(%struct.lx6464es* %0) #0 {
  %2 = alloca %struct.lx6464es*, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %2, align 8
  %3 = call i32 @snd_printdd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %5 = call i32 @lx_irq_disable(%struct.lx6464es* %4)
  %6 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %7 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %12 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.lx6464es* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %22 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ioport_unmap(i32 %23)
  %25 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %26 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_release_regions(i32 %27)
  %29 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %30 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_disable_device(i32 %31)
  %33 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %34 = call i32 @kfree(%struct.lx6464es* %33)
  ret i32 0
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @lx_irq_disable(%struct.lx6464es*) #1

declare dso_local i32 @free_irq(i64, %struct.lx6464es*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @ioport_unmap(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.lx6464es*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
