; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_modify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_addr_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { i32, %struct.TYPE_2__*, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@RTF_EXPIRES = common dso_local global i8* null, align 8
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@IFA_F_DEPRECATED = common dso_local global i32 0, align 4
@IFA_F_NODAD = common dso_local global i32 0, align 4
@IFA_F_HOMEADDRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_ifaddr*, i32, i8*, i8*)* @inet6_addr_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_addr_modify(%struct.inet6_ifaddr* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet6_ifaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.inet6_ifaddr* %0, %struct.inet6_ifaddr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %114

22:                                               ; preds = %15
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* @HZ, align 8
  %25 = call i64 @addrconf_timeout_fixup(i8* %23, i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @addrconf_finite_timeout(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = mul i64 %30, %31
  %33 = call i64 @jiffies_to_clock_t(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** @RTF_EXPIRES, align 8
  store i8* %36, i8** %10, align 8
  br label %41

37:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  store i8* null, i8** %10, align 8
  %38 = load i32, i32* @IFA_F_PERMANENT, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* @HZ, align 8
  %44 = call i64 @addrconf_timeout_fixup(i8* %42, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @addrconf_finite_timeout(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %12, align 8
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %60 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %59, i32 0, i32 4
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %63 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IFA_F_DEPRECATED, align 4
  %66 = load i32, i32* @IFA_F_PERMANENT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IFA_F_NODAD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IFA_F_HOMEADDRESS, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %64, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %77 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @jiffies, align 4
  %79 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %80 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %83 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %86 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %88 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %87, i32 0, i32 4
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %91 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %58
  %97 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %98 = call i32 @ipv6_ifa_notify(i32 0, %struct.inet6_ifaddr* %97)
  br label %99

99:                                               ; preds = %96, %58
  %100 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %101 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %100, i32 0, i32 3
  %102 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %103 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %106 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @addrconf_prefix_route(i32* %101, i32 %104, i32 %109, i64 %110, i8* %111)
  %113 = call i32 @addrconf_verify(i32 0)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %99, %19
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @addrconf_timeout_fixup(i8*, i64) #1

declare dso_local i64 @addrconf_finite_timeout(i64) #1

declare dso_local i64 @jiffies_to_clock_t(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipv6_ifa_notify(i32, %struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_prefix_route(i32*, i32, i32, i64, i8*) #1

declare dso_local i32 @addrconf_verify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
