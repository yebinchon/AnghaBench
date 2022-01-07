; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_volsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_put_volsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_put_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.snd_ac97* %17, %struct.snd_ac97** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %6, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 15
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 12
  %31 = and i32 %30, 15
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  store i32 %36, i32* %9, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %45 = call i32 @snd_ac97_page_save(%struct.snd_ac97* %42, i32 %43, %struct.snd_kcontrol* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %13, align 2
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %2
  %59 = load i32, i32* %9, align 4
  %60 = load i16, i16* %13, align 2
  %61 = zext i16 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %13, align 2
  br label %64

64:                                               ; preds = %58, %2
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %65, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %15, align 2
  %69 = load i16, i16* %13, align 2
  %70 = zext i16 %69 to i32
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %70, %71
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %13, align 2
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %64
  %78 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %84, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %14, align 2
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = load i16, i16* %14, align 2
  %93 = zext i16 %92 to i32
  %94 = sub nsw i32 %91, %93
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %14, align 2
  br label %96

96:                                               ; preds = %90, %77
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = shl i32 %97, %98
  %100 = load i16, i16* %15, align 2
  %101 = zext i16 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %15, align 2
  %104 = load i16, i16* %14, align 2
  %105 = zext i16 %104 to i32
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 %105, %106
  %108 = load i16, i16* %13, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %13, align 2
  br label %112

112:                                              ; preds = %96, %64
  %113 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i16, i16* %15, align 2
  %116 = load i16, i16* %13, align 2
  %117 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %113, i32 %114, i16 zeroext %115, i16 zeroext %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @snd_ac97_page_restore(%struct.snd_ac97* %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_page_save(%struct.snd_ac97*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_ac97_page_restore(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
