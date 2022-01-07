; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rate.c_rate_control_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_control_ref = type { %struct.TYPE_9__*, i32, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_8__*, %struct.dentry*)* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.dentry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rcname_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rate_control_ref* (i8*, %struct.ieee80211_local*)* @rate_control_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rate_control_ref* @rate_control_alloc(i8* %0, %struct.ieee80211_local* %1) #0 {
  %3 = alloca %struct.rate_control_ref*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.rate_control_ref*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ieee80211_local* %1, %struct.ieee80211_local** %5, align 8
  store %struct.dentry* null, %struct.dentry** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rate_control_ref* @kmalloc(i32 24, i32 %8)
  store %struct.rate_control_ref* %9, %struct.rate_control_ref** %7, align 8
  %10 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %11 = icmp ne %struct.rate_control_ref* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %16 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %15, i32 0, i32 2
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_9__* @ieee80211_rate_control_ops_get(i8* %17)
  %19 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %20 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %19, i32 0, i32 0
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %20, align 8
  %21 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %22 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %50

26:                                               ; preds = %13
  %27 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %28 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_8__*, %struct.dentry*)*, i32 (%struct.TYPE_8__*, %struct.dentry*)** %30, align 8
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call i32 %31(%struct.TYPE_8__* %33, %struct.dentry* %34)
  %36 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %37 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %39 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %45

43:                                               ; preds = %26
  %44 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  store %struct.rate_control_ref* %44, %struct.rate_control_ref** %3, align 8
  br label %54

45:                                               ; preds = %42
  %46 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %47 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 @ieee80211_rate_control_ops_put(%struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %45, %25
  %51 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %52 = call i32 @kfree(%struct.rate_control_ref* %51)
  br label %53

53:                                               ; preds = %50, %12
  store %struct.rate_control_ref* null, %struct.rate_control_ref** %3, align 8
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.rate_control_ref*, %struct.rate_control_ref** %3, align 8
  ret %struct.rate_control_ref* %55
}

declare dso_local %struct.rate_control_ref* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_9__* @ieee80211_rate_control_ops_get(i8*) #1

declare dso_local i32 @ieee80211_rate_control_ops_put(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.rate_control_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
