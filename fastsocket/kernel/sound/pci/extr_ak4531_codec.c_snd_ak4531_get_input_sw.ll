; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_get_input_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_get_input_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ak4531 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ak4531_get_input_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ak4531_get_input_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ak4531*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_ak4531* %11, %struct.snd_ak4531** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 15
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 15
  store i32 %30, i32* %9, align 4
  %31 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %43, i32* %49, align 4
  %50 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %51 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 1
  %60 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %72, %73
  %75 = and i32 %74, 1
  %76 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %77 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %75, i32* %81, align 4
  %82 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %83 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %88, %89
  %91 = and i32 %90, 1
  %92 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %93 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %91, i32* %97, align 4
  %98 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  ret i32 0
}

declare dso_local %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
