; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci = type { i32 }
%struct.cmipci_sb_reg = type { i32, i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_sb_reg, align 8
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
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %51, %53
  store i32 %54, i32* %9, align 4
  %55 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %44
  %64 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %69

68:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %71 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %74 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %73, i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %79, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %77, %83
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %69
  %95 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %102 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %101, i64 %103, i32 %104)
  %106 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %107 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @snd_cmipci_mixer_read(%struct.cmipci* %106, i64 %108)
  store i32 %109, i32* %11, align 4
  br label %112

110:                                              ; preds = %94
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %115, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %113, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %130 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %129, i64 %131, i32 %132)
  br label %140

134:                                              ; preds = %69
  %135 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %136 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %135, i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %112
  %141 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %142 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_irq(i32* %142)
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_mixer_read(%struct.cmipci*, i64) #1

declare dso_local i32 @snd_cmipci_mixer_write(%struct.cmipci*, i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
