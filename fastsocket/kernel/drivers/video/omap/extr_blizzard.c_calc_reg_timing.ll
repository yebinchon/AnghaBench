; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_calc_reg_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_calc_reg_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.extif_timings, i32 }
%struct.TYPE_5__ = type { i32 (%struct.extif_timings*)* }
%struct.TYPE_4__ = type { i32 }
%struct.extif_timings = type { i32, i32, i32, i32, i64, i32, i64, i32, i64, i8*, i8* }

@blizzard = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"Blizzard systim %lu ps extif_clk_period %u div %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"[reg]cson %d csoff %d reon %d reoff %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[reg]weon %d weoff %d recyc %d wecyc %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"[reg]rdaccess %d cspulse %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @calc_reg_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_reg_timing(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extif_timings*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = udiv i64 %7, 1000
  %9 = udiv i64 1000000000, %8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 3), align 8
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %15, i32 %16)
  store %struct.extif_timings* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 2), %struct.extif_timings** %5, align 8
  %18 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %19 = call i32 @memset(%struct.extif_timings* %18, i32 0, i32 72)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %22 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %24 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %26 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 2000
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @round_to_extif_ticks(i32 %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %33 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %35 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2000
  %38 = load i32, i32* %4, align 4
  %39 = call i8* @round_to_extif_ticks(i32 %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %42 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %44 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 12200
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @round_to_extif_ticks(i32 %46, i32 %47)
  %49 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %50 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %52 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1000
  %55 = load i32, i32* %4, align 4
  %56 = call i8* @round_to_extif_ticks(i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %59 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %61 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 13000
  %64 = load i32, i32* %4, align 4
  %65 = call i8* @round_to_extif_ticks(i32 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %68 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %70 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1000
  %73 = load i32, i32* %4, align 4
  %74 = call i8* @round_to_extif_ticks(i32 %72, i32 %73)
  %75 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %76 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = mul i64 2, %77
  %79 = add i64 %78, 2000
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %4, align 4
  %82 = call i8* @round_to_extif_ticks(i32 %80, i32 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %85 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %84, i32 0, i32 6
  store i64 %83, i64* %85, align 8
  %86 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %87 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %90 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %2
  %94 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %95 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %98 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %2
  %100 = load i64, i64* %6, align 8
  %101 = mul i64 2, %100
  %102 = add i64 %101, 2000
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %4, align 4
  %105 = call i8* @round_to_extif_ticks(i32 %103, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %108 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %110 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %113 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %99
  %117 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %118 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %121 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %116, %99
  %123 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %124 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %123, i32 0, i32 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %129 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %133 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %132, i32 0, i32 10
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %137 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %140 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %131, i64 %135, i32 %138, i32 %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %147 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %151 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %154 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %157 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %149, i64 %152, i32 %155, i64 %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %164 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %163, i32 0, i32 9
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %168 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = call i32 (i32, i8*, i64, i64, ...) @dev_dbg(i32 %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %166, i64 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32 (%struct.extif_timings*)*, i32 (%struct.extif_timings*)** %172, align 8
  %174 = load %struct.extif_timings*, %struct.extif_timings** %5, align 8
  %175 = call i32 %173(%struct.extif_timings* %174)
  ret i32 %175
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @memset(%struct.extif_timings*, i32, i32) #1

declare dso_local i8* @round_to_extif_ticks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
