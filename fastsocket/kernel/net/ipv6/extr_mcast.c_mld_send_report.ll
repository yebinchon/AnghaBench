; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_send_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_mld_send_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i32, i32, i64*, %struct.ifmcaddr6* }
%struct.sk_buff = type { i32 }

@MAF_NOREPORT = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MLD2_MODE_IS_EXCLUDE = common dso_local global i32 0, align 4
@MLD2_MODE_IS_INCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.ifmcaddr6*)* @mld_send_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_send_report(%struct.inet6_dev* %0, %struct.ifmcaddr6* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %7 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %8 = icmp ne %struct.ifmcaddr6* %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 0
  %12 = call i32 @read_lock_bh(i32* %11)
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %14 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %13, i32 0, i32 1
  %15 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %14, align 8
  store %struct.ifmcaddr6* %15, %struct.ifmcaddr6** %4, align 8
  br label %16

16:                                               ; preds = %50, %9
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %18 = icmp ne %struct.ifmcaddr6* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %21 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAF_NOREPORT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %50

27:                                               ; preds = %19
  %28 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %29 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %32 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @MCAST_EXCLUDE, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @MLD2_MODE_IS_INCLUDE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %43, %struct.ifmcaddr6* %44, i32 %45, i32 0, i32 0)
  store %struct.sk_buff* %46, %struct.sk_buff** %5, align 8
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %50

50:                                               ; preds = %42, %26
  %51 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %52 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %51, i32 0, i32 3
  %53 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %52, align 8
  store %struct.ifmcaddr6* %53, %struct.ifmcaddr6** %4, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %56 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %55, i32 0, i32 0
  %57 = call i32 @read_unlock_bh(i32* %56)
  br label %81

58:                                               ; preds = %2
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %60 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @MCAST_EXCLUDE, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @MLD2_MODE_IS_EXCLUDE, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @MLD2_MODE_IS_INCLUDE, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.sk_buff* @add_grec(%struct.sk_buff* %74, %struct.ifmcaddr6* %75, i32 %76, i32 0, i32 0)
  store %struct.sk_buff* %77, %struct.sk_buff** %5, align 8
  %78 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %79 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock_bh(i32* %79)
  br label %81

81:                                               ; preds = %73, %54
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @mld_sendpack(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @add_grec(%struct.sk_buff*, %struct.ifmcaddr6*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @mld_sendpack(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
