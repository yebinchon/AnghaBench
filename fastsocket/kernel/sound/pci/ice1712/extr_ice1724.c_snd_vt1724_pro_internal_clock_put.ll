; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.snd_ice1712 = type { i32 (%struct.snd_ice1712*)*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32 (%struct.snd_ice1712*)*, i64 (%struct.snd_ice1712*)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_10__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_9__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_vt1724_pro_internal_clock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pro_internal_clock_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %6, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %152

32:                                               ; preds = %2
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %34 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %33, i32 0, i32 5
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 8
  %38 = load i64 (%struct.snd_ice1712*)*, i64 (%struct.snd_ice1712*)** %37, align 8
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %40 = call i64 %38(%struct.snd_ice1712* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %45 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %45, align 8
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %48 = call i32 %46(%struct.snd_ice1712* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %55 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %54, i32 0, i32 7
  %56 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %55, align 8
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %58 = call i32 %56(%struct.snd_ice1712* %57)
  store i32 0, i32* %8, align 4
  br label %83

59:                                               ; preds = %49
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %61 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %60, i32 0, i32 6
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %73 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %72, i32 0, i32 5
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %76 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %77 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712* %75, i32 %78, i32 1)
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 5
  %82 = call i32 @spin_lock_irq(i32* %81)
  br label %83

83:                                               ; preds = %59, %53
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %85 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %84, i32 0, i32 5
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %147

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %147, label %93

93:                                               ; preds = %90
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %95 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %96, align 8
  %98 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %101 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %102, align 8
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %105 = bitcast %struct.snd_ice1712* %104 to %struct.snd_ice1712.0*
  %106 = call i32 %103(%struct.snd_ice1712.0* %105, i32 0)
  br label %107

107:                                              ; preds = %99, %93
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %143, %107
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %111 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %108
  %115 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %116 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %115, i32 0, i32 3
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %122, align 8
  %124 = icmp ne i32 (%struct.TYPE_12__*, i32)* %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %114
  %126 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %127 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %126, i32 0, i32 3
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %133, align 8
  %135 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %136 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %135, i32 0, i32 3
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = call i32 %134(%struct.TYPE_12__* %140, i32 0)
  br label %142

142:                                              ; preds = %125, %114
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %108

146:                                              ; preds = %108
  br label %147

147:                                              ; preds = %146, %90, %83
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %148, %149
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %147, %29
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
