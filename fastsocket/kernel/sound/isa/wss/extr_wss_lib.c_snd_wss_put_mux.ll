; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_put_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_put_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { i16*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS4231_LEFT_INPUT = common dso_local global i64 0, align 8
@CS4231_MIXS_ALL = common dso_local global i16 0, align 2
@CS4231_RIGHT_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_wss_put_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_put_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_wss*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_wss* %12, %struct.snd_wss** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %123

33:                                               ; preds = %21
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 6
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %8, align 2
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 6
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %9, align 2
  %52 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %53 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %52, i32 0, i32 1
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %57 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %56, i32 0, i32 0
  %58 = load i16*, i16** %57, align 8
  %59 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %60 = getelementptr inbounds i16, i16* %58, i64 %59
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @CS4231_MIXS_ALL, align 2
  %64 = zext i16 %63 to i32
  %65 = xor i32 %64, -1
  %66 = and i32 %62, %65
  %67 = load i16, i16* %8, align 2
  %68 = zext i16 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %8, align 2
  %71 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %72 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %71, i32 0, i32 0
  %73 = load i16*, i16** %72, align 8
  %74 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %75 = getelementptr inbounds i16, i16* %73, i64 %74
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @CS4231_MIXS_ALL, align 2
  %79 = zext i16 %78 to i32
  %80 = xor i32 %79, -1
  %81 = and i32 %77, %80
  %82 = load i16, i16* %9, align 2
  %83 = zext i16 %82 to i32
  %84 = or i32 %81, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %9, align 2
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  %88 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %89 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %88, i32 0, i32 0
  %90 = load i16*, i16** %89, align 8
  %91 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %92 = getelementptr inbounds i16, i16* %90, i64 %91
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %87, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %33
  %97 = load i16, i16* %9, align 2
  %98 = zext i16 %97 to i32
  %99 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %100 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %99, i32 0, i32 0
  %101 = load i16*, i16** %100, align 8
  %102 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %103 = getelementptr inbounds i16, i16* %101, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp ne i32 %98, %105
  br label %107

107:                                              ; preds = %96, %33
  %108 = phi i1 [ true, %33 ], [ %106, %96 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %10, align 4
  %110 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %111 = load i64, i64* @CS4231_LEFT_INPUT, align 8
  %112 = load i16, i16* %8, align 2
  %113 = call i32 @snd_wss_out(%struct.snd_wss* %110, i64 %111, i16 zeroext %112)
  %114 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %115 = load i64, i64* @CS4231_RIGHT_INPUT, align 8
  %116 = load i16, i16* %9, align 2
  %117 = call i32 @snd_wss_out(%struct.snd_wss* %114, i64 %115, i16 zeroext %116)
  %118 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %119 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %118, i32 0, i32 1
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %107, %30
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
