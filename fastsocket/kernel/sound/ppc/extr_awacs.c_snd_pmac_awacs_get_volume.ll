; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_get_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_get_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_pmac_awacs_get_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_awacs_get_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_pmac* %12, %struct.snd_pmac** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %27, i32 0, i32 1
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 15
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %2
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 15, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 15, %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %2
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %68, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %76, i32* %82, align 4
  ret i32 0
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
