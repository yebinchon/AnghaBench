; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.net = type { i32 }
%struct.inet_sock = type { i16, i64 }

@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i16, i64, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i16 zeroext %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.net* %1, %struct.net** %8, align 8
  store i16 %2, i16* %9, align 2
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %13, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call i32 @sock_net(%struct.sock* %17)
  %19 = load %struct.net*, %struct.net** %8, align 8
  %20 = call i64 @net_eq(i32 %18, %struct.net* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %5
  %23 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %24 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %9, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %22
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = call i32 @ipv6_only_sock(%struct.sock* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %36 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PF_INET, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %14, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %73

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %34
  %56 = load %struct.sock*, %struct.sock** %7, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %67, %55
  br label %71

71:                                               ; preds = %70, %30, %22, %5
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %66, %51
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_only_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
