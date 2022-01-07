; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_add_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_list = type { i64, i64 }

@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.m3_list*, i32)* @snd_m3_add_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_add_list(%struct.snd_m3* %0, %struct.m3_list* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.m3_list*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.m3_list* %1, %struct.m3_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %8 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %9 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %10 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %13 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @snd_m3_assp_write(%struct.snd_m3* %7, i32 %8, i64 %15, i32 %16)
  %18 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %19 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = trunc i64 %20 to i32
  ret i32 %22
}

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
