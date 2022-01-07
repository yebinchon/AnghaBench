; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_get_native_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_get_native_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.cmipci = type { i32, i64 }
%struct.cmipci_sb_reg = type { i8, i8, i8, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_get_native_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_get_native_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_sb_reg, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.cmipci* %10, %struct.cmipci** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg* %6, i32 %13)
  %15 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %16 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %19 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %20, %22
  %24 = call zeroext i8 @inb(i64 %23)
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %26, %29
  %31 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %30, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %42, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  br label %47

47:                                               ; preds = %39, %2
  %48 = load i8, i8* %8, align 1
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %48, i8* %54, align 1
  %55 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %47
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 2
  %62 = load i8, i8* %61, align 2
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %60, %63
  %65 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %64, %67
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  %70 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.cmipci_sb_reg, %struct.cmipci_sb_reg* %6, i32 0, i32 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 %76, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %8, align 1
  br label %81

81:                                               ; preds = %73, %58
  %82 = load i8, i8* %8, align 1
  %83 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %84 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %82, i8* %88, align 1
  br label %89

89:                                               ; preds = %81, %47
  %90 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %91 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock_irq(i32* %91)
  ret i32 0
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cmipci_sb_reg_decode(%struct.cmipci_sb_reg*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
