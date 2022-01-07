; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_remove_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_remove_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_list = type { i32, i64 }

@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.m3_list*, i32)* @snd_m3_remove_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_remove_list(%struct.snd_m3* %0, %struct.m3_list* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.m3_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.m3_list* %1, %struct.m3_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %10 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %18 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %19 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %20 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @snd_m3_assp_read(%struct.snd_m3* %17, i32 %18, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %27 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %28 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %29 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @snd_m3_assp_write(%struct.snd_m3* %26, i32 %27, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %16, %3
  %37 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %38 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %39 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %40 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @snd_m3_assp_write(%struct.snd_m3* %37, i32 %38, i64 %44, i32 0)
  %46 = load %struct.m3_list*, %struct.m3_list** %5, align 8
  %47 = getelementptr inbounds %struct.m3_list, %struct.m3_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  ret void
}

declare dso_local i32 @snd_m3_assp_read(%struct.snd_m3*, i32, i64) #1

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
