; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_destroy_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_destroy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.dn_scp = type { i32, i32, i32, i32 }

@NSP_DISCINIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@decnet_di_count = common dso_local global i32 0, align 4
@DN_CN = common dso_local global i32 0, align 4
@decnet_dr_count = common dso_local global i32 0, align 4
@DN_DRC = common dso_local global i32 0, align 4
@decnet_dn_count = common dso_local global i32 0, align 4
@NSP_DISCCONF = common dso_local global i32 0, align 4
@NSP_REASON_DC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@decnet_time_wait = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_destroy_timer(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = call %struct.dn_scp* @DN_SK(%struct.sock* %5)
  store %struct.dn_scp* %6, %struct.dn_scp** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call i32 @dn_nsp_persist(%struct.sock* %7)
  %9 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %10 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %12 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %57 [
    i32 130, label %14
    i32 128, label %29
    i32 129, label %44
  ]

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load i32, i32* @NSP_DISCINIT, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i32 @dn_nsp_send_disc(%struct.sock* %15, i32 %16, i32 0, i32 %17)
  %19 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %20 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @decnet_di_count, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @DN_CN, align 4
  %26 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %27 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %14
  store i32 0, i32* %2, align 4
  br label %84

29:                                               ; preds = %1
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @NSP_DISCINIT, align 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i32 @dn_nsp_send_disc(%struct.sock* %30, i32 %31, i32 0, i32 %32)
  %34 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @decnet_dr_count, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @DN_DRC, align 4
  %41 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %42 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %29
  store i32 0, i32* %2, align 4
  br label %84

44:                                               ; preds = %1
  %45 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %46 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @decnet_dn_count, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = load i32, i32* @NSP_DISCCONF, align 4
  %53 = load i32, i32* @NSP_REASON_DC, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32 @dn_nsp_send_disc(%struct.sock* %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %84

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @HZ, align 4
  %59 = load i32, i32* @decnet_time_wait, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %62 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %84

68:                                               ; preds = %57
  %69 = load i32, i32* @jiffies, align 4
  %70 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %71 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = load i32, i32* @HZ, align 4
  %75 = load i32, i32* @decnet_time_wait, align 4
  %76 = mul nsw i32 %74, %75
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @dn_unhash_sock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @sock_put(%struct.sock* %81)
  store i32 1, i32* %2, align 4
  br label %84

83:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %78, %67, %50, %43, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @dn_nsp_send_disc(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @dn_unhash_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
