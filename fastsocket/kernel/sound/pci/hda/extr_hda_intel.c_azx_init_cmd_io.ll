; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_init_cmd_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_init_cmd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i32* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@CORBLBASE = common dso_local global i32 0, align 4
@CORBUBASE = common dso_local global i32 0, align 4
@CORBSIZE = common dso_local global i32 0, align 4
@CORBWP = common dso_local global i32 0, align 4
@CORBRP = common dso_local global i32 0, align 4
@ICH6_CORBRP_RST = common dso_local global i32 0, align 4
@CORBCTL = common dso_local global i32 0, align 4
@ICH6_CORBCTL_RUN = common dso_local global i32 0, align 4
@RIRBLBASE = common dso_local global i32 0, align 4
@RIRBUBASE = common dso_local global i32 0, align 4
@RIRBSIZE = common dso_local global i32 0, align 4
@RIRBWP = common dso_local global i32 0, align 4
@ICH6_RIRBWP_RST = common dso_local global i32 0, align 4
@AZX_DCAPS_CTX_WORKAROUND = common dso_local global i32 0, align 4
@RINTCNT = common dso_local global i32 0, align 4
@RIRBCTL = common dso_local global i32 0, align 4
@ICH6_RBCTL_DMA_EN = common dso_local global i32 0, align 4
@ICH6_RBCTL_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @azx_init_cmd_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_init_cmd_io(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  store %struct.azx* %0, %struct.azx** %2, align 8
  %3 = load %struct.azx*, %struct.azx** %2, align 8
  %4 = getelementptr inbounds %struct.azx, %struct.azx* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.azx*, %struct.azx** %2, align 8
  %7 = getelementptr inbounds %struct.azx, %struct.azx* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.azx*, %struct.azx** %2, align 8
  %11 = getelementptr inbounds %struct.azx, %struct.azx* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.azx*, %struct.azx** %2, align 8
  %14 = getelementptr inbounds %struct.azx, %struct.azx* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.azx*, %struct.azx** %2, align 8
  %19 = getelementptr inbounds %struct.azx, %struct.azx* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32* %17, i32** %20, align 8
  %21 = load %struct.azx*, %struct.azx** %2, align 8
  %22 = load i32, i32* @CORBLBASE, align 4
  %23 = load %struct.azx*, %struct.azx** %2, align 8
  %24 = getelementptr inbounds %struct.azx, %struct.azx* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @azx_writel(%struct.azx* %21, i32 %22, i32 %27)
  %29 = load %struct.azx*, %struct.azx** %2, align 8
  %30 = load i32, i32* @CORBUBASE, align 4
  %31 = load %struct.azx*, %struct.azx** %2, align 8
  %32 = getelementptr inbounds %struct.azx, %struct.azx* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @upper_32_bits(i64 %34)
  %36 = call i32 @azx_writel(%struct.azx* %29, i32 %30, i32 %35)
  %37 = load %struct.azx*, %struct.azx** %2, align 8
  %38 = load i32, i32* @CORBSIZE, align 4
  %39 = call i32 @azx_writeb(%struct.azx* %37, i32 %38, i32 2)
  %40 = load %struct.azx*, %struct.azx** %2, align 8
  %41 = load i32, i32* @CORBWP, align 4
  %42 = call i32 @azx_writew(%struct.azx* %40, i32 %41, i32 0)
  %43 = load %struct.azx*, %struct.azx** %2, align 8
  %44 = load i32, i32* @CORBRP, align 4
  %45 = load i32, i32* @ICH6_CORBRP_RST, align 4
  %46 = call i32 @azx_writew(%struct.azx* %43, i32 %44, i32 %45)
  %47 = load %struct.azx*, %struct.azx** %2, align 8
  %48 = load i32, i32* @CORBCTL, align 4
  %49 = load i32, i32* @ICH6_CORBCTL_RUN, align 4
  %50 = call i32 @azx_writeb(%struct.azx* %47, i32 %48, i32 %49)
  %51 = load %struct.azx*, %struct.azx** %2, align 8
  %52 = getelementptr inbounds %struct.azx, %struct.azx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 2048
  %56 = load %struct.azx*, %struct.azx** %2, align 8
  %57 = getelementptr inbounds %struct.azx, %struct.azx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.azx*, %struct.azx** %2, align 8
  %60 = getelementptr inbounds %struct.azx, %struct.azx* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 2048
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.azx*, %struct.azx** %2, align 8
  %66 = getelementptr inbounds %struct.azx, %struct.azx* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32* %64, i32** %67, align 8
  %68 = load %struct.azx*, %struct.azx** %2, align 8
  %69 = getelementptr inbounds %struct.azx, %struct.azx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.azx*, %struct.azx** %2, align 8
  %72 = getelementptr inbounds %struct.azx, %struct.azx* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.azx*, %struct.azx** %2, align 8
  %75 = getelementptr inbounds %struct.azx, %struct.azx* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memset(i32 %77, i32 0, i32 4)
  %79 = load %struct.azx*, %struct.azx** %2, align 8
  %80 = load i32, i32* @RIRBLBASE, align 4
  %81 = load %struct.azx*, %struct.azx** %2, align 8
  %82 = getelementptr inbounds %struct.azx, %struct.azx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @azx_writel(%struct.azx* %79, i32 %80, i32 %85)
  %87 = load %struct.azx*, %struct.azx** %2, align 8
  %88 = load i32, i32* @RIRBUBASE, align 4
  %89 = load %struct.azx*, %struct.azx** %2, align 8
  %90 = getelementptr inbounds %struct.azx, %struct.azx* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @upper_32_bits(i64 %92)
  %94 = call i32 @azx_writel(%struct.azx* %87, i32 %88, i32 %93)
  %95 = load %struct.azx*, %struct.azx** %2, align 8
  %96 = load i32, i32* @RIRBSIZE, align 4
  %97 = call i32 @azx_writeb(%struct.azx* %95, i32 %96, i32 2)
  %98 = load %struct.azx*, %struct.azx** %2, align 8
  %99 = load i32, i32* @RIRBWP, align 4
  %100 = load i32, i32* @ICH6_RIRBWP_RST, align 4
  %101 = call i32 @azx_writew(%struct.azx* %98, i32 %99, i32 %100)
  %102 = load %struct.azx*, %struct.azx** %2, align 8
  %103 = getelementptr inbounds %struct.azx, %struct.azx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @AZX_DCAPS_CTX_WORKAROUND, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %1
  %109 = load %struct.azx*, %struct.azx** %2, align 8
  %110 = load i32, i32* @RINTCNT, align 4
  %111 = call i32 @azx_writew(%struct.azx* %109, i32 %110, i32 192)
  br label %116

112:                                              ; preds = %1
  %113 = load %struct.azx*, %struct.azx** %2, align 8
  %114 = load i32, i32* @RINTCNT, align 4
  %115 = call i32 @azx_writew(%struct.azx* %113, i32 %114, i32 1)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.azx*, %struct.azx** %2, align 8
  %118 = load i32, i32* @RIRBCTL, align 4
  %119 = load i32, i32* @ICH6_RBCTL_DMA_EN, align 4
  %120 = load i32, i32* @ICH6_RBCTL_IRQ_EN, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @azx_writeb(%struct.azx* %117, i32 %118, i32 %121)
  %123 = load %struct.azx*, %struct.azx** %2, align 8
  %124 = getelementptr inbounds %struct.azx, %struct.azx* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock_irq(i32* %124)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @azx_writeb(%struct.azx*, i32, i32) #1

declare dso_local i32 @azx_writew(%struct.azx*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
