; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.flowi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, i32, i32*, i32*)* @xfrm6_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @xfrm6_dst_lookup(%struct.net* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.flowi, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.flowi* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 1
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @memcpy(i32* %13, i32* %14, i32 4)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.flowi, %struct.flowi* %9, i32 0, i32 0
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 4)
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = call %struct.dst_entry* @ip6_route_output(%struct.net* %23, i32* null, %struct.flowi* %9)
  store %struct.dst_entry* %24, %struct.dst_entry** %10, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %34 = call i32 @dst_release(%struct.dst_entry* %33)
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.dst_entry* @ERR_PTR(i32 %35)
  store %struct.dst_entry* %36, %struct.dst_entry** %10, align 8
  br label %37

37:                                               ; preds = %32, %22
  %38 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  ret %struct.dst_entry* %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi*) #2

declare dso_local i32 @dst_release(%struct.dst_entry*) #2

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
