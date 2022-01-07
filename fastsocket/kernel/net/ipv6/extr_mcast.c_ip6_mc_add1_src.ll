; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_add1_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_add1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i32*, %struct.ip6_sf_list*, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, i32, %struct.in6_addr*, i32)* @ip6_mc_add1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_add1_src(%struct.ifmcaddr6* %0, i32 %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_sf_list*, align 8
  %11 = alloca %struct.ip6_sf_list*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %11, align 8
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 0
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %13, align 8
  store %struct.ip6_sf_list* %14, %struct.ip6_sf_list** %10, align 8
  br label %15

15:                                               ; preds = %27, %4
  %16 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %17 = icmp ne %struct.ip6_sf_list* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %20 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %19, i32 0, i32 2
  %21 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %22 = call i64 @ipv6_addr_equal(%struct.in6_addr* %20, %struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  store %struct.ip6_sf_list* %26, %struct.ip6_sf_list** %11, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %29 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %28, i32 0, i32 1
  %30 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %29, align 8
  store %struct.ip6_sf_list* %30, %struct.ip6_sf_list** %10, align 8
  br label %15

31:                                               ; preds = %24, %15
  %32 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %33 = icmp ne %struct.ip6_sf_list* %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.ip6_sf_list* @kzalloc(i32 24, i32 %35)
  store %struct.ip6_sf_list* %36, %struct.ip6_sf_list** %10, align 8
  %37 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %38 = icmp ne %struct.ip6_sf_list* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %34
  %43 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %44 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %43, i32 0, i32 2
  %45 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %46 = bitcast %struct.in6_addr* %44 to i8*
  %47 = bitcast %struct.in6_addr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %11, align 8
  %49 = icmp ne %struct.ip6_sf_list* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %52 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %11, align 8
  %53 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %52, i32 0, i32 1
  store %struct.ip6_sf_list* %51, %struct.ip6_sf_list** %53, align 8
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %56 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %57 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %56, i32 0, i32 0
  store %struct.ip6_sf_list* %55, %struct.ip6_sf_list** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %31
  %60 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %61 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %59, %39
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.ip6_sf_list* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
