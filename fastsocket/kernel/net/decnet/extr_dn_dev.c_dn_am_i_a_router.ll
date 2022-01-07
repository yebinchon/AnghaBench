; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_am_i_a_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_dev.c_dn_am_i_a_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_neigh = type { i64, i32 }
%struct.dn_dev = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dn_ifaddr = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@DRDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_neigh*, %struct.dn_dev*, %struct.dn_ifaddr*)* @dn_am_i_a_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_am_i_a_router(%struct.dn_neigh* %0, %struct.dn_dev* %1, %struct.dn_ifaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_neigh*, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca %struct.dn_ifaddr*, align 8
  store %struct.dn_neigh* %0, %struct.dn_neigh** %5, align 8
  store %struct.dn_dev* %1, %struct.dn_dev** %6, align 8
  store %struct.dn_ifaddr* %2, %struct.dn_ifaddr** %7, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %10 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = load i64, i64* @DRDELAY, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %18 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %24 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %27 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %34 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %37 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %44 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %48 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le16_to_cpu(i32 %49)
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %52, %41, %31, %21, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
