; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c___inet_insert_ifa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c___inet_insert_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i64, i32, i64, i64, %struct.in_ifaddr*, i32, %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.nlmsghdr = type { i32 }

@IFA_F_SECONDARY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@inetaddr_chain = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_ifaddr*, %struct.nlmsghdr*, i32)* @__inet_insert_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inet_insert_ifa(%struct.in_ifaddr* %0, %struct.nlmsghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_ifaddr*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  %10 = alloca %struct.in_ifaddr**, align 8
  %11 = alloca %struct.in_ifaddr**, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %13 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %12, i32 0, i32 6
  %14 = load %struct.in_device*, %struct.in_device** %13, align 8
  store %struct.in_device* %14, %struct.in_device** %8, align 8
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %17 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %22 = call i32 @inet_free_ifa(%struct.in_ifaddr* %21)
  store i32 0, i32* %4, align 4
  br label %135

23:                                               ; preds = %3
  %24 = load i32, i32* @IFA_F_SECONDARY, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %27 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.in_device*, %struct.in_device** %8, align 8
  %31 = getelementptr inbounds %struct.in_device, %struct.in_device* %30, i32 0, i32 0
  store %struct.in_ifaddr** %31, %struct.in_ifaddr*** %11, align 8
  %32 = load %struct.in_device*, %struct.in_device** %8, align 8
  %33 = getelementptr inbounds %struct.in_device, %struct.in_device* %32, i32 0, i32 0
  store %struct.in_ifaddr** %33, %struct.in_ifaddr*** %10, align 8
  br label %34

34:                                               ; preds = %104, %23
  %35 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %10, align 8
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %35, align 8
  store %struct.in_ifaddr* %36, %struct.in_ifaddr** %9, align 8
  %37 = icmp ne %struct.in_ifaddr* %36, null
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  %39 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %40 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFA_F_SECONDARY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %47 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %50 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %55 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %54, i32 0, i32 4
  store %struct.in_ifaddr** %55, %struct.in_ifaddr*** %11, align 8
  br label %56

56:                                               ; preds = %53, %45, %38
  %57 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %58 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %61 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %56
  %65 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %66 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %69 = call i64 @inet_ifa_match(i32 %67, %struct.in_ifaddr* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %64
  %72 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %73 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %76 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %81 = call i32 @inet_free_ifa(%struct.in_ifaddr* %80)
  %82 = load i32, i32* @EEXIST, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %135

84:                                               ; preds = %71
  %85 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %86 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %89 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %94 = call i32 @inet_free_ifa(%struct.in_ifaddr* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %135

97:                                               ; preds = %84
  %98 = load i32, i32* @IFA_F_SECONDARY, align 4
  %99 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %100 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %64, %56
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %106 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %105, i32 0, i32 4
  store %struct.in_ifaddr** %106, %struct.in_ifaddr*** %10, align 8
  br label %34

107:                                              ; preds = %34
  %108 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %109 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IFA_F_SECONDARY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %116 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @net_srandom(i64 %117)
  %119 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %11, align 8
  store %struct.in_ifaddr** %119, %struct.in_ifaddr*** %10, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %10, align 8
  %122 = load %struct.in_ifaddr*, %struct.in_ifaddr** %121, align 8
  %123 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %124 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %123, i32 0, i32 4
  store %struct.in_ifaddr* %122, %struct.in_ifaddr** %124, align 8
  %125 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %126 = load %struct.in_ifaddr**, %struct.in_ifaddr*** %10, align 8
  store %struct.in_ifaddr* %125, %struct.in_ifaddr** %126, align 8
  %127 = load i32, i32* @RTM_NEWADDR, align 4
  %128 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %129 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @rtmsg_ifa(i32 %127, %struct.in_ifaddr* %128, %struct.nlmsghdr* %129, i32 %130)
  %132 = load i32, i32* @NETDEV_UP, align 4
  %133 = load %struct.in_ifaddr*, %struct.in_ifaddr** %5, align 8
  %134 = call i32 @blocking_notifier_call_chain(i32* @inetaddr_chain, i32 %132, %struct.in_ifaddr* %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %120, %92, %79, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #1

declare dso_local i64 @inet_ifa_match(i32, %struct.in_ifaddr*) #1

declare dso_local i32 @net_srandom(i64) #1

declare dso_local i32 @rtmsg_ifa(i32, %struct.in_ifaddr*, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.in_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
