; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_bit_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_bit_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.oxygen* }
%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8776_bit_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_bit_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_wm87x6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 1
  %14 = load %struct.oxygen*, %struct.oxygen** %13, align 8
  store %struct.oxygen* %14, %struct.oxygen** %5, align 8
  %15 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %16 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %15, i32 0, i32 1
  %17 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %16, align 8
  store %struct.xonar_wm87x6* %17, %struct.xonar_wm87x6** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 65535
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %33 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %36 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = xor i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %2
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %62 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %60, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @wm8776_write(%struct.oxygen* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %59
  %78 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %79 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8776_write(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
