; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_stats_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_stats_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c" %8ld transmitted frames (TXF)\0A\00", align 1
@can_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c" %8ld received frames (RXF)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" %8ld matched frames (RXMF)\0A\00", align 1
@can_stattimer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@can_stat_update = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c" %8ld %% total match ratio (RXMR)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total tx rate (TXR)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total rx rate (RXR)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" %8ld %% current match ratio (CRXMR)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current tx rate (CTXR)\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current rx rate (CRXR)\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c" %8ld %% max match ratio (MRXMR)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max tx rate (MTXR)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max rx rate (MRXR)\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c" %8ld current receive list entries (CRCV)\0A\00", align 1
@can_pstats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c" %8ld maximum receive list entries (MRCV)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\0A %8ld statistic resets (STR)\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c" %8ld user statistic resets (USTR)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @can_stats_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_stats_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 @seq_putc(%struct.seq_file* %5, i8 signext 10)
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 11), align 8
  %9 = call i32 @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 10), align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 9), align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_putc(%struct.seq_file* %16, i8 signext 10)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @can_stattimer, i32 0, i32 0), align 8
  %19 = load i64, i64* @can_stat_update, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 8), align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 7), align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 6), align 8
  %30 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_putc(%struct.seq_file* %31, i8 signext 10)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 5), align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 4), align 8
  %38 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 3), align 8
  %41 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_putc(%struct.seq_file* %42, i8 signext 10)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 2), align 8
  %46 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 1), align 8
  %49 = call i32 @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 0), align 8
  %52 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = call i32 @seq_putc(%struct.seq_file* %53, i8 signext 10)
  br label %55

55:                                               ; preds = %21, %2
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 3), align 8
  %58 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 2), align 8
  %61 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 1), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 1), align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 0), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 0), align 8
  %74 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = call i32 @seq_putc(%struct.seq_file* %76, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
