; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_measure_rtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_measure_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64 }
%struct.htcp = type { i64, i64 }

@TCP_CA_Open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @measure_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_rtt(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.htcp*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.htcp* @inet_csk_ca(%struct.sock* %9)
  store %struct.htcp* %10, %struct.htcp** %6, align 8
  %11 = load %struct.htcp*, %struct.htcp** %6, align 8
  %12 = getelementptr inbounds %struct.htcp, %struct.htcp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.htcp*, %struct.htcp** %6, align 8
  %18 = getelementptr inbounds %struct.htcp, %struct.htcp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16, %2
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.htcp*, %struct.htcp** %6, align 8
  %24 = getelementptr inbounds %struct.htcp, %struct.htcp* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_CA_Open, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load %struct.htcp*, %struct.htcp** %6, align 8
  %33 = getelementptr inbounds %struct.htcp, %struct.htcp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.htcp*, %struct.htcp** %6, align 8
  %36 = getelementptr inbounds %struct.htcp, %struct.htcp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.htcp*, %struct.htcp** %6, align 8
  %41 = getelementptr inbounds %struct.htcp, %struct.htcp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.htcp*, %struct.htcp** %6, align 8
  %44 = getelementptr inbounds %struct.htcp, %struct.htcp* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.htcp*, %struct.htcp** %6, align 8
  %47 = getelementptr inbounds %struct.htcp, %struct.htcp* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.htcp*, %struct.htcp** %6, align 8
  %54 = getelementptr inbounds %struct.htcp, %struct.htcp* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @msecs_to_jiffies(i32 20)
  %57 = add nsw i64 %55, %56
  %58 = icmp sle i64 %52, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.htcp*, %struct.htcp** %6, align 8
  %62 = getelementptr inbounds %struct.htcp, %struct.htcp* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %51, %45
  br label %64

64:                                               ; preds = %63, %25
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
