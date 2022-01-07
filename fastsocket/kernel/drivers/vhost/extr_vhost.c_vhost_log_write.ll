; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_log_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i64, i32 }
%struct.vhost_log = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_log_write(%struct.vhost_virtqueue* %0, %struct.vhost_log* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca %struct.vhost_log*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %6, align 8
  store %struct.vhost_log* %1, %struct.vhost_log** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = call i32 (...) @smp_wmb()
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %60, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.vhost_log*, %struct.vhost_log** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %19, i64 %21
  %23 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @min(i32 %24, i64 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vhost_log*, %struct.vhost_log** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %30, i64 %32
  %34 = getelementptr inbounds %struct.vhost_log, %struct.vhost_log* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @log_write(i32 %29, i32 %35, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %18
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %50 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %55 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @eventfd_signal(i64 %56, i32 1)
  br label %58

58:                                               ; preds = %53, %48
  store i32 0, i32* %5, align 4
  br label %65

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %14

63:                                               ; preds = %14
  %64 = call i32 (...) @BUG()
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %58, %40
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @log_write(i32, i32, i64) #1

declare dso_local i32 @eventfd_signal(i64, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
