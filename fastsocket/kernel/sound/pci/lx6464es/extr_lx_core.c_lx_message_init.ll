; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_message_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_message_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.lx_rmh = type { i32, i32*, i32*, i32, i32, i32 }

@CMD_14_INVALID = common dso_local global i32 0, align 4
@dsp_commands = common dso_local global %struct.TYPE_2__* null, align 8
@REG_CRM_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lx_rmh*, i32)* @lx_message_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lx_message_init(%struct.lx_rmh* %0, i32 %1) #0 {
  %3 = alloca %struct.lx_rmh*, align 8
  %4 = alloca i32, align 4
  store %struct.lx_rmh* %0, %struct.lx_rmh** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CMD_14_INVALID, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @snd_BUG_ON(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsp_commands, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %17 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsp_commands, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %27 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsp_commands, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %35 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dsp_commands, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %43 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %46 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lx_rmh*, %struct.lx_rmh** %3, align 8
  %48 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* @REG_CRM_NUMBER, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i32* %50, i32 0, i32 %55)
  ret void
}

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
