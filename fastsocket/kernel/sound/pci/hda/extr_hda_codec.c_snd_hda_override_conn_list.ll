; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_override_conn_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_override_conn_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_conn_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hda_conn_list*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.hda_conn_list* @lookup_conn_list(%struct.hda_codec* %10, i32 %11)
  store %struct.hda_conn_list* %12, %struct.hda_conn_list** %9, align 8
  %13 = load %struct.hda_conn_list*, %struct.hda_conn_list** %9, align 8
  %14 = icmp ne %struct.hda_conn_list* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.hda_conn_list*, %struct.hda_conn_list** %9, align 8
  %17 = getelementptr inbounds %struct.hda_conn_list, %struct.hda_conn_list* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.hda_conn_list*, %struct.hda_conn_list** %9, align 8
  %20 = call i32 @kfree(%struct.hda_conn_list* %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @add_conn_list(%struct.hda_codec* %22, i32 %23, i32 %24, i32* %25)
  ret i32 %26
}

declare dso_local %struct.hda_conn_list* @lookup_conn_list(%struct.hda_codec*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hda_conn_list*) #1

declare dso_local i32 @add_conn_list(%struct.hda_codec*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
