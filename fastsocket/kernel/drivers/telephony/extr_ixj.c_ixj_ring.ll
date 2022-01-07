; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@hertz = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @ixj_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_ring(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @ixj_hookstate(%struct.TYPE_8__* %9)
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @ixj_ring_off(%struct.TYPE_8__* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  store i32 1, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  store i8 0, i8* %4, align 1
  br label %20

20:                                               ; preds = %96, %19
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 4
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %20
  %29 = load i32, i32* @jiffies, align 4
  %30 = load i32, i32* @hertz, align 4
  %31 = mul nsw i32 1, %30
  %32 = add nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @ixj_ring_on(%struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %58, %28
  %37 = load i32, i32* @jiffies, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @time_before(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = call i32 @ixj_hookstate(%struct.TYPE_8__* %42)
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = call i32 @ixj_ring_off(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  store i32 1, i32* %2, align 4
  br label %105

52:                                               ; preds = %41
  %53 = call i32 @schedule_timeout_interruptible(i32 1)
  %54 = load i32, i32* @current, align 4
  %55 = call i64 @signal_pending(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  br label %36

59:                                               ; preds = %57, %36
  %60 = load i32, i32* @jiffies, align 4
  %61 = load i32, i32* @hertz, align 4
  %62 = mul nsw i32 3, %61
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = call i32 @ixj_ring_off(%struct.TYPE_8__* %65)
  br label %67

67:                                               ; preds = %94, %59
  %68 = load i32, i32* @jiffies, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @time_before(i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = call i32 @ixj_hookstate(%struct.TYPE_8__* %73)
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = call i32 @msleep(i32 10)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @ixj_hookstate(%struct.TYPE_8__* %79)
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  store i32 1, i32* %2, align 4
  br label %105

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %72
  %89 = call i32 @schedule_timeout_interruptible(i32 1)
  %90 = load i32, i32* @current, align 4
  %91 = call i64 @signal_pending(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %88
  br label %67

95:                                               ; preds = %93, %67
  br label %96

96:                                               ; preds = %95
  %97 = load i8, i8* %4, align 1
  %98 = add i8 %97, 1
  store i8 %98, i8* %4, align 1
  br label %20

99:                                               ; preds = %20
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = call i32 @ixj_ring_off(%struct.TYPE_8__* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %83, %46, %13
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ixj_hookstate(%struct.TYPE_8__*) #1

declare dso_local i32 @ixj_ring_off(%struct.TYPE_8__*) #1

declare dso_local i32 @ixj_ring_on(%struct.TYPE_8__*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
