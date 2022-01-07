; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_proc_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_proc_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.r8180_priv = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"stats-hw\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stats-tx\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stats-rx\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@rtl8180_proc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_proc_remove_one(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @ieee80211_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.r8180_priv*
  store %struct.r8180_priv* %6, %struct.r8180_priv** %3, align 8
  %7 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %8 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32*, i32** @rtl8180_proc, align 8
  %32 = call i32 @remove_proc_entry(i8* %30, i32* %31)
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %11, %1
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
