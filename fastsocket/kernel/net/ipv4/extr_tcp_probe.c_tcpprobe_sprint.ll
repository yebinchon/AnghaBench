; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_probe.c_tcpprobe_sprint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_probe.c_tcpprobe_sprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.tcp_log* }
%struct.tcp_log = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64, i64 }

@tcp_probe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bufsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%lu.%09lu %pI4:%u %pI4:%u %d %#x %#x %u %u %u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tcpprobe_sprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpprobe_sprint(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_log*, align 8
  %6 = alloca %struct.timespec, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcp_log*, %struct.tcp_log** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 2), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 0), align 8
  %9 = load i32, i32* @bufsize, align 4
  %10 = srem i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %7, i64 %11
  store %struct.tcp_log* %12, %struct.tcp_log** %5, align 8
  %13 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_probe, i32 0, i32 1), align 4
  %17 = call i32 @ktime_sub(i32 %15, i32 %16)
  %18 = call { i64, i64 } @ktime_to_timespec(i32 %17)
  %19 = bitcast %struct.timespec* %6 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i64 } %18, 0
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i64 } %18, 1
  store i64 %23, i64* %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %30, i32 0, i32 10
  %32 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohs(i32 %34)
  %36 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %36, i32 0, i32 8
  %38 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %46 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %49 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %55 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tcp_log*, %struct.tcp_log** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_log, %struct.tcp_log* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29, i32* %31, i32 %35, i32* %37, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  ret i32 %63
}

declare dso_local { i64, i64 } @ktime_to_timespec(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
