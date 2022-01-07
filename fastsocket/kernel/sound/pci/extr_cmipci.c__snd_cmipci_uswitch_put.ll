; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c__snd_cmipci_uswitch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c__snd_cmipci_uswitch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.cmipci_switch_args = type { i32, i32, i64, i64, i64 }
%struct.cmipci = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*, %struct.cmipci_switch_args*)* @_snd_cmipci_uswitch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_cmipci_uswitch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1, %struct.cmipci_switch_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_ctl_elem_value*, align 8
  %7 = alloca %struct.cmipci_switch_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmipci*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %6, align 8
  store %struct.cmipci_switch_args* %2, %struct.cmipci_switch_args** %7, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %12 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.cmipci* %12, %struct.cmipci** %10, align 8
  %13 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %14 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %17 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %22 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %27 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  store i32 0, i32* %4, align 4
  br label %143

29:                                               ; preds = %20, %3
  %30 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %31 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %36 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %39 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @inb(i64 %41)
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %45 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %46 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @snd_cmipci_read(%struct.cmipci* %44, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %34
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %52 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %50, %53
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %65 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %76

67:                                               ; preds = %49
  %68 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %69 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %72 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  br label %76

76:                                               ; preds = %67, %63
  %77 = phi i32 [ %66, %63 ], [ %75, %67 ]
  %78 = icmp ne i32 %54, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %138

82:                                               ; preds = %76
  %83 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %84 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %6, align 8
  %90 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %99 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %114

103:                                              ; preds = %82
  %104 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %105 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %108 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %106, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %103, %97
  %115 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %116 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i32, i32* %8, align 4
  %121 = trunc i32 %120 to i8
  %122 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %123 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %126 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = call i32 @outb(i8 zeroext %121, i64 %128)
  br label %137

130:                                              ; preds = %114
  %131 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %132 = load %struct.cmipci_switch_args*, %struct.cmipci_switch_args** %7, align 8
  %133 = getelementptr inbounds %struct.cmipci_switch_args, %struct.cmipci_switch_args* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @snd_cmipci_write(%struct.cmipci* %131, i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %119
  br label %138

138:                                              ; preds = %137, %76
  %139 = load %struct.cmipci*, %struct.cmipci** %10, align 8
  %140 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock_irq(i32* %140)
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %138, %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
