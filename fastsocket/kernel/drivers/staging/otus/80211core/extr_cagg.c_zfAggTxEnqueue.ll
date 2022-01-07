; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxEnqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxEnqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i8*, i32* }
%struct.TYPE_12__ = type { i32 (i32*, i32*)* }

@ZM_AGGQ_SIZE = common dso_local global i32 0, align 4
@ZM_AGGQ_SIZE_MASK = common dso_local global i32 0, align 4
@DESTQ = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tid_tx->size=\00", align 1
@wd = common dso_local global %struct.TYPE_12__* null, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't enqueue, tid_tx->size=\00", align 1
@ZM_ERR_EXCEED_PRIORITY_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggTxEnqueue(i32* %0, i32* %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @zm_agg_qlen(i32* %17, i64 %20, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZM_AGGQ_SIZE, align 4
  %32 = sub nsw i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %148

34:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32* %35, i32** %43, align 8
  %44 = call i8* (...) @zm_agg_GetTime()
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i8* %45, i8** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @ZM_AGGQ_SIZE_MASK, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @zm_agg_qlen(i32* %78, i64 %81, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %34
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ZM_AGGQ_SIZE, align 4
  %96 = sub nsw i32 %95, 10
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %98, %91, %34
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @zmw_leave_critical_section(i32* %105)
  %107 = load i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 1), align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = call i32 %107(i32* %108, i32 0, i32 %111, %struct.TYPE_11__* %112, i32* null)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %104
  %116 = load i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 0), align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = call i32 %116(i32* %117, i32 0, i32 %120, %struct.TYPE_11__* %121, i32* null)
  br label %123

123:                                              ; preds = %115, %104
  %124 = load i32, i32* @ZM_LV_0, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @zm_msg1_agg(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %123
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %136, align 8
  %138 = icmp ne i32 (i32*, i32*)* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %141, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 %142(i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %139, %134, %131, %123
  %147 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %147, i32* %5, align 4
  br label %175

148:                                              ; preds = %4
  %149 = load i32, i32* @ZM_LV_0, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @zm_msg1_agg(i32 %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %148
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @zmw_leave_critical_section(i32* %155)
  %157 = load i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 1), align 8
  %158 = load i32*, i32** %6, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %163 = call i32 %157(i32* %158, i32 0, i32 %161, %struct.TYPE_11__* %162, i32* null)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %154
  %166 = load i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)*, i32 (i32*, i32, i32, %struct.TYPE_11__*, i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 0), align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = call i32 %166(i32* %167, i32 0, i32 %170, %struct.TYPE_11__* %171, i32* null)
  br label %173

173:                                              ; preds = %165, %154
  %174 = load i32, i32* @ZM_ERR_EXCEED_PRIORITY_THRESHOLD, align 4
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %173, %146
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i8* @zm_agg_qlen(i32*, i64, i32) #1

declare dso_local i8* @zm_agg_GetTime(...) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
