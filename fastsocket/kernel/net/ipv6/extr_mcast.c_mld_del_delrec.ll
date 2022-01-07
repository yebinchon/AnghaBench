; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_del_delrec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_del_delrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i32, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32 }
%struct.in6_addr = type { i32 }
%struct.ifmcaddr6 = type { i32, %struct.ifmcaddr6*, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.in6_addr*)* @mld_del_delrec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_del_delrec(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.ip6_sf_list*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 0
  %11 = call i32 @write_lock_bh(i32* %10)
  store %struct.ifmcaddr6* null, %struct.ifmcaddr6** %6, align 8
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 1
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %13, align 8
  %15 = bitcast %struct.ip6_sf_list* %14 to %struct.ifmcaddr6*
  store %struct.ifmcaddr6* %15, %struct.ifmcaddr6** %5, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %18 = icmp ne %struct.ifmcaddr6* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %21 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %20, i32 0, i32 4
  %22 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %23 = call i64 @ipv6_addr_equal(i32* %21, %struct.in6_addr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %32

26:                                               ; preds = %19
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  store %struct.ifmcaddr6* %27, %struct.ifmcaddr6** %6, align 8
  br label %28

28:                                               ; preds = %26
  %29 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %30 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %29, i32 0, i32 3
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %30, align 8
  store %struct.ifmcaddr6* %31, %struct.ifmcaddr6** %5, align 8
  br label %16

32:                                               ; preds = %25, %16
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %34 = icmp ne %struct.ifmcaddr6* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %37 = icmp ne %struct.ifmcaddr6* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %40 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %39, i32 0, i32 3
  %41 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %40, align 8
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %43 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %42, i32 0, i32 3
  store %struct.ifmcaddr6* %41, %struct.ifmcaddr6** %43, align 8
  br label %51

44:                                               ; preds = %35
  %45 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %46 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %45, i32 0, i32 3
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %46, align 8
  %48 = bitcast %struct.ifmcaddr6* %47 to %struct.ip6_sf_list*
  %49 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %50 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %49, i32 0, i32 1
  store %struct.ip6_sf_list* %48, %struct.ip6_sf_list** %50, align 8
  br label %51

51:                                               ; preds = %44, %38
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %53, i32 0, i32 0
  %55 = call i32 @write_unlock_bh(i32* %54)
  %56 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %57 = icmp ne %struct.ifmcaddr6* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %52
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %60 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %59, i32 0, i32 2
  %61 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %60, align 8
  %62 = bitcast %struct.ifmcaddr6* %61 to %struct.ip6_sf_list*
  store %struct.ip6_sf_list* %62, %struct.ip6_sf_list** %7, align 8
  br label %63

63:                                               ; preds = %72, %58
  %64 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %65 = icmp ne %struct.ip6_sf_list* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %68 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %67, i32 0, i32 1
  %69 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %68, align 8
  store %struct.ip6_sf_list* %69, %struct.ip6_sf_list** %8, align 8
  %70 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %71 = call i32 @kfree(%struct.ip6_sf_list* %70)
  br label %72

72:                                               ; preds = %66
  %73 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  store %struct.ip6_sf_list* %73, %struct.ip6_sf_list** %7, align 8
  br label %63

74:                                               ; preds = %63
  %75 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %76 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @in6_dev_put(i32 %77)
  %79 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %80 = bitcast %struct.ifmcaddr6* %79 to %struct.ip6_sf_list*
  %81 = call i32 @kfree(%struct.ip6_sf_list* %80)
  br label %82

82:                                               ; preds = %74, %52
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

declare dso_local i32 @in6_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
