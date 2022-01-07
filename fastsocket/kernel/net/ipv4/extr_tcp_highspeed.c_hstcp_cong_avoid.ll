; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_highspeed.c_hstcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_highspeed.c_hstcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64 }
%struct.hstcp = type { i64 }

@hstcp_aimd_vals = common dso_local global %struct.TYPE_2__* null, align 8
@HSTCP_AIMD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @hstcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hstcp_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.hstcp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.hstcp* @inet_csk_ca(%struct.sock* %11)
  store %struct.hstcp* %12, %struct.hstcp** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tcp_is_cwnd_limited(%struct.sock* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %154

18:                                               ; preds = %3
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %28 = call i32 @tcp_slow_start(%struct.tcp_sock* %27)
  br label %154

29:                                               ; preds = %18
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %34 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %35 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %32, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %64, %41
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %47 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %48 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %45, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %56 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @HSTCP_AIMD_MAX, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %57, %60
  br label %62

62:                                               ; preds = %54, %42
  %63 = phi i1 [ false, %42 ], [ %61, %54 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %66 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %42

69:                                               ; preds = %62
  br label %116

70:                                               ; preds = %29
  %71 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %72 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %70
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %80 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %81 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %78, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %75
  br label %89

89:                                               ; preds = %109, %88
  %90 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %91 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %96 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %99 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %100 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sle i64 %97, %105
  br label %107

107:                                              ; preds = %94, %89
  %108 = phi i1 [ false, %89 ], [ %106, %94 ]
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %111 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %111, align 8
  br label %89

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %75, %70
  br label %116

116:                                              ; preds = %115, %69
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %153

124:                                              ; preds = %116
  %125 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %126 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %134 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %135, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %124
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %142 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %149 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %140, %124
  br label %153

153:                                              ; preds = %152, %116
  br label %154

154:                                              ; preds = %17, %153, %26
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.hstcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
