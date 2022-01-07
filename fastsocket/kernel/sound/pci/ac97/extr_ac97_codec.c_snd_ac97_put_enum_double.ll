; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_enum_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_put_enum_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ac97 = type { i32 }
%struct.ac97_enum = type { i16, i16, i16, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ac97_put_enum_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_put_enum_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca %struct.ac97_enum*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ac97* %12, %struct.snd_ac97** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ac97_enum*
  store %struct.ac97_enum* %16, %struct.ac97_enum** %7, align 8
  store i16 1, i16* %10, align 2
  br label %17

17:                                               ; preds = %26, %2
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %21 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i16, i16* %10, align 2
  %28 = zext i16 %27 to i32
  %29 = shl i32 %28, 1
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %10, align 2
  br label %17

31:                                               ; preds = %17
  %32 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %40 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %39, i32 0, i32 0
  %41 = load i16, i16* %40, align 4
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %42, 1
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %134

48:                                               ; preds = %31
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %57 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %56, i32 0, i32 1
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = shl i32 %55, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %8, align 2
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %66 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = shl i32 %64, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %9, align 2
  %71 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %72 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %76 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %75, i32 0, i32 2
  %77 = load i16, i16* %76, align 4
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %48
  %81 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %89 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %88, i32 0, i32 0
  %90 = load i16, i16* %89, align 4
  %91 = zext i16 %90 to i32
  %92 = sub nsw i32 %91, 1
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %134

97:                                               ; preds = %80
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %106 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %105, i32 0, i32 2
  %107 = load i16, i16* %106, align 4
  %108 = zext i16 %107 to i32
  %109 = shl i32 %104, %108
  %110 = load i16, i16* %8, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %111, %109
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %8, align 2
  %114 = load i16, i16* %10, align 2
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %118 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %117, i32 0, i32 2
  %119 = load i16, i16* %118, align 4
  %120 = zext i16 %119 to i32
  %121 = shl i32 %116, %120
  %122 = load i16, i16* %9, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %123, %121
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %9, align 2
  br label %126

126:                                              ; preds = %97, %48
  %127 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %128 = load %struct.ac97_enum*, %struct.ac97_enum** %7, align 8
  %129 = getelementptr inbounds %struct.ac97_enum, %struct.ac97_enum* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i16, i16* %9, align 2
  %132 = load i16, i16* %8, align 2
  %133 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %127, i32 %130, i16 zeroext %131, i16 zeroext %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %126, %94, %45
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.snd_ac97* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
