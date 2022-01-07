; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_wpan-class.c_wpan_phy_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_wpan-class.c_wpan_phy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpan_phy = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wpan_phy_mutex = common dso_local global i32 0, align 4
@wpan_phy_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"wpan-phy%d\00", align 1
@wpan_phy_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpan_phy* @wpan_phy_alloc(i64 %0) #0 {
  %2 = alloca %struct.wpan_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wpan_phy*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = add i64 24, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wpan_phy* @kzalloc(i32 %7, i32 %8)
  store %struct.wpan_phy* %9, %struct.wpan_phy** %4, align 8
  %10 = call i32 @mutex_lock(i32* @wpan_phy_mutex)
  %11 = load i32, i32* @wpan_phy_idx, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @wpan_phy_idx, align 4
  %13 = sext i32 %11 to i64
  %14 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %15 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %17 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @wpan_phy_idx_valid(i64 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @wpan_phy_idx, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @wpan_phy_idx, align 4
  %28 = call i32 @mutex_unlock(i32* @wpan_phy_mutex)
  %29 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %30 = call i32 @kfree(%struct.wpan_phy* %29)
  store %struct.wpan_phy* null, %struct.wpan_phy** %2, align 8
  br label %49

31:                                               ; preds = %1
  %32 = call i32 @mutex_unlock(i32* @wpan_phy_mutex)
  %33 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %34 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %33, i32 0, i32 2
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %37 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %36, i32 0, i32 0
  %38 = call i32 @device_initialize(%struct.TYPE_3__* %37)
  %39 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %40 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %39, i32 0, i32 0
  %41 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %42 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dev_set_name(%struct.TYPE_3__* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  %46 = getelementptr inbounds %struct.wpan_phy, %struct.wpan_phy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* @wpan_phy_class, i32** %47, align 8
  %48 = load %struct.wpan_phy*, %struct.wpan_phy** %4, align 8
  store %struct.wpan_phy* %48, %struct.wpan_phy** %2, align 8
  br label %49

49:                                               ; preds = %31, %25
  %50 = load %struct.wpan_phy*, %struct.wpan_phy** %2, align 8
  ret %struct.wpan_phy* %50
}

declare dso_local %struct.wpan_phy* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wpan_phy_idx_valid(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.wpan_phy*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
