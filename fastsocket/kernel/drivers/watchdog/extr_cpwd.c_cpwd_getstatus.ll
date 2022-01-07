; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_getstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8, i32, i64 }

@WD_STATUS = common dso_local global i64 0, align 8
@PLD_IMASK = common dso_local global i64 0, align 8
@WD_STOPPED = common dso_local global i8 0, align 1
@WD_S_EXPIRED = common dso_local global i8 0, align 1
@WD_EXPIRED = common dso_local global i8 0, align 1
@WD_S_RUNNING = common dso_local global i8 0, align 1
@WD_FREERUN = common dso_local global i8 0, align 1
@WD_STAT_BSTOP = common dso_local global i32 0, align 4
@WD_STAT_SVCD = common dso_local global i32 0, align 4
@WD_RUNNING = common dso_local global i8 0, align 1
@WD_SERVICED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpwd*, i32)* @cpwd_getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpwd_getstatus(%struct.cpwd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.cpwd* %0, %struct.cpwd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %10 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WD_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call zeroext i8 @cpwd_readb(i64 %18)
  store i8 %19, i8* %6, align 1
  %20 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %21 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PLD_IMASK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call zeroext i8 @cpwd_readb(i64 %29)
  store i8 %30, i8* %7, align 1
  %31 = load i8, i8* @WD_STOPPED, align 1
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %6, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %131

37:                                               ; preds = %2
  %38 = load i8, i8* @WD_S_EXPIRED, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8, i8* @WD_EXPIRED, align 1
  store i8 %45, i8* %8, align 1
  br label %108

46:                                               ; preds = %37
  %47 = load i8, i8* @WD_S_RUNNING, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %107

53:                                               ; preds = %46
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %57 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = and i32 %55, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i8, i8* @WD_FREERUN, align 1
  store i8 %68, i8* %8, align 1
  br label %106

69:                                               ; preds = %53
  %70 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %71 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %76 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WD_STAT_BSTOP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %74
  %87 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %88 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WD_STAT_SVCD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i8, i8* @WD_EXPIRED, align 1
  store i8 %99, i8* %8, align 1
  br label %102

100:                                              ; preds = %86
  %101 = load i8, i8* @WD_FREERUN, align 1
  store i8 %101, i8* %8, align 1
  br label %102

102:                                              ; preds = %100, %98
  br label %105

103:                                              ; preds = %74, %69
  %104 = load i8, i8* @WD_RUNNING, align 1
  store i8 %104, i8* %8, align 1
  br label %105

105:                                              ; preds = %103, %102
  br label %106

106:                                              ; preds = %105, %67
  br label %107

107:                                              ; preds = %106, %46
  br label %108

108:                                              ; preds = %107, %44
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %111 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @WD_STAT_SVCD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load i8, i8* @WD_SERVICED, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %8, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %8, align 1
  br label %128

128:                                              ; preds = %121, %109
  %129 = load i8, i8* %8, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %34
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local zeroext i8 @cpwd_readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
