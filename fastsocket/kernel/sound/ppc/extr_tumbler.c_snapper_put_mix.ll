; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_snapper_put_mix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_snapper_put_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32** }

@ENODEV = common dso_local global i32 0, align 4
@mixer_volume_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snapper_put_mix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapper_put_mix(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pmac*, align 8
  %8 = alloca %struct.pmac_tumbler*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.snd_pmac* %16, %struct.snd_pmac** %7, align 8
  %17 = load %struct.snd_pmac*, %struct.snd_pmac** %7, align 8
  %18 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %17, i32 0, i32 0
  %19 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %18, align 8
  store %struct.pmac_tumbler* %19, %struct.pmac_tumbler** %8, align 8
  %20 = icmp ne %struct.pmac_tumbler* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %2
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @mixer_volume_table, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = icmp uge i32 %42, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %24
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @mixer_volume_table, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = icmp uge i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %24
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %112

55:                                               ; preds = %46
  %56 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %57 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %81, label %68

68:                                               ; preds = %55
  %69 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %70 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %77, %79
  br label %81

81:                                               ; preds = %68, %55
  %82 = phi i1 [ true, %55 ], [ %80, %68 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %90 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %88, i32* %96, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %100 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %98, i32* %106, align 4
  %107 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @snapper_set_mix_vol(%struct.pmac_tumbler* %107, i32 %108)
  br label %110

110:                                              ; preds = %86, %81
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %52, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snapper_set_mix_vol(%struct.pmac_tumbler*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
