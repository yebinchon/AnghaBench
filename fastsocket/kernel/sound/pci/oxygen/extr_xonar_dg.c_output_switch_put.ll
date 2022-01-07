; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_output_switch_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_output_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.dg* }
%struct.dg = type { i32, i32*, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@CS4245_SIGNAL_SEL = common dso_local global i64 0, align 8
@CS4245_A_OUT_SEL_MASK = common dso_local global i32 0, align 4
@CS4245_A_OUT_SEL_DAC = common dso_local global i32 0, align 4
@CS4245_A_OUT_SEL_HIZ = common dso_local global i32 0, align 4
@CS4245_DAC_A_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_B_CTRL = common dso_local global i64 0, align 8
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_HP_REAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @output_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.dg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load %struct.oxygen*, %struct.oxygen** %11, align 8
  store %struct.oxygen* %12, %struct.oxygen** %6, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 1
  %15 = load %struct.dg*, %struct.dg** %14, align 8
  store %struct.dg* %15, %struct.dg** %7, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %126

27:                                               ; preds = %2
  %28 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dg*, %struct.dg** %7, align 8
  %39 = getelementptr inbounds %struct.dg, %struct.dg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %121

45:                                               ; preds = %27
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dg*, %struct.dg** %7, align 8
  %54 = getelementptr inbounds %struct.dg, %struct.dg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dg*, %struct.dg** %7, align 8
  %56 = getelementptr inbounds %struct.dg, %struct.dg* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CS4245_A_OUT_SEL_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.dg*, %struct.dg** %7, align 8
  %65 = getelementptr inbounds %struct.dg, %struct.dg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* @CS4245_A_OUT_SEL_DAC, align 4
  br label %72

70:                                               ; preds = %45
  %71 = load i32, i32* @CS4245_A_OUT_SEL_HIZ, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %77 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @cs4245_write_cached(%struct.oxygen* %76, i64 %77, i32 %78)
  %80 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %81 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %82 = load %struct.dg*, %struct.dg** %7, align 8
  %83 = getelementptr inbounds %struct.dg, %struct.dg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = load %struct.dg*, %struct.dg** %7, align 8
  %88 = getelementptr inbounds %struct.dg, %struct.dg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  br label %91

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ 0, %90 ]
  %93 = call i32 @cs4245_write_cached(%struct.oxygen* %80, i64 %81, i32 %92)
  %94 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %95 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %96 = load %struct.dg*, %struct.dg** %7, align 8
  %97 = getelementptr inbounds %struct.dg, %struct.dg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.dg*, %struct.dg** %7, align 8
  %102 = getelementptr inbounds %struct.dg, %struct.dg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  br label %105

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ %103, %100 ], [ 0, %104 ]
  %107 = call i32 @cs4245_write_cached(%struct.oxygen* %94, i64 %95, i32 %106)
  %108 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %109 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %110 = load %struct.dg*, %struct.dg** %7, align 8
  %111 = getelementptr inbounds %struct.dg, %struct.dg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @GPIO_HP_REAR, align 4
  br label %117

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i32, i32* @GPIO_HP_REAR, align 4
  %120 = call i32 @oxygen_write16_masked(%struct.oxygen* %108, i32 %109, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %27
  %122 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %123 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %24
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs4245_write_cached(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
