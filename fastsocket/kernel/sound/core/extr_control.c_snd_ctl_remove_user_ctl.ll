; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_remove_user_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_remove_user_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ctl_file = type { %struct.snd_card* }
%struct.snd_card = type { i32, i32 }
%struct.snd_ctl_elem_id = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.snd_ctl_file* }

@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_USER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ctl_file*, %struct.snd_ctl_elem_id*)* @snd_ctl_remove_user_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_remove_user_ctl(%struct.snd_ctl_file* %0, %struct.snd_ctl_elem_id* %1) #0 {
  %3 = alloca %struct.snd_ctl_file*, align 8
  %4 = alloca %struct.snd_ctl_elem_id*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ctl_file* %0, %struct.snd_ctl_file** %3, align 8
  store %struct.snd_ctl_elem_id* %1, %struct.snd_ctl_elem_id** %4, align 8
  %9 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %5, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = call i32 @down_write(i32* %13)
  %15 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %16 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %4, align 8
  %17 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %15, %struct.snd_ctl_elem_id* %16)
  store %struct.snd_kcontrol* %17, %struct.snd_kcontrol** %6, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %19 = icmp eq %struct.snd_kcontrol* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_USER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %83

36:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %50, align 8
  %52 = icmp ne %struct.snd_ctl_file* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %60, align 8
  %62 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %3, align 8
  %63 = icmp ne %struct.snd_ctl_file* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %83

67:                                               ; preds = %53, %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %73 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %74 = call i32 @snd_ctl_remove(%struct.snd_card* %72, %struct.snd_kcontrol* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  %79 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %80 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %77, %64, %33, %20
  %84 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %85 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %84, i32 0, i32 0
  %86 = call i32 @up_write(i32* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @snd_ctl_remove(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
