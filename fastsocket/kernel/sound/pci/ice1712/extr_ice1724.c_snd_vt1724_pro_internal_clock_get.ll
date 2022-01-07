; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_ice1712 = type { i32 (%struct.snd_ice1712*)*, i32, %struct.TYPE_4__*, i64 (%struct.snd_ice1712*)* }
%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_vt1724_pro_internal_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pro_internal_clock_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 3
  %15 = load i64 (%struct.snd_ice1712*)*, i64 (%struct.snd_ice1712*)** %14, align 8
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %17 = call i64 %15(%struct.snd_ice1712* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %24, i32* %30, align 4
  br label %76

31:                                               ; preds = %2
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %33, align 8
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %36 = call i32 %34(%struct.snd_ice1712* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %72, %31
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %44, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %43
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %64, i32* %70, align 4
  br label %75

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %43

75:                                               ; preds = %63, %43
  br label %76

76:                                               ; preds = %75, %19
  %77 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock_irq(i32* %78)
  ret i32 0
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
