; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_file = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, %struct.snd_kcontrol_volatile* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_kcontrol_volatile = type { i32, %struct.snd_ctl_file* }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_ctl_file*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_write(%struct.snd_card* %0, %struct.snd_ctl_file* %1, %struct.snd_ctl_elem_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_ctl_file*, align 8
  %7 = alloca %struct.snd_ctl_elem_value*, align 8
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_kcontrol_volatile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_ctl_file* %1, %struct.snd_ctl_file** %6, align 8
  store %struct.snd_ctl_elem_value* %2, %struct.snd_ctl_elem_value** %7, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %15, i32* %17)
  store %struct.snd_kcontrol* %18, %struct.snd_kcontrol** %8, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %20 = icmp eq %struct.snd_kcontrol* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 1
  %31 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %31, i64 %33
  store %struct.snd_kcontrol_volatile* %34, %struct.snd_kcontrol_volatile** %9, align 8
  %35 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %24
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %43 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %42, i32 0, i32 0
  %44 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %43, align 8
  %45 = icmp eq i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %6, align 8
  %48 = icmp ne %struct.snd_ctl_file* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %50, i32 0, i32 1
  %52 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %51, align 8
  %53 = icmp ne %struct.snd_ctl_file* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %9, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %55, i32 0, i32 1
  %57 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %56, align 8
  %58 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %6, align 8
  %59 = icmp ne %struct.snd_ctl_file* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %41, %24
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %76

63:                                               ; preds = %54, %49, %46
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @snd_ctl_build_ioff(i32* %65, %struct.snd_kcontrol* %66, i32 %67)
  %69 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %70 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %69, i32 0, i32 0
  %71 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %70, align 8
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %74 = bitcast %struct.snd_ctl_elem_value* %73 to %struct.snd_ctl_elem_value.0*
  %75 = call i32 %71(%struct.snd_kcontrol* %72, %struct.snd_ctl_elem_value.0* %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %63, %60
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %81 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %80, i32 0, i32 0
  %82 = call i32 @up_read(i32* %81)
  %83 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %84 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %7, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = call i32 @snd_ctl_notify(%struct.snd_card* %83, i32 %84, i32* %86)
  store i32 0, i32* %4, align 4
  br label %94

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %21
  %90 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %91 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %90, i32 0, i32 0
  %92 = call i32 @up_read(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %89, %79
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, i32*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_build_ioff(i32*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @snd_ctl_notify(%struct.snd_card*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
