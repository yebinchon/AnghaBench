; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_next_pidmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_next_pidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { %struct.pidmap* }
%struct.pidmap = type { i32 }

@PID_MAX_LIMIT = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i32 0, align 4
@PIDMAP_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_pidmap(%struct.pid_namespace* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pidmap*, align 8
  %8 = alloca %struct.pidmap*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PID_MAX_LIMIT, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = add i32 %14, 1
  %16 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %19 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %18, i32 0, i32 0
  %20 = load %struct.pidmap*, %struct.pidmap** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %21, 1
  %23 = load i32, i32* @BITS_PER_PAGE, align 4
  %24 = udiv i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %20, i64 %25
  store %struct.pidmap* %26, %struct.pidmap** %7, align 8
  %27 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %28 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %27, i32 0, i32 0
  %29 = load %struct.pidmap*, %struct.pidmap** %28, align 8
  %30 = load i64, i64* @PIDMAP_ENTRIES, align 8
  %31 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %29, i64 %30
  store %struct.pidmap* %31, %struct.pidmap** %8, align 8
  br label %32

32:                                               ; preds = %62, %13
  %33 = load %struct.pidmap*, %struct.pidmap** %7, align 8
  %34 = load %struct.pidmap*, %struct.pidmap** %8, align 8
  %35 = icmp ult %struct.pidmap* %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.pidmap*, %struct.pidmap** %7, align 8
  %38 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %62

46:                                               ; preds = %36
  %47 = load %struct.pidmap*, %struct.pidmap** %7, align 8
  %48 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BITS_PER_PAGE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @find_next_bit(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @BITS_PER_PAGE, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %58 = load %struct.pidmap*, %struct.pidmap** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @mk_pid(%struct.pid_namespace* %57, %struct.pidmap* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.pidmap*, %struct.pidmap** %7, align 8
  %64 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %63, i32 1
  store %struct.pidmap* %64, %struct.pidmap** %7, align 8
  store i32 0, i32* %6, align 4
  br label %32

65:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %56, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @mk_pid(%struct.pid_namespace*, %struct.pidmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
