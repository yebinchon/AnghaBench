; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_pkts_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_pkts_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.lp = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@tcp_time_stamp = common dso_local global i64 0, align 8
@LP_WITHIN_INF = common dso_local global i32 0, align 4
@LP_WITHIN_THR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TCP-LP: %05o|%5u|%5u|%15u|%15u|%15u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64)* @tcp_lp_pkts_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lp_pkts_acked(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.lp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.lp* @inet_csk_ca(%struct.sock* %11)
  store %struct.lp* %12, %struct.lp** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @tcp_lp_rtt_sample(%struct.sock* %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i64, i64* @tcp_time_stamp, align 8
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load i64, i64* @tcp_time_stamp, align 8
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = mul nsw i64 3, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.lp*, %struct.lp** %8, align 8
  %36 = getelementptr inbounds %struct.lp, %struct.lp* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %19
  %38 = load %struct.lp*, %struct.lp** %8, align 8
  %39 = getelementptr inbounds %struct.lp, %struct.lp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i64, i64* @tcp_time_stamp, align 8
  %44 = load %struct.lp*, %struct.lp** %8, align 8
  %45 = getelementptr inbounds %struct.lp, %struct.lp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.lp*, %struct.lp** %8, align 8
  %49 = getelementptr inbounds %struct.lp, %struct.lp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* @LP_WITHIN_INF, align 4
  %55 = load %struct.lp*, %struct.lp** %8, align 8
  %56 = getelementptr inbounds %struct.lp, %struct.lp* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %66

59:                                               ; preds = %42, %37
  %60 = load i32, i32* @LP_WITHIN_INF, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.lp*, %struct.lp** %8, align 8
  %63 = getelementptr inbounds %struct.lp, %struct.lp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.lp*, %struct.lp** %8, align 8
  %68 = getelementptr inbounds %struct.lp, %struct.lp* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 3
  %71 = load %struct.lp*, %struct.lp** %8, align 8
  %72 = getelementptr inbounds %struct.lp, %struct.lp* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lp*, %struct.lp** %8, align 8
  %75 = getelementptr inbounds %struct.lp, %struct.lp* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lp*, %struct.lp** %8, align 8
  %78 = getelementptr inbounds %struct.lp, %struct.lp* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %76, %79
  %81 = mul nsw i32 15, %80
  %82 = sdiv i32 %81, 100
  %83 = add nsw i32 %73, %82
  %84 = icmp slt i32 %70, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %66
  %86 = load i32, i32* @LP_WITHIN_THR, align 4
  %87 = load %struct.lp*, %struct.lp** %8, align 8
  %88 = getelementptr inbounds %struct.lp, %struct.lp* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %98

91:                                               ; preds = %66
  %92 = load i32, i32* @LP_WITHIN_THR, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.lp*, %struct.lp** %8, align 8
  %95 = getelementptr inbounds %struct.lp, %struct.lp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.lp*, %struct.lp** %8, align 8
  %100 = getelementptr inbounds %struct.lp, %struct.lp* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lp*, %struct.lp** %8, align 8
  %106 = getelementptr inbounds %struct.lp, %struct.lp* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lp*, %struct.lp** %8, align 8
  %109 = getelementptr inbounds %struct.lp, %struct.lp* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.lp*, %struct.lp** %8, align 8
  %112 = getelementptr inbounds %struct.lp, %struct.lp* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lp*, %struct.lp** %8, align 8
  %115 = getelementptr inbounds %struct.lp, %struct.lp* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 3
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110, i32 %113, i32 %117)
  %119 = load %struct.lp*, %struct.lp** %8, align 8
  %120 = getelementptr inbounds %struct.lp, %struct.lp* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @LP_WITHIN_THR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %98
  br label %166

126:                                              ; preds = %98
  %127 = load %struct.lp*, %struct.lp** %8, align 8
  %128 = getelementptr inbounds %struct.lp, %struct.lp* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 3
  %131 = load %struct.lp*, %struct.lp** %8, align 8
  %132 = getelementptr inbounds %struct.lp, %struct.lp* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.lp*, %struct.lp** %8, align 8
  %134 = getelementptr inbounds %struct.lp, %struct.lp* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 2
  %137 = load %struct.lp*, %struct.lp** %8, align 8
  %138 = getelementptr inbounds %struct.lp, %struct.lp* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.lp*, %struct.lp** %8, align 8
  %140 = getelementptr inbounds %struct.lp, %struct.lp* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 2
  %143 = load %struct.lp*, %struct.lp** %8, align 8
  %144 = getelementptr inbounds %struct.lp, %struct.lp* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.lp*, %struct.lp** %8, align 8
  %146 = getelementptr inbounds %struct.lp, %struct.lp* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @LP_WITHIN_INF, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %126
  %152 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %153 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %162

154:                                              ; preds = %126
  %155 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = lshr i32 %157, 1
  %159 = call i32 @max(i32 %158, i32 1)
  %160 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %161 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %154, %151
  %163 = load i64, i64* @tcp_time_stamp, align 8
  %164 = load %struct.lp*, %struct.lp** %8, align 8
  %165 = getelementptr inbounds %struct.lp, %struct.lp* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %125
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.lp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_lp_rtt_sample(%struct.sock*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
