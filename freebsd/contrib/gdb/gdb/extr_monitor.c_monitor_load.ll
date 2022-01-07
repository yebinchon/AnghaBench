; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 (i32, i8*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"MON load\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_2__* null, align 8
@monitor_desc = common dso_local global i32 0, align 4
@hashmark = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s 0x%lx\00", align 1
@SREC_ALL = common dso_local global i32 0, align 4
@MO_SREC_ACK = common dso_local global i32 0, align 4
@monitor_wait_srec_ack = common dso_local global i32* null, align 8
@exec_bfd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @monitor_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_load(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @monitor_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %10, align 8
  %12 = icmp ne i32 (i32, i8*, i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %15, align 8
  %17 = load i32, i32* @monitor_desc, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @hashmark, align 4
  %20 = call i32 %16(i32 %17, i8* %18, i32 %19)
  br label %64

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23, i64* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8* %28, i8** %3, align 8
  br label %30

29:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @monitor_printf(i32 %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @monitor_expect(i64 %42, i32* null, i32 0)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load i32, i32* @monitor_desc, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @SREC_ALL, align 4
  %50 = load i32, i32* @hashmark, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_monitor, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MO_SREC_ACK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32*, i32** @monitor_wait_srec_ack, align 8
  br label %60

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ null, %59 ]
  %62 = call i32 @load_srec(i32 %45, i8* %46, i32 %48, i32 32, i32 %49, i32 %50, i32* %61)
  %63 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %64

64:                                               ; preds = %60, %13
  %65 = load i64, i64* @exec_bfd, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @exec_bfd, align 8
  %69 = call i32 @bfd_get_start_address(i64 %68)
  %70 = call i32 @write_pc(i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @monitor_debug(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i64*) #1

declare dso_local i32 @monitor_printf(i32) #1

declare dso_local i32 @monitor_expect(i64, i32*, i32) #1

declare dso_local i32 @load_srec(i32, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @write_pc(i32) #1

declare dso_local i32 @bfd_get_start_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
