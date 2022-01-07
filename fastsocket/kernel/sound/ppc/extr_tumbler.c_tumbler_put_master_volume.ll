; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_put_master_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_put_master_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32* }

@master_volume_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_put_master_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_put_master_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca %struct.pmac_tumbler*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pmac* %11, %struct.snd_pmac** %6, align 8
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 0
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %13, align 8
  store %struct.pmac_tumbler* %14, %struct.pmac_tumbler** %7, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @master_volume_table, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = icmp uge i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @master_volume_table, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = icmp uge i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %85

45:                                               ; preds = %36
  %46 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %47 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %56 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %59, %61
  br label %63

63:                                               ; preds = %54, %45
  %64 = phi i1 [ true, %45 ], [ %62, %54 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %72 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %78 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %82 = call i32 @tumbler_set_master_volume(%struct.pmac_tumbler* %81)
  br label %83

83:                                               ; preds = %68, %63
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %42
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tumbler_set_master_volume(%struct.pmac_tumbler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
