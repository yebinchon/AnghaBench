; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_ipv6_opt_accepted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_af_inet6.c_ipv6_opt_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.inet6_skb_parm = type { i64, i64, i64, i64 }

@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_opt_accepted(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.inet6_skb_parm*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %8)
  store %struct.ipv6_pinfo* %9, %struct.ipv6_pinfo** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %10)
  store %struct.inet6_skb_parm* %11, %struct.inet6_skb_parm** %7, align 8
  %12 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %13 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %96

17:                                               ; preds = %2
  %18 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %19 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %24 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %94, label %29

29:                                               ; preds = %22
  %30 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %31 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %29, %17
  %37 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_network_header(%struct.sk_buff* %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %46 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %94, label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %53 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %58 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %56
  %64 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %65 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %63, %51
  %71 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %72 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %77 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75, %70
  %81 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %82 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %89 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %80, %63, %56, %44, %29, %22
  store i32 1, i32* %3, align 4
  br label %97

95:                                               ; preds = %87, %75
  br label %96

96:                                               ; preds = %95, %2
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %94
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
