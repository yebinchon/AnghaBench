; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_net_hwtstamp_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_net_hwtstamp_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifreq*)* @net_hwtstamp_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_hwtstamp_validate(%struct.ifreq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq*, align 8
  %4 = alloca %struct.hwtstamp_config, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifreq* %0, %struct.ifreq** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %10 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @copy_from_user(%struct.hwtstamp_config* %4, i32 %11, i32 16)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %4, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %4, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %31 [
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %24, %24, %24
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %30
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %34 [
    i32 144, label %33
    i32 145, label %33
    i32 131, label %33
    i32 142, label %33
    i32 141, label %33
    i32 143, label %33
    i32 134, label %33
    i32 133, label %33
    i32 135, label %33
    i32 137, label %33
    i32 136, label %33
    i32 138, label %33
    i32 139, label %33
    i32 132, label %33
    i32 140, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %21, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
