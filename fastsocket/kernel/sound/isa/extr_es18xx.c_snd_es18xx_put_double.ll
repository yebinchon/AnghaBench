; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_put_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_es18xx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %17)
  store %struct.snd_es18xx* %18, %struct.snd_es18xx** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %7, align 4
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %29 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 7
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 19
  %37 = and i32 %36, 7
  store i32 %37, i32* %9, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 24
  %42 = and i32 %41, 255
  store i32 %42, i32* %10, align 4
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 22
  %47 = and i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %54, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %13, align 1
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %64, %65
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %14, align 1
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %2
  %71 = load i32, i32* %10, align 4
  %72 = load i8, i8* %13, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %71, %73
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %13, align 1
  %76 = load i32, i32* %10, align 4
  %77 = load i8, i8* %14, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 %76, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %14, align 1
  br label %81

81:                                               ; preds = %70, %2
  %82 = load i32, i32* %8, align 4
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %13, align 1
  %87 = load i32, i32* %9, align 4
  %88 = load i8, i8* %14, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %14, align 1
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %92, %93
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %15, align 1
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = shl i32 %96, %97
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %16, align 1
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %81
  store i32 0, i32* %12, align 4
  %104 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i8, i8* %15, align 1
  %107 = load i8, i8* %13, align 1
  %108 = call zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx* %104, i32 %105, i8 zeroext %106, i8 zeroext %107)
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* %13, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 1, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %103
  %115 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i8, i8* %16, align 1
  %118 = load i8, i8* %14, align 1
  %119 = call zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx* %115, i32 %116, i8 zeroext %117, i8 zeroext %118)
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* %14, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %114
  br label %150

126:                                              ; preds = %81
  %127 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8, i8* %15, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %16, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = trunc i32 %133 to i8
  %135 = load i8, i8* %13, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %14, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = trunc i32 %139 to i8
  %141 = call zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx* %127, i32 %128, i8 zeroext %134, i8 zeroext %140)
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* %14, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %144, %146
  %148 = icmp ne i32 %142, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %126, %125
  %151 = load i32, i32* %12, align 4
  ret i32 %151
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @snd_es18xx_reg_bits(%struct.snd_es18xx*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
