; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_stats_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_stats_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [590 x i8] c"TX VI priority ok int: %lu\0ATX VI priority error int: %lu\0ATX VO priority ok int: %lu\0ATX VO priority error int: %lu\0ATX BE priority ok int: %lu\0ATX BE priority error int: %lu\0ATX BK priority ok int: %lu\0ATX BK priority error int: %lu\0ATX MANAGE priority ok int: %lu\0ATX MANAGE priority error int: %lu\0ATX BEACON priority ok int: %lu\0ATX BEACON priority error int: %lu\0ATX queue resume: %lu\0ATX queue stopped?: %d\0ATX fifo overflow: %lu\0ATX VI queue: %d\0ATX VO queue: %d\0ATX BE queue: %d\0ATX BK queue: %d\0ATX VI dropped: %lu\0ATX VO dropped: %lu\0ATX BE dropped: %lu\0ATX BK dropped: %lu\0ATX total data packets %lu\0A\00", align 1
@VI_PRIORITY = common dso_local global i64 0, align 8
@VO_PRIORITY = common dso_local global i64 0, align 8
@BE_PRIORITY = common dso_local global i64 0, align 8
@BK_PRIORITY = common dso_local global i64 0, align 8
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
  %14 = alloca %struct.r8192_priv*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.net_device*
  store %struct.net_device* %17, %struct.net_device** %13, align 8
  %18 = load %struct.net_device*, %struct.net_device** %13, align 8
  %19 = call i64 @ieee80211_priv(%struct.net_device* %18)
  %20 = inttoptr i64 %19 to %struct.r8192_priv*
  store %struct.r8192_priv* %20, %struct.r8192_priv** %14, align 8
  store i32 0, i32* %15, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %15, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 18
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.net_device*, %struct.net_device** %13, align 8
  %81 = call i32 @netif_queue_stopped(%struct.net_device* %80)
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @VI_PRIORITY, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = call i32 @atomic_read(i32* %90)
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @VO_PRIORITY, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i32 @atomic_read(i32* %96)
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @BE_PRIORITY, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i32 @atomic_read(i32* %102)
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @BK_PRIORITY, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = call i32 @atomic_read(i32* %108)
  %110 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %111 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %14, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @snprintf(i8* %24, i32 %27, i8* getelementptr inbounds ([590 x i8], [590 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %75, i32 %79, i32 %81, i32 %85, i32 %91, i32 %97, i32 %103, i32 %109, i32 %113, i32 %117, i32 %121, i32 %125, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %15, align 4
  ret i32 %136
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
