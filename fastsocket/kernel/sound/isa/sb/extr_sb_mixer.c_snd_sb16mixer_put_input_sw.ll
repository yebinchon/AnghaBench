; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sb16mixer_put_input_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sb16mixer_put_input_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sb16mixer_put_input_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb16mixer_put_input_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.snd_sb* %17, %struct.snd_sb** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 15
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 15
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %38 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %41, i32 %42)
  store i8 %43, i8* %14, align 1
  %44 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call zeroext i8 @snd_sbmixer_read(%struct.snd_sb* %44, i32 %45)
  store i8 %46, i8* %15, align 1
  %47 = load i8, i8* %14, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %48, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %12, align 1
  %57 = load i8, i8* %15, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = or i32 %60, %62
  %64 = xor i32 %63, -1
  %65 = and i32 %58, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %13, align 1
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %74, %75
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %12, align 1
  %81 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 %88, %89
  %91 = load i8, i8* %13, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %13, align 1
  %95 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %96 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 %102, %103
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %104
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %12, align 1
  %109 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %110 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 %116, %117
  %119 = load i8, i8* %13, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %13, align 1
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* %14, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %2
  %129 = load i8, i8* %13, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %15, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %130, %132
  br label %134

134:                                              ; preds = %128, %2
  %135 = phi i1 [ true, %2 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i8, i8* %12, align 1
  %143 = call i32 @snd_sbmixer_write(%struct.snd_sb* %140, i32 %141, i8 zeroext %142)
  %144 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i8, i8* %13, align 1
  %147 = call i32 @snd_sbmixer_write(%struct.snd_sb* %144, i32 %145, i8 zeroext %146)
  br label %148

148:                                              ; preds = %139, %134
  %149 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %150 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %149, i32 0, i32 0
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
