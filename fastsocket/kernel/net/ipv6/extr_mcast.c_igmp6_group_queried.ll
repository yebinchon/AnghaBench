; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_queried.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_igmp6_group_queried.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }

@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*, i64)* @igmp6_group_queried to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_group_queried(%struct.ifmcaddr6* %0, i64 %1) #0 {
  %3 = alloca %struct.ifmcaddr6*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %8 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %7, i32 0, i32 3
  %9 = call i64 @ipv6_addr_is_ll_all_nodes(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 3
  %14 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %13)
  %15 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %72

18:                                               ; preds = %11
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 2
  %21 = call i64 @del_timer(%struct.TYPE_3__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %25 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %24, i32 0, i32 1
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @jiffies, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %23, %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i64 (...) @net_random()
  %44 = load i64, i64* %4, align 8
  %45 = urem i64 %43, %44
  store i64 %45, i64* %5, align 8
  br label %47

46:                                               ; preds = %39
  store i64 1, i64* %5, align 8
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i8*, i8** @jiffies, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %56 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %55, i32 0, i32 2
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = call i32 @mod_timer(%struct.TYPE_3__* %56, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %48
  %63 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %64 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %63, i32 0, i32 1
  %65 = call i32 @atomic_inc(i32* %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %69 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %17
  ret void
}

declare dso_local i64 @ipv6_addr_is_ll_all_nodes(i32*) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @net_random(...) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
