; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_htcp.c_htcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32 }
%struct.htcp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @htcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.htcp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.htcp* @inet_csk_ca(%struct.sock* %11)
  store %struct.htcp* %12, %struct.htcp** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tcp_is_cwnd_limited(%struct.sock* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %71

18:                                               ; preds = %3
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %28 = call i32 @tcp_slow_start(%struct.tcp_sock* %27)
  br label %71

29:                                               ; preds = %18
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.htcp*, %struct.htcp** %8, align 8
  %34 = getelementptr inbounds %struct.htcp, %struct.htcp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = ashr i32 %36, 7
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %29
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.htcp*, %struct.htcp** %8, align 8
  %59 = call i32 @htcp_alpha_update(%struct.htcp* %58)
  br label %68

60:                                               ; preds = %29
  %61 = load %struct.htcp*, %struct.htcp** %8, align 8
  %62 = getelementptr inbounds %struct.htcp, %struct.htcp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.htcp*, %struct.htcp** %8, align 8
  %70 = getelementptr inbounds %struct.htcp, %struct.htcp* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %17, %68, %26
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.htcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @htcp_alpha_update(%struct.htcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
