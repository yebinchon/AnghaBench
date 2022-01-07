; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_illinois.c_tcp_illinois_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i64 }
%struct.illinois = type { i32, i32, i32 }

@ALPHA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_illinois_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.illinois*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.illinois* @inet_csk_ca(%struct.sock* %12)
  store %struct.illinois* %13, %struct.illinois** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.illinois*, %struct.illinois** %8, align 8
  %16 = getelementptr inbounds %struct.illinois, %struct.illinois* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @after(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @update_params(%struct.sock* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @tcp_is_cwnd_limited(%struct.sock* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %88

29:                                               ; preds = %23
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %39 = call i32 @tcp_slow_start(%struct.tcp_sock* %38)
  br label %88

40:                                               ; preds = %29
  %41 = load %struct.illinois*, %struct.illinois** %8, align 8
  %42 = getelementptr inbounds %struct.illinois, %struct.illinois* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.illinois*, %struct.illinois** %8, align 8
  %49 = getelementptr inbounds %struct.illinois, %struct.illinois* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.illinois*, %struct.illinois** %8, align 8
  %54 = getelementptr inbounds %struct.illinois, %struct.illinois* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* @ALPHA_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %60, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %40
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sdiv i64 %70, %73
  %75 = add nsw i64 %68, %74
  %76 = trunc i64 %75 to i32
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @min(i32 %76, i32 %80)
  %82 = sext i32 %81 to i64
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %65, %40
  br label %88

88:                                               ; preds = %28, %87, %37
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @update_params(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
