; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_sk_dst_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_sk_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.flowi = type { i64, i32, i32 }
%struct.ipv6_pinfo = type { i32, i32 }
%struct.rt6_info = type { i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.sock*, %struct.dst_entry*, %struct.flowi*)* @ip6_sk_dst_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @ip6_sk_dst_check(%struct.sock* %0, %struct.dst_entry* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %10)
  store %struct.ipv6_pinfo* %11, %struct.ipv6_pinfo** %8, align 8
  %12 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %13 = icmp ne %struct.dst_entry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %57

15:                                               ; preds = %3
  %16 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET6, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %25 = call i32 @dst_release(%struct.dst_entry* %24)
  store %struct.dst_entry* null, %struct.dst_entry** %4, align 8
  br label %59

26:                                               ; preds = %15
  %27 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %28 = bitcast %struct.dst_entry* %27 to %struct.rt6_info*
  store %struct.rt6_info* %28, %struct.rt6_info** %9, align 8
  %29 = load %struct.rt6_info*, %struct.rt6_info** %9, align 8
  %30 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %29, i32 0, i32 1
  %31 = load %struct.flowi*, %struct.flowi** %7, align 8
  %32 = getelementptr inbounds %struct.flowi, %struct.flowi* %31, i32 0, i32 2
  %33 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %34 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ip6_rt_check(i32* %30, i32* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %26
  %39 = load %struct.flowi*, %struct.flowi** %7, align 8
  %40 = getelementptr inbounds %struct.flowi, %struct.flowi* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.flowi*, %struct.flowi** %7, align 8
  %45 = getelementptr inbounds %struct.flowi, %struct.flowi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %48 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43, %26
  %54 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %55 = call i32 @dst_release(%struct.dst_entry* %54)
  store %struct.dst_entry* null, %struct.dst_entry** %6, align 8
  br label %56

56:                                               ; preds = %53, %43, %38
  br label %57

57:                                               ; preds = %56, %14
  %58 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %58, %struct.dst_entry** %4, align 8
  br label %59

59:                                               ; preds = %57, %23
  %60 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %60
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i64 @ip6_rt_check(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
