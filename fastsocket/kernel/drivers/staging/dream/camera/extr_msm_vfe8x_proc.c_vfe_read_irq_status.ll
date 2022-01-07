; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_read_irq_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_read_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.vfe_irq_thread_msg = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@VFE_IRQ_STATUS = common dso_local global i64 0, align 8
@CAMIF_STATUS = common dso_local global i64 0, align 8
@CAMIF_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"camifStatus  = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_irq_thread_msg*)* @vfe_read_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_read_irq_status(%struct.vfe_irq_thread_msg* %0) #0 {
  %2 = alloca %struct.vfe_irq_thread_msg*, align 8
  %3 = alloca i32*, align 8
  store %struct.vfe_irq_thread_msg* %0, %struct.vfe_irq_thread_msg** %2, align 8
  %4 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %2, align 8
  %5 = call i32 @memset(%struct.vfe_irq_thread_msg* %4, i32 0, i32 80)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VFE_IRQ_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @readl(i32* %12)
  %14 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %2, align 8
  %15 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CAMIF_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @readl(i32* %22)
  %24 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %2, align 8
  %25 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAMIF_COMMAND, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 7, i64 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CAMIF_COMMAND, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 3, i64 %36)
  %38 = load %struct.vfe_irq_thread_msg*, %struct.vfe_irq_thread_msg** %2, align 8
  %39 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @CDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %40)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_irq_thread_msg*, i32, i32) #1

declare dso_local i8* @readl(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CDBG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
