; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_read_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.port_input = type { i64, i32, i32, i32, i32, i32 }
%struct.msghdr = type { i32, i8*, i32, i32, %struct.iovec*, i32, i32 }
%struct.iovec = type { i32, i32 }

@RECV_CBUF_SIZE = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@snmpd_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_input*, %struct.msghdr*, i8*)* @inet_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_read_msg(%struct.port_input* %0, %struct.msghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_input*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.iovec], align 4
  %9 = alloca i32, align 4
  store %struct.port_input* %0, %struct.port_input** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.port_input*, %struct.port_input** %5, align 8
  %11 = getelementptr inbounds %struct.port_input, %struct.port_input* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %14 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.port_input*, %struct.port_input** %5, align 8
  %16 = getelementptr inbounds %struct.port_input, %struct.port_input* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.port_input*, %struct.port_input** %5, align 8
  %21 = getelementptr inbounds %struct.port_input, %struct.port_input* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.port_input*, %struct.port_input** %5, align 8
  %26 = getelementptr inbounds %struct.port_input, %struct.port_input* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %31 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 4
  store %struct.iovec* %30, %struct.iovec** %32, align 8
  %33 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @RECV_CBUF_SIZE, align 4
  %39 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @RECV_CBUF_SIZE, align 4
  %45 = call i32 @memset(i8* %43, i32 0, i32 %44)
  %46 = load %struct.port_input*, %struct.port_input** %5, align 8
  %47 = getelementptr inbounds %struct.port_input, %struct.port_input* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %50 = call i32 @recvmsg(i32 %48, %struct.msghdr* %49, i32 0)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %56, label %53

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %3
  store i32 -1, i32* %4, align 4
  br label %74

57:                                               ; preds = %53
  %58 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MSG_TRUNC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 1), align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 1), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 0), align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 0), align 4
  store i32 -1, i32* %4, align 4
  br label %74

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.port_input*, %struct.port_input** %5, align 8
  %73 = getelementptr inbounds %struct.port_input, %struct.port_input* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %64, %56
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
