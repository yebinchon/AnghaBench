; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.ubifs_wbuf = type { i32, i32, i32, i64, i32, %struct.TYPE_2__, i64, %struct.ubifs_info*, i32, i32, i32*, i32, i64, i32*, i8* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@wbuf_timer_callback_nolock = common dso_local global i32 0, align 4
@WBUF_TIMEOUT_SOFTLIMIT = common dso_local global i64 0, align 8
@WBUF_TIMEOUT_HARDLIMIT = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_init(%struct.ubifs_info* %0, %struct.ubifs_wbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_wbuf*, align 8
  %6 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_wbuf* %1, %struct.ubifs_wbuf** %5, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i64 %9, i32 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %13, i32 0, i32 13
  store i32* %12, i32** %14, align 8
  %15 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %15, i32 0, i32 13
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @UBIFS_CH_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %25, %27
  %29 = add i64 %28, 1
  %30 = mul i64 %29, 4
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i64 %31, i32 %32)
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %36, i32 0, i32 14
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %22
  %41 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %42 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %41, i32 0, i32 13
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 13
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %22
  %50 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %50, i32 0, i32 12
  store i64 0, i64* %51, align 8
  %52 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %52, i32 0, i32 1
  store i32 -1, i32* %53, align 4
  %54 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %55 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %61 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @UBI_UNKNOWN, align 4
  %63 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %64 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %65, i32 0, i32 10
  store i32* null, i32** %66, align 8
  %67 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %67, i32 0, i32 9
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %71 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %70, i32 0, i32 8
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %74 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %75 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %74, i32 0, i32 7
  store %struct.ubifs_info* %73, %struct.ubifs_info** %75, align 8
  %76 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %77 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %76, i32 0, i32 6
  store i64 0, i64* %77, align 8
  %78 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %79 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %78, i32 0, i32 5
  %80 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %81 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %82 = call i32 @hrtimer_init(%struct.TYPE_2__* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @wbuf_timer_callback_nolock, align 4
  %84 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i64, i64* @WBUF_TIMEOUT_SOFTLIMIT, align 8
  %88 = call i32 @ktime_set(i64 %87, i32 0)
  %89 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %90 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @WBUF_TIMEOUT_HARDLIMIT, align 8
  %92 = load i64, i64* @WBUF_TIMEOUT_SOFTLIMIT, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %95 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %97 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %98, 1000000000
  store i64 %99, i64* %97, align 8
  %100 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %101 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ULONG_MAX, align 8
  %104 = icmp ule i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @ubifs_assert(i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %49, %40, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ktime_set(i64, i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
