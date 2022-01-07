; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_select_event_lwp_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_select_event_lwp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { i64 }

@SIGTRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lwp_info*, i8*)* @select_event_lwp_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_event_lwp_callback(%struct.lwp_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwp_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.lwp_info* %0, %struct.lwp_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %14 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %19 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @WIFSTOPPED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.lwp_info*, %struct.lwp_info** %4, align 8
  %25 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @WSTOPSIG(i64 %26)
  %28 = load i64, i64* @SIGTRAP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %38

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %23, %17, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* %3, align 4
  ret i32 %39
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
