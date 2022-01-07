; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, %struct.snd_kcontrol_volatile* }
%struct.snd_ctl_elem_value.0 = type opaque
%struct.snd_kcontrol_volatile = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_read(%struct.snd_card* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca %struct.snd_kcontrol_volatile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %12, i32* %14)
  store %struct.snd_kcontrol* %15, %struct.snd_kcontrol** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %17 = icmp eq %struct.snd_kcontrol* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %22, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 1
  %28 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %28, i64 %30
  store %struct.snd_kcontrol_volatile* %31, %struct.snd_kcontrol_volatile** %6, align 8
  %32 = load %struct.snd_kcontrol_volatile*, %struct.snd_kcontrol_volatile** %6, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol_volatile, %struct.snd_kcontrol_volatile* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %21
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %40, align 8
  %42 = icmp ne i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_ctl_build_ioff(i32* %45, %struct.snd_kcontrol* %46, i32 %47)
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  %51 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value.0*)** %50, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %54 = bitcast %struct.snd_ctl_elem_value* %53 to %struct.snd_ctl_elem_value.0*
  %55 = call i32 %51(%struct.snd_kcontrol* %52, %struct.snd_ctl_elem_value.0* %54)
  store i32 %55, i32* %8, align 4
  br label %59

56:                                               ; preds = %38, %21
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %43
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 0
  %63 = call i32 @up_read(i32* %62)
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, i32*) #1

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_build_ioff(i32*, %struct.snd_kcontrol*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
