; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggPrintTally.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggPrintTally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.aggTally }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aggTally = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"got_packets_sum =\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  got_bytes_sum =\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"sent_packets_sum=\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" sent_bytes_sum =\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"avg_got_packets =\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  avg_got_bytes =\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"avg_sent_packets=\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" avg_sent_bytes =\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Hardware Tx MPDU=\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"  BA Fail number=\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"1/(BA fail rate)=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggPrintTally(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aggTally*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.aggTally* %8, %struct.aggTally** %4, align 8
  %9 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %10 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @zfAggTallyReset(i32* %14)
  store i32 0, i32* %2, align 4
  br label %178

16:                                               ; preds = %1
  %17 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %18 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %22 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %25 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = mul nsw i32 %23, %27
  %29 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %30 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %34 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  %37 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %38 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %40 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %43 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 %41, %45
  %47 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %48 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %52 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %50, %53
  %55 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %56 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %58 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %61 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 %59, %63
  %65 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %66 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %70 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  %73 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %74 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %76 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %79 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %77, %81
  %83 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %84 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %88 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %86, %89
  %91 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %92 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ZM_LV_0, align 4
  %94 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %95 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @zm_msg1_agg(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ZM_LV_0, align 4
  %99 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %100 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zm_msg1_agg(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @ZM_LV_0, align 4
  %104 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %105 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @zm_msg1_agg(i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @ZM_LV_0, align 4
  %109 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %110 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @zm_msg1_agg(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %114 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %113, i32 0, i32 8
  store i32 0, i32* %114, align 4
  %115 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %116 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %115, i32 0, i32 6
  store i32 0, i32* %116, align 4
  %117 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %118 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %117, i32 0, i32 4
  store i32 0, i32* %118, align 4
  %119 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %120 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* @ZM_LV_0, align 4
  %122 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %123 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @zm_msg1_agg(i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @ZM_LV_0, align 4
  %127 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %128 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @zm_msg1_agg(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @ZM_LV_0, align 4
  %132 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %133 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @zm_msg1_agg(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @ZM_LV_0, align 4
  %137 = load %struct.aggTally*, %struct.aggTally** %4, align 8
  %138 = getelementptr inbounds %struct.aggTally, %struct.aggTally* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @zm_msg1_agg(i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %16
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %146, %16
  %153 = load i32, i32* @ZM_LV_0, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @zm_msg1_agg(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @ZM_LV_0, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @zm_msg1_agg(i32 %159, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  br label %177

165:                                              ; preds = %146
  %166 = load i32, i32* @ZM_LV_0, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sdiv i32 %170, %174
  %176 = call i32 @zm_msg1_agg(i32 %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %165, %152
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %13
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfAggTallyReset(i32*) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
