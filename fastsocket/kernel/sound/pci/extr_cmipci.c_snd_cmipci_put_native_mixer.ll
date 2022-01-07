; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_native_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_put_native_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.cmipci = type { i32, i64 }
%struct.cmipci_sb_reg = type { i8, i8, i8, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_put_native_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_put_native_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_sb_reg, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.cmipci* %11, %struct.cmipci** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg* %6, i32 %14)
  %16 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %17 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %20 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %21, %23
  %25 = call zeroext i8 @inb(i64 %24)
  store i8 %25, i8* %7, align 1
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = and i32 %33, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %45, %47
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %9, align 1
  br label %50

50:                                               ; preds = %42, %2
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %55, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %52, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %8, align 1
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %64, %67
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  %73 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %50
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %86 = load i8, i8* %85, align 8
  %87 = zext i8 %86 to i32
  %88 = and i32 %84, %87
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %9, align 1
  %90 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %9, align 1
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %96, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %9, align 1
  br label %101

101:                                              ; preds = %93, %76
  %102 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %103 = load i8, i8* %102, align 8
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %106 = load i8, i8* %105, align 2
  %107 = zext i8 %106 to i32
  %108 = shl i32 %104, %107
  %109 = xor i32 %108, -1
  %110 = load i8, i8* %8, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, %109
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %8, align 1
  %114 = load i8, i8* %9, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %117 = load i8, i8* %116, align 2
  %118 = zext i8 %117 to i32
  %119 = shl i32 %115, %118
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %119
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %8, align 1
  br label %124

124:                                              ; preds = %101, %50
  %125 = load i8, i8* %8, align 1
  %126 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %127 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %128, %130
  %132 = call i32 @outb(i8 zeroext %125, i64 %131)
  %133 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %134 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock_irq(i32* %134)
  %136 = load i8, i8* %8, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %7, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %137, %139
  %141 = zext i1 %140 to i32
  ret i32 %141
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
