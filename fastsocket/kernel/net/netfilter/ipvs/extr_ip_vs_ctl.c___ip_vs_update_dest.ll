; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_update_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_update_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i64 }
%struct.ip_vs_dest = type { i64, i32, i32, i32, %struct.ip_vs_service*, i32, i32 }
%struct.ip_vs_dest_user_kern = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IP_VS_CONN_F_DEST_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i64 0, align 8
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_LOCALNODE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@__ip_vs_rs_lock = common dso_local global i32 0, align 4
@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@IP_VS_DEST_F_OVERLOAD = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service*, %struct.ip_vs_dest*, %struct.ip_vs_dest_user_kern*)* @__ip_vs_update_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_update_dest(%struct.ip_vs_service* %0, %struct.ip_vs_dest* %1, %struct.ip_vs_dest_user_kern* %2) #0 {
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.ip_vs_dest_user_kern*, align 8
  %7 = alloca i32, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  store %struct.ip_vs_dest_user_kern* %2, %struct.ip_vs_dest_user_kern** %6, align 8
  %8 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %9 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %8, i32 0, i32 6
  %10 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %11 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @atomic_set(i32* %9, i32 %12)
  %14 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %15 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IP_VS_CONN_F_DEST_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %23 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @inet_addr_type(i32* @init_net, i32 %25)
  %27 = load i64, i64* @RTN_LOCAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load i32, i32* @IP_VS_CONN_F_LOCALNODE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %3
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @IP_VS_CONN_F_MASQ, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %51

46:                                               ; preds = %36
  %47 = call i32 @write_lock_bh(i32* @__ip_vs_rs_lock)
  %48 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %49 = call i32 @ip_vs_rs_hash(%struct.ip_vs_dest* %48)
  %50 = call i32 @write_unlock_bh(i32* @__ip_vs_rs_lock)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %52, i32 0, i32 5
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @atomic_set(i32* %53, i32 %54)
  %56 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %57 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %56, i32 0, i32 4
  %58 = load %struct.ip_vs_service*, %struct.ip_vs_service** %57, align 8
  %59 = icmp ne %struct.ip_vs_service* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %62 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %63 = call i32 @__ip_vs_bind_svc(%struct.ip_vs_dest* %61, %struct.ip_vs_service* %62)
  br label %80

64:                                               ; preds = %51
  %65 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %66 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %65, i32 0, i32 4
  %67 = load %struct.ip_vs_service*, %struct.ip_vs_service** %66, align 8
  %68 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %69 = icmp ne %struct.ip_vs_service* %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %72 = call i32 @__ip_vs_unbind_svc(%struct.ip_vs_dest* %71)
  %73 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %74 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %73, i32 0, i32 3
  %75 = call i32 @ip_vs_zero_stats(i32* %74)
  %76 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %77 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %78 = call i32 @__ip_vs_bind_svc(%struct.ip_vs_dest* %76, %struct.ip_vs_service* %77)
  br label %79

79:                                               ; preds = %70, %64
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %82 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %83 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %87 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %80
  %91 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %92 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %95 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %90, %80
  %99 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %102 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %107 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %110 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %6, align 8
  %112 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %115 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @inet_addr_type(i32*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ip_vs_rs_hash(%struct.ip_vs_dest*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @__ip_vs_bind_svc(%struct.ip_vs_dest*, %struct.ip_vs_service*) #1

declare dso_local i32 @__ip_vs_unbind_svc(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_zero_stats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
