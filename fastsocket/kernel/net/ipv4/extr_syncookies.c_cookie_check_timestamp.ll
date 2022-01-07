; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_check_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_syncookies.c_cookie_check_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_options_received = type { i32, i32, i32, i32, i32 }

@TSMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cookie_check_timestamp(%struct.tcp_options_received* %0) #0 {
  %2 = alloca %struct.tcp_options_received*, align 8
  %3 = alloca i32, align 4
  store %struct.tcp_options_received* %0, %struct.tcp_options_received** %2, align 8
  %4 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %5 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TSMASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 15
  %11 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %12 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 15
  %17 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %18 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 1
  %22 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %23 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %25 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %30 = call i32 @tcp_sack_reset(%struct.tcp_options_received* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %33 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %38 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31
  %42 = load %struct.tcp_options_received*, %struct.tcp_options_received** %2, align 8
  %43 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @tcp_sack_reset(%struct.tcp_options_received*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
