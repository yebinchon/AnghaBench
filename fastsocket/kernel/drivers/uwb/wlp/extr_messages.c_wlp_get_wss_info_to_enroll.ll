; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info_to_enroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info_to_enroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32 }
%struct.wlp_attr_wss_info = type { i32 }
%struct.wlp_wss = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_attr_wss_info*, %struct.wlp_wss*, i32)* @wlp_get_wss_info_to_enroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_get_wss_info_to_enroll(%struct.wlp* %0, %struct.wlp_attr_wss_info* %1, %struct.wlp_wss* %2, i32 %3) #0 {
  %5 = alloca %struct.wlp*, align 8
  %6 = alloca %struct.wlp_attr_wss_info*, align 8
  %7 = alloca %struct.wlp_wss*, align 8
  %8 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %5, align 8
  store %struct.wlp_attr_wss_info* %1, %struct.wlp_attr_wss_info** %6, align 8
  store %struct.wlp_wss* %2, %struct.wlp_wss** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wlp*, %struct.wlp** %5, align 8
  %10 = load %struct.wlp_attr_wss_info*, %struct.wlp_attr_wss_info** %6, align 8
  %11 = load %struct.wlp_wss*, %struct.wlp_wss** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @wlp_get_all_wss_info(%struct.wlp* %9, %struct.wlp_attr_wss_info* %10, i32* null, %struct.wlp_wss* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @wlp_get_all_wss_info(%struct.wlp*, %struct.wlp_attr_wss_info*, i32*, %struct.wlp_wss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
