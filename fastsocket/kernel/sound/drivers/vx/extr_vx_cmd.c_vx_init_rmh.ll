; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_cmd.c_vx_init_rmh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_cmd.c_vx_init_rmh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.vx_rmh = type { i32*, i32, i32, i32 }

@CMD_LAST_INDEX = common dso_local global i32 0, align 4
@vx_dsp_cmds = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vx_init_rmh(%struct.vx_rmh* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_rmh*, align 8
  %4 = alloca i32, align 4
  store %struct.vx_rmh* %0, %struct.vx_rmh** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CMD_LAST_INDEX, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vx_dsp_cmds, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vx_rmh*, %struct.vx_rmh** %3, align 8
  %20 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vx_dsp_cmds, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vx_rmh*, %struct.vx_rmh** %3, align 8
  %28 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vx_dsp_cmds, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vx_rmh*, %struct.vx_rmh** %3, align 8
  %36 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vx_dsp_cmds, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vx_rmh*, %struct.vx_rmh** %3, align 8
  %44 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
