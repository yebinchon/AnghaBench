; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_new_wbuf_timer_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_new_wbuf_timer_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"set timer for jhead %s, %llu-%llu millisecs\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_wbuf*)* @new_wbuf_timer_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_wbuf_timer_nolock(%struct.ubifs_wbuf* %0) #0 {
  %2 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %2, align 8
  %3 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %4 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %3, i32 0, i32 2
  %5 = call i32 @hrtimer_active(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @ubifs_assert(i32 %8)
  %10 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %11 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %17 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dbg_jhead(i32 %18)
  %20 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %21 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ktime_to_ns(i32 %22)
  %24 = load i32, i32* @USEC_PER_SEC, align 4
  %25 = call i32 @div_u64(i64 %23, i32 %24)
  %26 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %27 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ktime_to_ns(i32 %28)
  %30 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %31 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* @USEC_PER_SEC, align 4
  %35 = call i32 @div_u64(i64 %33, i32 %34)
  %36 = call i32 @dbg_io(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %25, i32 %35)
  %37 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %38 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %37, i32 0, i32 2
  %39 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %40 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %2, align 8
  %43 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %46 = call i32 @hrtimer_start_range_ns(i32* %38, i32 %41, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @div_u64(i64, i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
