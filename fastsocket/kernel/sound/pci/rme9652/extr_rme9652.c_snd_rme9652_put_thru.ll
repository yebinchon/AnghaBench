; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_put_thru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_put_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_rme9652 = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_rme9652_put_thru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_put_thru(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_rme9652* %11, %struct.snd_rme9652** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %13 = call i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %22 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %47 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %51 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %60 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %78

70:                                               ; preds = %63
  %71 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = call i32 @rme9652_set_thru(%struct.snd_rme9652* %71, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %69
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %57

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %45
  %83 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %84 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock_irq(i32* %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.snd_rme9652* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_rme9652_use_is_exclusive(%struct.snd_rme9652*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rme9652_set_thru(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
