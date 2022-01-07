; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@mt9t013_sem = common dso_local global i32 0, align 4
@mt9t013_ctrl = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"mt9t013_release completed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9t013_sensor_release() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EBADF, align 4
  %3 = sub nsw i32 0, %2
  store i32 %3, i32* %1, align 4
  %4 = call i32 @down(i32* @mt9t013_sem)
  %5 = call i32 (...) @mt9t013_poweroff_af()
  %6 = call i32 (...) @mt9t013_power_down()
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9t013_ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9t013_ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_free(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt9t013_ctrl, align 8
  %20 = call i32 @kfree(%struct.TYPE_5__* %19)
  %21 = call i32 @up(i32* @mt9t013_sem)
  %22 = call i32 @CDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @mt9t013_poweroff_af(...) #1

declare dso_local i32 @mt9t013_power_down(...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @CDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
