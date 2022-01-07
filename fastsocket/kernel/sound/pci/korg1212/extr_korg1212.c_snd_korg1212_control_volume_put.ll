; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_control_volume_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_control_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_korg1212 = type { i64*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@k1212MinVolume = common dso_local global i32 0, align 4
@k1212MaxVolume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_korg1212_control_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_control_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_korg1212*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_korg1212* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_korg1212* %10, %struct.snd_korg1212** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %12 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @k1212MinVolume, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @k1212MaxVolume, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %26
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %45 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @abs(i32 %52) #3
  %54 = icmp ne i32 %43, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %36
  %56 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %57 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1, i32 1
  store i32 %65, i32* %8, align 4
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %77 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %75, i32* %83, align 4
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %55, %36, %26, %2
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 8
  br i1 %86, label %87, label %159

87:                                               ; preds = %84
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @k1212MinVolume, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %158

97:                                               ; preds = %87
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @k1212MaxVolume, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %158

107:                                              ; preds = %97
  %108 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %109 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %116 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @abs(i32 %124) #3
  %126 = icmp ne i32 %114, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %107
  %128 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %129 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 -1, i32 1
  store i32 %138, i32* %8, align 4
  %139 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %140 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %150 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %148, i32* %157, align 4
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %127, %107, %97, %87
  br label %159

159:                                              ; preds = %158, %84
  %160 = load %struct.snd_korg1212*, %struct.snd_korg1212** %5, align 8
  %161 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %160, i32 0, i32 1
  %162 = call i32 @spin_unlock_irq(i32* %161)
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.snd_korg1212* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
