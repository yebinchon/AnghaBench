; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_set_attr_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_set_attr_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_attr_hdr = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlp_attr_hdr*, i32, i64)* @wlp_set_attr_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlp_set_attr_hdr(%struct.wlp_attr_hdr* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.wlp_attr_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.wlp_attr_hdr* %0, %struct.wlp_attr_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @cpu_to_le16(i64 %8)
  %10 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i8* @cpu_to_le16(i64 %12)
  %14 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
