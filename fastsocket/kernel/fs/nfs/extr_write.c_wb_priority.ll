; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_wb_priority.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_wb_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writeback_control = type { i64, i64, i64 }

@FLUSH_HIGHPRI = common dso_local global i32 0, align 4
@FLUSH_STABLE = common dso_local global i32 0, align 4
@FLUSH_LOWPRI = common dso_local global i32 0, align 4
@FLUSH_COND_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.writeback_control*)* @wb_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_priority(%struct.writeback_control* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.writeback_control*, align 8
  store %struct.writeback_control* %0, %struct.writeback_control** %3, align 8
  %4 = load %struct.writeback_control*, %struct.writeback_control** %3, align 8
  %5 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @FLUSH_HIGHPRI, align 4
  %10 = load i32, i32* @FLUSH_STABLE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.writeback_control*, %struct.writeback_control** %3, align 8
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.writeback_control*, %struct.writeback_control** %3, align 8
  %19 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @FLUSH_LOWPRI, align 4
  %24 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @FLUSH_COND_STABLE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %22, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
