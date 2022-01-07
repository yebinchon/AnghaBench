; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_decode_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c___xfrm_decode_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_policy_afinfo = type { i32 (%struct.sk_buff.0*, %struct.flowi.1*, i32)* }
%struct.sk_buff.0 = type opaque
%struct.flowi.1 = type opaque

@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfrm_decode_session(%struct.sk_buff* %0, %struct.flowi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_policy_afinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %12)
  store %struct.xfrm_policy_afinfo* %13, %struct.xfrm_policy_afinfo** %10, align 8
  %14 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %10, align 8
  %15 = icmp eq %struct.xfrm_policy_afinfo* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EAFNOSUPPORT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %39

22:                                               ; preds = %4
  %23 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %10, align 8
  %24 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %23, i32 0, i32 0
  %25 = load i32 (%struct.sk_buff.0*, %struct.flowi.1*, i32)*, i32 (%struct.sk_buff.0*, %struct.flowi.1*, i32)** %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = bitcast %struct.sk_buff* %26 to %struct.sk_buff.0*
  %28 = load %struct.flowi*, %struct.flowi** %7, align 8
  %29 = bitcast %struct.flowi* %28 to %struct.flowi.1*
  %30 = load i32, i32* %9, align 4
  %31 = call i32 %25(%struct.sk_buff.0* %27, %struct.flowi.1* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.flowi*, %struct.flowi** %7, align 8
  %34 = getelementptr inbounds %struct.flowi, %struct.flowi* %33, i32 0, i32 0
  %35 = call i32 @security_xfrm_decode_session(%struct.sk_buff* %32, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %10, align 8
  %37 = call i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo* %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %22, %19
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @security_xfrm_decode_session(%struct.sk_buff*, i32*) #1

declare dso_local i32 @xfrm_policy_put_afinfo(%struct.xfrm_policy_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
