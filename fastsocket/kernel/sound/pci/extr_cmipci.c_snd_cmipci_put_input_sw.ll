; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_input_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_input_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci = type { i32 }
%struct.cmipci_sb_reg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_put_input_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_put_input_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_sb_reg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.cmipci* %13, %struct.cmipci** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg* %6, i32 %16)
  %18 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %19 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %22 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %26 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %25, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %32, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %29, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %42, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %39, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %63 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %82, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 1
  %96 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %2
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %105, %106
  br label %108

108:                                              ; preds = %104, %2
  %109 = phi i1 [ true, %2 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %112 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %111, i32 %113, i32 %114)
  %116 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %117 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %116, i32 %118, i32 %119)
  %121 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %122 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock_irq(i32* %122)
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_mixer_read(%struct.cmipci*, i32) #1

declare dso_local i32 @snd_cmipci_mixer_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
