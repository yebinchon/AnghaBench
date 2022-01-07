; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_maya_sw_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_maya_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_maya44 = type { i32, i32, %struct.snd_wm8776* }
%struct.snd_wm8776 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @maya_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maya_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_maya44*, align 8
  %6 = alloca %struct.snd_wm8776*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_maya44* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_maya44* %12, %struct.snd_maya44** %5, align 8
  %13 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %14 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %13, i32 0, i32 2
  %15 = load %struct.snd_wm8776*, %struct.snd_wm8776** %14, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 1
  %19 = call i64 @snd_ctl_get_ioff(%struct.snd_kcontrol* %16, i32* %18)
  %20 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %15, i64 %19
  store %struct.snd_wm8776* %20, %struct.snd_wm8776** %6, align 8
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_SW_VAL_IDX(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %26 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %33 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %48 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %2
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GET_SW_VAL_MASK(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %57 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GET_SW_VAL_REG(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %51
  %68 = load i32, i32* %8, align 4
  br label %70

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = call i32 @wm8776_write_bits(i32 %58, %struct.snd_wm8776* %59, i32 %63, i32 %64, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.snd_maya44*, %struct.snd_maya44** %5, align 8
  %74 = getelementptr inbounds %struct.snd_maya44, %struct.snd_maya44* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local %struct.snd_maya44* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @GET_SW_VAL_IDX(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GET_SW_VAL_MASK(i32) #1

declare dso_local i32 @wm8776_write_bits(i32, %struct.snd_wm8776*, i32, i32, i32) #1

declare dso_local i32 @GET_SW_VAL_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
