; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_ipmac = type { i32 }
%struct.ipmac_telem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitmap_ipmac*, i32)* @bitmap_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_expired(%struct.bitmap_ipmac* %0, i32 %1) #0 {
  %3 = alloca %struct.bitmap_ipmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmac_telem*, align 8
  store %struct.bitmap_ipmac* %0, %struct.bitmap_ipmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %6, i32 %7)
  store %struct.ipmac_telem* %8, %struct.ipmac_telem** %5, align 8
  %9 = load %struct.ipmac_telem*, %struct.ipmac_telem** %5, align 8
  %10 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ip_set_timeout_expired(i32 %11)
  ret i32 %12
}

declare dso_local %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i32) #1

declare dso_local i32 @ip_set_timeout_expired(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
