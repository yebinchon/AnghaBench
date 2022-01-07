; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_dev_ac_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_anycast.c_ipv6_dev_ac_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifacaddr6 = type { i32, i32, %struct.ifacaddr6*, i32, i32, i32, i32, %struct.rt6_info*, %struct.inet6_dev* }
%struct.rt6_info = type { i32 }
%struct.inet6_dev = type { i32, %struct.ifacaddr6*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_dev_ac_inc(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifacaddr6*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %10)
  store %struct.inet6_dev* %11, %struct.inet6_dev** %7, align 8
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %13 = icmp eq %struct.inet6_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %121

17:                                               ; preds = %2
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = call i32 @write_lock_bh(i32* %19)
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %114

28:                                               ; preds = %17
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 1
  %31 = load %struct.ifacaddr6*, %struct.ifacaddr6** %30, align 8
  store %struct.ifacaddr6* %31, %struct.ifacaddr6** %6, align 8
  br label %32

32:                                               ; preds = %47, %28
  %33 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %34 = icmp ne %struct.ifacaddr6* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %37 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %36, i32 0, i32 1
  %38 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %39 = call i64 @ipv6_addr_equal(i32* %37, %struct.in6_addr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %43 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %9, align 4
  br label %114

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %49 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %48, i32 0, i32 2
  %50 = load %struct.ifacaddr6*, %struct.ifacaddr6** %49, align 8
  store %struct.ifacaddr6* %50, %struct.ifacaddr6** %6, align 8
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call %struct.ifacaddr6* @kzalloc(i32 48, i32 %52)
  store %struct.ifacaddr6* %53, %struct.ifacaddr6** %6, align 8
  %54 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %55 = icmp eq %struct.ifacaddr6* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %114

59:                                               ; preds = %51
  %60 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %61 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %62 = call %struct.rt6_info* @addrconf_dst_alloc(%struct.inet6_dev* %60, %struct.in6_addr* %61, i32 1)
  store %struct.rt6_info* %62, %struct.rt6_info** %8, align 8
  %63 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %64 = call i64 @IS_ERR(%struct.rt6_info* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %68 = call i32 @kfree(%struct.ifacaddr6* %67)
  %69 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %70 = call i32 @PTR_ERR(%struct.rt6_info* %69)
  store i32 %70, i32* %9, align 4
  br label %114

71:                                               ; preds = %59
  %72 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %73 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %72, i32 0, i32 1
  %74 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %75 = call i32 @ipv6_addr_copy(i32* %73, %struct.in6_addr* %74)
  %76 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %77 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %78 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %77, i32 0, i32 8
  store %struct.inet6_dev* %76, %struct.inet6_dev** %78, align 8
  %79 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %80 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %81 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %80, i32 0, i32 7
  store %struct.rt6_info* %79, %struct.rt6_info** %81, align 8
  %82 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %83 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @jiffies, align 4
  %85 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %86 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %88 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %87, i32 0, i32 6
  store i32 %84, i32* %88, align 4
  %89 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %90 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %89, i32 0, i32 4
  %91 = call i32 @atomic_set(i32* %90, i32 2)
  %92 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %93 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %92, i32 0, i32 3
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %96 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %95, i32 0, i32 1
  %97 = load %struct.ifacaddr6*, %struct.ifacaddr6** %96, align 8
  %98 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %99 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %98, i32 0, i32 2
  store %struct.ifacaddr6* %97, %struct.ifacaddr6** %99, align 8
  %100 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %101 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %102 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %101, i32 0, i32 1
  store %struct.ifacaddr6* %100, %struct.ifacaddr6** %102, align 8
  %103 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %104 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %103, i32 0, i32 0
  %105 = call i32 @write_unlock_bh(i32* %104)
  %106 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %107 = call i32 @ip6_ins_rt(%struct.rt6_info* %106)
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %110 = getelementptr inbounds %struct.ifacaddr6, %struct.ifacaddr6* %109, i32 0, i32 1
  %111 = call i32 @addrconf_join_solict(%struct.net_device* %108, i32* %110)
  %112 = load %struct.ifacaddr6*, %struct.ifacaddr6** %6, align 8
  %113 = call i32 @aca_put(%struct.ifacaddr6* %112)
  store i32 0, i32* %3, align 4
  br label %121

114:                                              ; preds = %66, %56, %41, %25
  %115 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %116 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %115, i32 0, i32 0
  %117 = call i32 @write_unlock_bh(i32* %116)
  %118 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %119 = call i32 @in6_dev_put(%struct.inet6_dev* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %114, %71, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local %struct.ifacaddr6* @kzalloc(i32, i32) #1

declare dso_local %struct.rt6_info* @addrconf_dst_alloc(%struct.inet6_dev*, %struct.in6_addr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rt6_info*) #1

declare dso_local i32 @kfree(%struct.ifacaddr6*) #1

declare dso_local i32 @PTR_ERR(%struct.rt6_info*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.in6_addr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ip6_ins_rt(%struct.rt6_info*) #1

declare dso_local i32 @addrconf_join_solict(%struct.net_device*, i32*) #1

declare dso_local i32 @aca_put(%struct.ifacaddr6*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
