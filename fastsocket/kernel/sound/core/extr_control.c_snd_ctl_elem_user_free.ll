; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_user_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_user_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.user_element* }
%struct.user_element = type { %struct.user_element* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*)* @snd_ctl_elem_user_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ctl_elem_user_free(%struct.snd_kcontrol* %0) #0 {
  %2 = alloca %struct.snd_kcontrol*, align 8
  %3 = alloca %struct.user_element*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %2, align 8
  %4 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %2, align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %4, i32 0, i32 0
  %6 = load %struct.user_element*, %struct.user_element** %5, align 8
  store %struct.user_element* %6, %struct.user_element** %3, align 8
  %7 = load %struct.user_element*, %struct.user_element** %3, align 8
  %8 = getelementptr inbounds %struct.user_element, %struct.user_element* %7, i32 0, i32 0
  %9 = load %struct.user_element*, %struct.user_element** %8, align 8
  %10 = icmp ne %struct.user_element* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.user_element*, %struct.user_element** %3, align 8
  %13 = getelementptr inbounds %struct.user_element, %struct.user_element* %12, i32 0, i32 0
  %14 = load %struct.user_element*, %struct.user_element** %13, align 8
  %15 = call i32 @kfree(%struct.user_element* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.user_element*, %struct.user_element** %3, align 8
  %18 = call i32 @kfree(%struct.user_element* %17)
  ret void
}

declare dso_local i32 @kfree(%struct.user_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
