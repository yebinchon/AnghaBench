; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.xfrm_dst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*)* @xfrm4_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm4_dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.xfrm_dst*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  %4 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %5 = bitcast %struct.dst_entry* %4 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %5, %struct.xfrm_dst** %3, align 8
  %6 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %7 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @in_dev_put(i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @inet_putpeer(i32 %33)
  br label %35

35:                                               ; preds = %28, %20
  %36 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %37 = call i32 @xfrm_dst_destroy(%struct.xfrm_dst* %36)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_dev_put(i32) #1

declare dso_local i32 @inet_putpeer(i32) #1

declare dso_local i32 @xfrm_dst_destroy(%struct.xfrm_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
