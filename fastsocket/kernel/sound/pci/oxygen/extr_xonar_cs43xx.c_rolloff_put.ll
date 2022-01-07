; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_rolloff_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_rolloff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.xonar_cs43xx* }
%struct.xonar_cs43xx = type { i32*, i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@CS4398_FILT_SEL = common dso_local global i32 0, align 4
@CS4362A_FILT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rolloff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rolloff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_cs43xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load %struct.oxygen*, %struct.oxygen** %10, align 8
  store %struct.oxygen* %11, %struct.oxygen** %5, align 8
  %12 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 1
  %14 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %13, align 8
  store %struct.xonar_cs43xx* %14, %struct.xonar_cs43xx** %6, align 8
  %15 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %16 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %6, align 8
  %19 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 7
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @CS4398_FILT_SEL, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @CS4398_FILT_SEL, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %6, align 8
  %43 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %41, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %40
  %52 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @cs4398_write(%struct.oxygen* %52, i32 7, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CS4398_FILT_SEL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %6, align 8
  %61 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CS4362A_FILT_SEL, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %8, align 4
  br label %76

67:                                               ; preds = %51
  %68 = load %struct.xonar_cs43xx*, %struct.xonar_cs43xx** %6, align 8
  %69 = getelementptr inbounds %struct.xonar_cs43xx, %struct.xonar_cs43xx* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CS4362A_FILT_SEL, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %67, %59
  %77 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @cs4362a_write(%struct.oxygen* %77, i32 4, i32 %78)
  br label %80

80:                                               ; preds = %76, %40
  %81 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %82 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs4398_write(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @cs4362a_write(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
