; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_mss_from_pmtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_mss_from_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { i64 }

@DN_MAX_NSP_DATA_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_mss_from_pmtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %8 = sub nsw i32 230, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.dn_dev*, %struct.dn_dev** %13, align 8
  store %struct.dn_dev* %14, %struct.dn_dev** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %15)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %22 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 21
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 6
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @DN_MAX_NSP_DATA_HEADER, align 4
  %37 = add nsw i32 21, %36
  %38 = add nsw i32 %37, 16
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
