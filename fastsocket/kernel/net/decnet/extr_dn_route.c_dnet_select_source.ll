; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dnet_select_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dnet_select_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dn_dev* }
%struct.dn_dev = type { %struct.dn_ifaddr* }
%struct.dn_ifaddr = type { i32, i32, %struct.dn_ifaddr* }

@dev_base_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @dnet_select_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_select_source(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_dev*, align 8
  %9 = alloca %struct.dn_ifaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.dn_dev*, %struct.dn_dev** %13, align 8
  store %struct.dn_dev* %14, %struct.dn_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 @read_lock(i32* @dev_base_lock)
  %16 = load %struct.dn_dev*, %struct.dn_dev** %8, align 8
  %17 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %16, i32 0, i32 0
  %18 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %17, align 8
  store %struct.dn_ifaddr* %18, %struct.dn_ifaddr** %9, align 8
  br label %19

19:                                               ; preds = %57, %3
  %20 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %21 = icmp ne %struct.dn_ifaddr* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %24 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %57

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %34 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %61

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %39 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dn_match_addr(i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %47 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %54 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %9, align 8
  %59 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %58, i32 0, i32 2
  %60 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %59, align 8
  store %struct.dn_ifaddr* %60, %struct.dn_ifaddr** %9, align 8
  br label %19

61:                                               ; preds = %32, %19
  %62 = call i32 @read_unlock(i32* @dev_base_lock)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @dn_match_addr(i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
