; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.rt6_info = type { %struct.inet6_dev* }
%struct.inet6_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*)* @ip6_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.rt6_info*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %5 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %6 = bitcast %struct.dst_entry* %5 to %struct.rt6_info*
  store %struct.rt6_info* %6, %struct.rt6_info** %3, align 8
  %7 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %8 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %7, i32 0, i32 0
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  store %struct.inet6_dev* %9, %struct.inet6_dev** %4, align 8
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %11 = icmp ne %struct.inet6_dev* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.rt6_info*, %struct.rt6_info** %3, align 8
  %14 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %13, i32 0, i32 0
  store %struct.inet6_dev* null, %struct.inet6_dev** %14, align 8
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %16 = call i32 @in6_dev_put(%struct.inet6_dev* %15)
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
