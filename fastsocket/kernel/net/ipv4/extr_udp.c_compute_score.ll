; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_compute_score.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i16, i64, i32 }
%struct.net = type { i32 }
%struct.inet_sock = type { i64, i64, i64 }

@PF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.net*, i64, i16, i64, i64, i64, i32)* @compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_score(%struct.sock* %0, %struct.net* %1, i64 %2, i16 zeroext %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store i64 %2, i64* %12, align 8
  store i16 %3, i16* %13, align 2
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call i32 @sock_net(%struct.sock* %20)
  %22 = load %struct.net*, %struct.net** %11, align 8
  %23 = call i64 @net_eq(i32 %21, %struct.net* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %8
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %13, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %107

33:                                               ; preds = %25
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = call i32 @ipv6_only_sock(%struct.sock* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %107, label %37

37:                                               ; preds = %33
  %38 = load %struct.sock*, %struct.sock** %10, align 8
  %39 = call %struct.inet_sock* @inet_sk(%struct.sock* %38)
  store %struct.inet_sock* %39, %struct.inet_sock** %19, align 8
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PF_INET, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 1
  store i32 %46, i32* %18, align 4
  %47 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %48 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %53 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %9, align 4
  br label %109

58:                                               ; preds = %51
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %58, %37
  %62 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %63 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %68 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %9, align 4
  br label %109

73:                                               ; preds = %66
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %73, %61
  %77 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %78 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.inet_sock*, %struct.inet_sock** %19, align 8
  %83 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 -1, i32* %9, align 4
  br label %109

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 4
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %88, %76
  %92 = load %struct.sock*, %struct.sock** %10, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.sock*, %struct.sock** %10, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 -1, i32* %9, align 4
  br label %109

103:                                              ; preds = %96
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %103, %91
  br label %107

107:                                              ; preds = %106, %33, %25, %8
  %108 = load i32, i32* %18, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %102, %87, %72, %57
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ipv6_only_sock(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
