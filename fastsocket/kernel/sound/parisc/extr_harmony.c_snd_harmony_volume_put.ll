; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_volume_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_harmony = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_harmony_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_harmony*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_harmony* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_harmony* %14, %struct.snd_harmony** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 255
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %35 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %39 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %62 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %70 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %56
  %78 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %77
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %99 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %103, %104
  %106 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %107 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %93, %56
  %112 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %113 = call i32 @snd_harmony_set_new_gain(%struct.snd_harmony* %112)
  %114 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %115 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %114, i32 0, i32 1
  %116 = call i32 @spin_unlock_irq(i32* %115)
  %117 = load %struct.snd_harmony*, %struct.snd_harmony** %5, align 8
  %118 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %120, %121
  %123 = zext i1 %122 to i32
  ret i32 %123
}

declare dso_local %struct.snd_harmony* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_harmony_set_new_gain(%struct.snd_harmony*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
