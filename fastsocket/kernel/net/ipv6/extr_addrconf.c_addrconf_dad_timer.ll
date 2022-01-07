; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_addrconf_dad_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i64, i32, i32, %struct.inet6_dev*, i32 }
%struct.inet6_dev = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }

@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@IFA_F_OPTIMISTIC = common dso_local global i32 0, align 4
@IFA_F_DADFAILED = common dso_local global i32 0, align 4
@AC_DAD = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @addrconf_dad_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dad_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inet6_ifaddr*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.inet6_ifaddr*
  store %struct.inet6_ifaddr* %7, %struct.inet6_ifaddr** %3, align 8
  %8 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %8, i32 0, i32 3
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  store %struct.inet6_dev* %10, %struct.inet6_dev** %4, align 8
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %12 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %17 = call i64 @addrconf_dad_end(%struct.inet6_ifaddr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %91

20:                                               ; preds = %15, %1
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 1
  %23 = call i32 @read_lock_bh(i32* %22)
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 1
  %31 = call i32 @read_unlock_bh(i32* %30)
  br label %91

32:                                               ; preds = %20
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 4
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %37 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %42 = load i32, i32* @IFA_F_OPTIMISTIC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IFA_F_DADFAILED, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %48 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %52 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %51, i32 0, i32 4
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %55 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %54, i32 0, i32 1
  %56 = call i32 @read_unlock_bh(i32* %55)
  %57 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %58 = call i32 @addrconf_dad_completed(%struct.inet6_ifaddr* %57)
  br label %91

59:                                               ; preds = %32
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %61 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %65 = load i32, i32* @AC_DAD, align 4
  %66 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %67 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %66, i32 0, i32 3
  %68 = load %struct.inet6_dev*, %struct.inet6_dev** %67, align 8
  %69 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @addrconf_mod_timer(%struct.inet6_ifaddr* %64, i32 %65, i32 %72)
  %74 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %75 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %74, i32 0, i32 4
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %78 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %77, i32 0, i32 1
  %79 = call i32 @read_unlock_bh(i32* %78)
  %80 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %81 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %80, i32 0, i32 2
  %82 = call i32 @addrconf_addr_solict_mult(i32* %81, %struct.in6_addr* %5)
  %83 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %84 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %83, i32 0, i32 3
  %85 = load %struct.inet6_dev*, %struct.inet6_dev** %84, align 8
  %86 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %89 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %88, i32 0, i32 2
  %90 = call i32 @ndisc_send_ns(i32 %87, i32* null, i32* %89, %struct.in6_addr* %5, i32* @in6addr_any)
  br label %91

91:                                               ; preds = %59, %40, %28, %19
  %92 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %3, align 8
  %93 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %92)
  ret void
}

declare dso_local i64 @addrconf_dad_end(%struct.inet6_ifaddr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @addrconf_dad_completed(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_mod_timer(%struct.inet6_ifaddr*, i32, i32) #1

declare dso_local i32 @addrconf_addr_solict_mult(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ndisc_send_ns(i32, i32*, i32*, %struct.in6_addr*, i32*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
