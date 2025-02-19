; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_ifc_timer_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_ifc_timer_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mld_ifc_timer_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_ifc_timer_expire(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inet6_dev*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.inet6_dev*
  store %struct.inet6_dev* %5, %struct.inet6_dev** %3, align 8
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %7 = call i32 @mld_send_cr(%struct.inet6_dev* %6)
  %8 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %9 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %14 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %24 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mld_ifc_start_timer(%struct.inet6_dev* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %12
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %30 = call i32 @__in6_dev_put(%struct.inet6_dev* %29)
  ret void
}

declare dso_local i32 @mld_send_cr(%struct.inet6_dev*) #1

declare dso_local i32 @mld_ifc_start_timer(%struct.inet6_dev*, i32) #1

declare dso_local i32 @__in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
