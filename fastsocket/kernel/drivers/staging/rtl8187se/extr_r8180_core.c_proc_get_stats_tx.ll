; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_proc_get_stats_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_proc_get_stats_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [79 x i8] c"TX OK: %lu\0ATX Error: %lu\0ATX Retry: %lu\0ATX beacon OK: %lu\0ATX beacon error: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_stats_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_stats_tx(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.r8180_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.net_device*
  store %struct.net_device* %18, %struct.net_device** %13, align 8
  %19 = load %struct.net_device*, %struct.net_device** %13, align 8
  %20 = call i64 @ieee80211_priv(%struct.net_device* %19)
  %21 = inttoptr i64 %20 to %struct.r8180_priv*
  store %struct.r8180_priv* %21, %struct.r8180_priv** %14, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %25, %29
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %30, %34
  store i64 %35, i64* %16, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i64, i64* %16, align 8
  %44 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %45 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %47, %51
  %53 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %54 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %59 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %63 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %14, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @snprintf(i8* %39, i32 %42, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %57, i32 %61, i32 %65, i32 %69)
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
