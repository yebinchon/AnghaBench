; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_shared_spdif_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emumixer.c_snd_emu10k1_shared_spdif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_emu10k1 = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@A_IOCFG = common dso_local global i64 0, align 8
@A_IOCFG_GPOUT0 = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@HCFG_GPOUT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_emu10k1_shared_spdif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_shared_spdif_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %89

43:                                               ; preds = %31
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @A_IOCFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inl(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @A_IOCFG_GPOUT0, align 4
  br label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @A_IOCFG_GPOUT0, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load i32, i32* @A_IOCFG_GPOUT0, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %82 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @A_IOCFG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outl(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %70, %60
  br label %88

88:                                               ; preds = %87, %43
  br label %89

89:                                               ; preds = %88, %42
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HCFG, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @inl(i64 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @HCFG_GPOUT0, align 4
  br label %101

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @HCFG_GPOUT0, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %101
  %114 = load i32, i32* @HCFG_GPOUT0, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %125 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HCFG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outl(i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %113, %101
  %131 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %132 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %131, i32 0, i32 0
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
