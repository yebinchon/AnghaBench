; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i8*, %struct.TYPE_5__, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ctrl = common dso_local global %struct.TYPE_8__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@VFE_REG_UPDATE_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_update() #0 {
  %1 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 5
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %4, %8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = call i32 @vfe_reg_module_cfg(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = call i32 @vfe_program_stats_cmd(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vfe_irq_pack(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vfe_program_irq_mask(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8*, i8** @TRUE, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @FALSE, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i8*, i8** @TRUE, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @TRUE, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @vfe_reg_bus_cmd(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %43, %37, %0
  %55 = load i32, i32* @VFE_REG_UPDATE_TRIGGER, align 4
  %56 = call i32 @vfe_program_reg_update_cmd(i32 %55)
  ret void
}

declare dso_local i32 @vfe_reg_module_cfg(%struct.TYPE_5__*) #1

declare dso_local i32 @vfe_program_stats_cmd(%struct.TYPE_7__*) #1

declare dso_local i32 @vfe_irq_pack(i32) #1

declare dso_local i32 @vfe_program_irq_mask(i32) #1

declare dso_local i32 @vfe_reg_bus_cmd(%struct.TYPE_6__*) #1

declare dso_local i32 @vfe_program_reg_update_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
