; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_get_lvds_dpa_setting_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_vt1636.c_get_lvds_dpa_setting_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VT1636_DPA_SETTING = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.VT1636_DPA_SETTING*, i32)* @get_lvds_dpa_setting_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lvds_dpa_setting_index(i32 %0, %struct.VT1636_DPA_SETTING* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.VT1636_DPA_SETTING*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.VT1636_DPA_SETTING* %1, %struct.VT1636_DPA_SETTING** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.VT1636_DPA_SETTING*, %struct.VT1636_DPA_SETTING** %6, align 8
  %16 = getelementptr inbounds %struct.VT1636_DPA_SETTING, %struct.VT1636_DPA_SETTING* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.VT1636_DPA_SETTING*, %struct.VT1636_DPA_SETTING** %6, align 8
  %23 = getelementptr inbounds %struct.VT1636_DPA_SETTING, %struct.VT1636_DPA_SETTING* %22, i32 1
  store %struct.VT1636_DPA_SETTING* %23, %struct.VT1636_DPA_SETTING** %6, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
