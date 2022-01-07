; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_process_adjtimex_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_ntp.c_process_adjtimex_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@ADJ_STATUS = common dso_local global i32 0, align 4
@ADJ_NANO = common dso_local global i32 0, align 4
@STA_NANO = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@ADJ_MICRO = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@PPM_SCALE = common dso_local global i32 0, align 4
@time_freq = common dso_local global i32 0, align 4
@MAXFREQ_SCALED = common dso_local global i64 0, align 8
@ADJ_MAXERROR = common dso_local global i32 0, align 4
@time_maxerror = common dso_local global i32 0, align 4
@ADJ_ESTERROR = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@ADJ_TIMECONST = common dso_local global i32 0, align 4
@time_constant = common dso_local global i32 0, align 4
@MAXTC = common dso_local global i64 0, align 8
@ADJ_TAI = common dso_local global i32 0, align 4
@time_tai = common dso_local global i64 0, align 8
@ADJ_OFFSET = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@tick_usec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timex*, %struct.timespec*)* @process_adjtimex_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_adjtimex_modes(%struct.timex* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timex*, align 8
  %4 = alloca %struct.timespec*, align 8
  store %struct.timex* %0, %struct.timex** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.timex*, %struct.timex** %3, align 8
  %6 = getelementptr inbounds %struct.timex, %struct.timex* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ADJ_STATUS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.timex*, %struct.timex** %3, align 8
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = call i32 @process_adj_status(%struct.timex* %12, %struct.timespec* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.timex*, %struct.timex** %3, align 8
  %17 = getelementptr inbounds %struct.timex, %struct.timex* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADJ_NANO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @STA_NANO, align 4
  %24 = load i32, i32* @time_status, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @time_status, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.timex*, %struct.timex** %3, align 8
  %28 = getelementptr inbounds %struct.timex, %struct.timex* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADJ_MICRO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @STA_NANO, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @time_status, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @time_status, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.timex*, %struct.timex** %3, align 8
  %40 = getelementptr inbounds %struct.timex, %struct.timex* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ADJ_FREQUENCY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.timex*, %struct.timex** %3, align 8
  %47 = getelementptr inbounds %struct.timex, %struct.timex* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PPM_SCALE, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* @time_freq, align 4
  %51 = load i32, i32* @time_freq, align 4
  %52 = load i64, i64* @MAXFREQ_SCALED, align 8
  %53 = call i32 @min(i32 %51, i64 %52)
  store i32 %53, i32* @time_freq, align 4
  %54 = load i32, i32* @time_freq, align 4
  %55 = load i64, i64* @MAXFREQ_SCALED, align 8
  %56 = sub nsw i64 0, %55
  %57 = call i32 @max(i32 %54, i64 %56)
  store i32 %57, i32* @time_freq, align 4
  br label %58

58:                                               ; preds = %45, %38
  %59 = load %struct.timex*, %struct.timex** %3, align 8
  %60 = getelementptr inbounds %struct.timex, %struct.timex* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ADJ_MAXERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.timex*, %struct.timex** %3, align 8
  %67 = getelementptr inbounds %struct.timex, %struct.timex* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @time_maxerror, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.timex*, %struct.timex** %3, align 8
  %71 = getelementptr inbounds %struct.timex, %struct.timex* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADJ_ESTERROR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.timex*, %struct.timex** %3, align 8
  %78 = getelementptr inbounds %struct.timex, %struct.timex* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @time_esterror, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.timex*, %struct.timex** %3, align 8
  %82 = getelementptr inbounds %struct.timex, %struct.timex* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ADJ_TIMECONST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %80
  %88 = load %struct.timex*, %struct.timex** %3, align 8
  %89 = getelementptr inbounds %struct.timex, %struct.timex* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* @time_constant, align 4
  %91 = load i32, i32* @time_status, align 4
  %92 = load i32, i32* @STA_NANO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @time_constant, align 4
  %97 = add nsw i32 %96, 4
  store i32 %97, i32* @time_constant, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* @time_constant, align 4
  %100 = load i64, i64* @MAXTC, align 8
  %101 = call i32 @min(i32 %99, i64 %100)
  store i32 %101, i32* @time_constant, align 4
  %102 = load i32, i32* @time_constant, align 4
  %103 = call i32 @max(i32 %102, i64 0)
  store i32 %103, i32* @time_constant, align 4
  br label %104

104:                                              ; preds = %98, %80
  %105 = load %struct.timex*, %struct.timex** %3, align 8
  %106 = getelementptr inbounds %struct.timex, %struct.timex* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ADJ_TAI, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.timex*, %struct.timex** %3, align 8
  %113 = getelementptr inbounds %struct.timex, %struct.timex* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.timex*, %struct.timex** %3, align 8
  %118 = getelementptr inbounds %struct.timex, %struct.timex* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* @time_tai, align 8
  br label %121

121:                                              ; preds = %116, %111, %104
  %122 = load %struct.timex*, %struct.timex** %3, align 8
  %123 = getelementptr inbounds %struct.timex, %struct.timex* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ADJ_OFFSET, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load %struct.timex*, %struct.timex** %3, align 8
  %130 = getelementptr inbounds %struct.timex, %struct.timex* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ntp_update_offset(i32 %131)
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.timex*, %struct.timex** %3, align 8
  %135 = getelementptr inbounds %struct.timex, %struct.timex* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ADJ_TICK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.timex*, %struct.timex** %3, align 8
  %142 = getelementptr inbounds %struct.timex, %struct.timex* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* @tick_usec, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.timex*, %struct.timex** %3, align 8
  %146 = getelementptr inbounds %struct.timex, %struct.timex* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ADJ_TICK, align 4
  %149 = load i32, i32* @ADJ_FREQUENCY, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @ADJ_OFFSET, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %147, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = call i32 (...) @ntp_update_frequency()
  br label %157

157:                                              ; preds = %155, %144
  ret void
}

declare dso_local i32 @process_adj_status(%struct.timex*, %struct.timespec*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @ntp_update_offset(i32) #1

declare dso_local i32 @ntp_update_frequency(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
