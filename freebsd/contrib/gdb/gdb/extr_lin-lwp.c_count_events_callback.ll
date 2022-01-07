; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_count_events_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_count_events_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i64 }

@SIGTRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @count_events_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_events_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %13 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %18 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @WIFSTOPPED(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  %24 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @WSTOPSIG(i64 %25)
  %27 = load i64, i64* @SIGTRAP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %29, %22, %16, %2
  ret i32 0
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @WIFSTOPPED(i64) #1

declare dso_local i64 @WSTOPSIG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
