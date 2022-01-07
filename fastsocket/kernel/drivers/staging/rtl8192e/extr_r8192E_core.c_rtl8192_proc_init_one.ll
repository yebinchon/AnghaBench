; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_proc_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_proc_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.r8192_priv = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@rtl8192_proc = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to initialize /proc/net/rtl8192/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stats-rx\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@proc_get_stats_rx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stats-tx\00", align 1
@proc_get_stats_tx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-tx\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stats-ap\00", align 1
@proc_get_stats_ap = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Unable to initialize /proc/net/rtl8192/%s/stats-ap\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@proc_get_registers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Unable to initialize /proc/net/rtl8192/%s/registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_proc_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_proc_init_one(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8192_priv*
  store %struct.r8192_priv* %7, %struct.r8192_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @S_IFDIR, align 4
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S_IXUGO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @rtl8192_proc, align 4
  %17 = call i32 @create_proc_entry(i32 %10, i32 %15, i32 %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @COMP_ERR, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RT_TRACE(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %102

30:                                               ; preds = %1
  %31 = load i32, i32* @S_IFREG, align 4
  %32 = load i32, i32* @S_IRUGO, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @proc_get_stats_rx, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %37, %struct.net_device* %38)
  store %struct.proc_dir_entry* %39, %struct.proc_dir_entry** %3, align 8
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %41 = icmp ne %struct.proc_dir_entry* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @COMP_ERR, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RT_TRACE(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %30
  %49 = load i32, i32* @S_IFREG, align 4
  %50 = load i32, i32* @S_IRUGO, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @proc_get_stats_tx, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %54, i32 %55, %struct.net_device* %56)
  store %struct.proc_dir_entry* %57, %struct.proc_dir_entry** %3, align 8
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %59 = icmp ne %struct.proc_dir_entry* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @COMP_ERR, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @RT_TRACE(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %48
  %67 = load i32, i32* @S_IFREG, align 4
  %68 = load i32, i32* @S_IRUGO, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @proc_get_stats_ap, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %72, i32 %73, %struct.net_device* %74)
  store %struct.proc_dir_entry* %75, %struct.proc_dir_entry** %3, align 8
  %76 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %77 = icmp ne %struct.proc_dir_entry* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @COMP_ERR, align 4
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @RT_TRACE(i32 %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %66
  %85 = load i32, i32* @S_IFREG, align 4
  %86 = load i32, i32* @S_IRUGO, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @proc_get_registers, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %87, i32 %90, i32 %91, %struct.net_device* %92)
  store %struct.proc_dir_entry* %93, %struct.proc_dir_entry** %3, align 8
  %94 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %95 = icmp ne %struct.proc_dir_entry* %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %84
  %97 = load i32, i32* @COMP_ERR, align 4
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RT_TRACE(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %24, %96, %84
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @create_proc_entry(i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_read_entry(i8*, i32, i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
