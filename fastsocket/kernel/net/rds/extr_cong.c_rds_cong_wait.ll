; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_cong_map = type { i32 }
%struct.rds_sock = type { i32, i32, i64 }

@s_cong_send_error = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@s_cong_send_blocked = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"waiting on map %p for port %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cong_wait(%struct.rds_cong_map* %0, i32 %1, i32 %2, %struct.rds_sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_cong_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rds_sock*, align 8
  %10 = alloca i64, align 8
  store %struct.rds_cong_map* %0, %struct.rds_cong_map** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rds_sock* %3, %struct.rds_sock** %9, align 8
  %11 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @rds_cong_test_bit(%struct.rds_cong_map* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %21 = icmp ne %struct.rds_sock* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %24 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %29 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i32 @RDS_CONG_MONITOR_MASK(i32 %33)
  %35 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %36 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %40 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @rds_cong_test_bit(%struct.rds_cong_map* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %71

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %22, %19
  %50 = load i32, i32* @s_cong_send_error, align 4
  %51 = call i32 @rds_stats_inc(i32 %50)
  %52 = load i32, i32* @ENOBUFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %16
  %55 = load i32, i32* @s_cong_send_blocked, align 4
  %56 = call i32 @rds_stats_inc(i32 %55)
  %57 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @be16_to_cpu(i32 %58)
  %60 = call i32 @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.rds_cong_map* %57, i32 %59)
  %61 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  %62 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rds_cong_map*, %struct.rds_cong_map** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @rds_cong_test_bit(%struct.rds_cong_map* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event_interruptible(i32 %63, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %54, %49, %47, %15
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @rds_cong_test_bit(%struct.rds_cong_map*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RDS_CONG_MONITOR_MASK(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_cong_map*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
