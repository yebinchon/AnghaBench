; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_seq_info_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_seq_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.jbd2_stats_proc_session* }
%struct.jbd2_stats_proc_session = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%lu transaction, each up to %u blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"average: \0A  %ums waiting for transaction\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  %ums running transaction\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"  %ums transaction was being locked\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  %ums flushing data (in ordered mode)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  %ums logging transaction\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"  %lluus average transaction commit time\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  %lu handles per transaction\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"  %lu blocks per transaction\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"  %lu logged blocks per transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @jbd2_seq_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_seq_info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jbd2_stats_proc_session*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %8, align 8
  store %struct.jbd2_stats_proc_session* %9, %struct.jbd2_stats_proc_session** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %17 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %22 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %28 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %160

34:                                               ; preds = %14
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %37 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %43 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  %48 = call i32 @jiffies_to_msecs(i32 %47)
  %49 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %52 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %58 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %56, %61
  %63 = call i32 @jiffies_to_msecs(i32 %62)
  %64 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %67 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %73 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %71, %76
  %78 = call i32 @jiffies_to_msecs(i32 %77)
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %82 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %88 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %86, %91
  %93 = call i32 @jiffies_to_msecs(i32 %92)
  %94 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %96 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %97 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %103 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %101, %106
  %108 = call i32 @jiffies_to_msecs(i32 %107)
  %109 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %112 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @div_u64(i32 %115, i32 1000)
  %117 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %119 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %120 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %126 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %124, %129
  %131 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %133 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %134 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %140 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %138, %143
  %145 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %147 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %148 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %154 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %152, %157
  %159 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %158)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %34, %33, %13
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
