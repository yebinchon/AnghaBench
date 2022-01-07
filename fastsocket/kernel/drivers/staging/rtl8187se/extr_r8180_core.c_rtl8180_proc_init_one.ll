; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_proc_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_proc_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.r8180_priv = type { i32 }

@rtl8180_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to initialize /proc/net/r8180/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stats-hw\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@proc_get_stats_hw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to initialize /proc/net/r8180/%s/stats-hw\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stats-rx\00", align 1
@proc_get_stats_rx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Unable to initialize /proc/net/r8180/%s/stats-rx\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stats-tx\00", align 1
@proc_get_stats_tx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Unable to initialize /proc/net/r8180/%s/stats-tx\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@proc_get_registers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Unable to initialize /proc/net/r8180/%s/registers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_proc_init_one(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %4, align 8
  %8 = load i32, i32* @rtl8180_proc, align 4
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %12 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DMESGE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %88

20:                                               ; preds = %1
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @proc_get_stats_hw, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %27, %struct.net_device* %28)
  store %struct.proc_dir_entry* %29, %struct.proc_dir_entry** %3, align 8
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %31 = icmp ne %struct.proc_dir_entry* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DMESGE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* @S_IFREG, align 4
  %39 = load i32, i32* @S_IRUGO, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @proc_get_stats_rx, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %43, i32 %44, %struct.net_device* %45)
  store %struct.proc_dir_entry* %46, %struct.proc_dir_entry** %3, align 8
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %48 = icmp ne %struct.proc_dir_entry* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DMESGE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load i32, i32* @S_IFREG, align 4
  %56 = load i32, i32* @S_IRUGO, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %59 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @proc_get_stats_tx, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %57, i32 %60, i32 %61, %struct.net_device* %62)
  store %struct.proc_dir_entry* %63, %struct.proc_dir_entry** %3, align 8
  %64 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %65 = icmp ne %struct.proc_dir_entry* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %54
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DMESGE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %54
  %72 = load i32, i32* @S_IFREG, align 4
  %73 = load i32, i32* @S_IRUGO, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %76 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @proc_get_registers, align 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %77, i32 %78, %struct.net_device* %79)
  store %struct.proc_dir_entry* %80, %struct.proc_dir_entry** %3, align 8
  %81 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %82 = icmp ne %struct.proc_dir_entry* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %71
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DMESGE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %15, %83, %71
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESGE(i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_read_entry(i8*, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
