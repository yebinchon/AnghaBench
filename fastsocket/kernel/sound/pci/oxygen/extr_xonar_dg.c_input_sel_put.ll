; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_input_sel_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_input_sel_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.dg* }
%struct.dg = type { i64, i32*, i32** }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@input_sel_put.sel_values = internal constant [4 x i32] [i32 128, i32 131, i32 130, i32 129], align 16
@EINVAL = common dso_local global i32 0, align 4
@CS4245_ANALOG_IN = common dso_local global i64 0, align 8
@CS4245_SEL_MASK = common dso_local global i32 0, align 4
@CS4245_PGA_A_CTRL = common dso_local global i32 0, align 4
@CS4245_PGA_B_CTRL = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_INPUT_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @input_sel_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_sel_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca %struct.dg*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load %struct.oxygen*, %struct.oxygen** %10, align 8
  store %struct.oxygen* %11, %struct.oxygen** %6, align 8
  %12 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 1
  %14 = load %struct.dg*, %struct.dg** %13, align 8
  store %struct.dg* %14, %struct.dg** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %118

26:                                               ; preds = %2
  %27 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %28 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.dg*, %struct.dg** %7, align 8
  %39 = getelementptr inbounds %struct.dg, %struct.dg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %26
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.dg*, %struct.dg** %7, align 8
  %55 = getelementptr inbounds %struct.dg, %struct.dg* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %57 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %58 = load %struct.dg*, %struct.dg** %7, align 8
  %59 = getelementptr inbounds %struct.dg, %struct.dg* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CS4245_SEL_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load %struct.dg*, %struct.dg** %7, align 8
  %68 = getelementptr inbounds %struct.dg, %struct.dg* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* @input_sel_put.sel_values, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %66, %71
  %73 = call i32 @cs4245_write(%struct.oxygen* %56, i64 %57, i32 %72)
  %74 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %75 = load i32, i32* @CS4245_PGA_A_CTRL, align 4
  %76 = load %struct.dg*, %struct.dg** %7, align 8
  %77 = getelementptr inbounds %struct.dg, %struct.dg* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load %struct.dg*, %struct.dg** %7, align 8
  %80 = getelementptr inbounds %struct.dg, %struct.dg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32*, i32** %78, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cs4245_write_cached(%struct.oxygen* %74, i32 %75, i32 %85)
  %87 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %88 = load i32, i32* @CS4245_PGA_B_CTRL, align 4
  %89 = load %struct.dg*, %struct.dg** %7, align 8
  %90 = getelementptr inbounds %struct.dg, %struct.dg* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.dg*, %struct.dg** %7, align 8
  %93 = getelementptr inbounds %struct.dg, %struct.dg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cs4245_write_cached(%struct.oxygen* %87, i32 %88, i32 %98)
  %100 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %101 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %102 = load %struct.dg*, %struct.dg** %7, align 8
  %103 = getelementptr inbounds %struct.dg, %struct.dg* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %45
  br label %109

107:                                              ; preds = %45
  %108 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ 0, %106 ], [ %108, %107 ]
  %111 = load i32, i32* @GPIO_INPUT_ROUTE, align 4
  %112 = call i32 @oxygen_write16_masked(%struct.oxygen* %100, i32 %101, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %26
  %114 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %115 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %23
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs4245_write(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @cs4245_write_cached(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
