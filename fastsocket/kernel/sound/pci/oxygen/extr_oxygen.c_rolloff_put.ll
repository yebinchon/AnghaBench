; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_rolloff_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_rolloff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.generic_data* }
%struct.generic_data = type { i32, i32** }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@AK4396_CONTROL_2 = common dso_local global i64 0, align 8
@AK4396_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rolloff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rolloff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.generic_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 0
  %12 = load %struct.oxygen*, %struct.oxygen** %11, align 8
  store %struct.oxygen* %12, %struct.oxygen** %5, align 8
  %13 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 1
  %15 = load %struct.generic_data*, %struct.generic_data** %14, align 8
  store %struct.generic_data* %15, %struct.generic_data** %6, align 8
  %16 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %17 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.generic_data*, %struct.generic_data** %6, align 8
  %20 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AK4396_CONTROL_2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @AK4396_SLOW, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* @AK4396_SLOW, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.generic_data*, %struct.generic_data** %6, align 8
  %47 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @AK4396_CONTROL_2, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %45, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.generic_data*, %struct.generic_data** %6, align 8
  %62 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* @AK4396_CONTROL_2, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ak4396_write(%struct.oxygen* %66, i32 %67, i64 %68, i32 %69)
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %59

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %44
  %76 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %77 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ak4396_write(%struct.oxygen*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
