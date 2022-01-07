; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy_afinfo = type { %struct.dst_entry* (%struct.net.0*, i32, i32*, i32*)* }
%struct.net.0 = type opaque

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, i32, i32*, i32*, i32)* @__xfrm_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @__xfrm_dst_lookup(%struct.net* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_policy_afinfo*, align 8
  %13 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %14)
  store %struct.xfrm_policy_afinfo* %15, %struct.xfrm_policy_afinfo** %12, align 8
  %16 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %12, align 8
  %17 = icmp eq %struct.xfrm_policy_afinfo* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @EAFNOSUPPORT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dst_entry* @ERR_PTR(i32 %23)
  store %struct.dst_entry* %24, %struct.dst_entry** %6, align 8
  br label %38

25:                                               ; preds = %5
  %26 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %12, align 8
  %27 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %26, i32 0, i32 0
  %28 = load %struct.dst_entry* (%struct.net.0*, i32, i32*, i32*)*, %struct.dst_entry* (%struct.net.0*, i32, i32*, i32*)** %27, align 8
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = bitcast %struct.net* %29 to %struct.net.0*
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call %struct.dst_entry* %28(%struct.net.0* %30, i32 %31, i32* %32, i32* %33)
  store %struct.dst_entry* %34, %struct.dst_entry** %13, align 8
  %35 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %12, align 8
  %36 = call i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo* %35)
  %37 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  store %struct.dst_entry* %37, %struct.dst_entry** %6, align 8
  br label %38

38:                                               ; preds = %25, %21
  %39 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  ret %struct.dst_entry* %39
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

declare dso_local i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
