; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_get_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ak4531 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ak4531_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ak4531_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ak4531*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_ak4531* %15, %struct.snd_ak4531** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 7
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 19
  %34 = and i32 %33, 7
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  store i32 %39, i32* %10, align 4
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 22
  %44 = and i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %60 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %2
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %75, %2
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %85 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %92 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %90, i32* %96, align 4
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
