; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ipv6_mc_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i64, i32, i32, i32, i64, i32*, i32, i64, i32 }

@mld_gq_timer_expire = common dso_local global i32 0, align 4
@mld_ifc_timer_expire = common dso_local global i32 0, align 4
@MLD_QRV_DEFAULT = common dso_local global i32 0, align 4
@IGMP6_UNSOLICITED_IVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_init_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %3 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %4 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %3, i32 0, i32 0
  %5 = call i32 @write_lock_bh(i32* %4)
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %7 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %6, i32 0, i32 9
  %8 = call i32 @rwlock_init(i32* %7)
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 7
  %13 = load i32, i32* @mld_gq_timer_expire, align 4
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = ptrtoint %struct.inet6_dev* %14 to i64
  %16 = call i32 @setup_timer(i32* %12, i32 %13, i64 %15)
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 4
  %23 = load i32, i32* @mld_ifc_timer_expire, align 4
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %25 = ptrtoint %struct.inet6_dev* %24 to i64
  %26 = call i32 @setup_timer(i32* %22, i32 %23, i64 %25)
  %27 = load i32, i32* @MLD_QRV_DEFAULT, align 4
  %28 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %29 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IGMP6_UNSOLICITED_IVAL, align 4
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %32 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %34 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 0
  %37 = call i32 @write_unlock_bh(i32* %36)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
