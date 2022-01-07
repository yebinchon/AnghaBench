; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_init_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_init_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32, i32, i32, i64 }

@tcp_time_stamp = common dso_local global i32 0, align 4
@TSMASK = common dso_local global i32 0, align 4
@TSBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_init_timestamp(%struct.request_sock* %0) #0 {
  %2 = alloca %struct.request_sock*, align 8
  %3 = alloca %struct.inet_request_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request_sock* %0, %struct.request_sock** %2, align 8
  %7 = load i32, i32* @tcp_time_stamp, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %9 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %8)
  store %struct.inet_request_sock* %9, %struct.inet_request_sock** %3, align 8
  %10 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %16 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %19 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %14, %1
  %25 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %26 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TSMASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %24
  %42 = load i32, i32* @TSBITS, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @TSBITS, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
