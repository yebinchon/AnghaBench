; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_veno.c_tcp_veno_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_veno.c_tcp_veno_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32 }
%struct.veno = type { i32, i32, i32, i32, i32, i32 }

@V_PARAM_SHIFT = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_veno_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_veno_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.veno*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.veno* @inet_csk_ca(%struct.sock* %13)
  store %struct.veno* %14, %struct.veno** %8, align 8
  %15 = load %struct.veno*, %struct.veno** %8, align 8
  %16 = getelementptr inbounds %struct.veno, %struct.veno* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tcp_reno_cong_avoid(%struct.sock* %20, i32 %21, i32 %22)
  br label %156

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tcp_is_cwnd_limited(%struct.sock* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %156

30:                                               ; preds = %24
  %31 = load %struct.veno*, %struct.veno** %8, align 8
  %32 = getelementptr inbounds %struct.veno, %struct.veno* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @tcp_reno_cong_avoid(%struct.sock* %36, i32 %37, i32 %38)
  br label %153

40:                                               ; preds = %30
  %41 = load %struct.veno*, %struct.veno** %8, align 8
  %42 = getelementptr inbounds %struct.veno, %struct.veno* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.veno*, %struct.veno** %8, align 8
  %48 = getelementptr inbounds %struct.veno, %struct.veno* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @V_PARAM_SHIFT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @do_div(i32 %54, i32 %55)
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V_PARAM_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.veno*, %struct.veno** %8, align 8
  %65 = getelementptr inbounds %struct.veno, %struct.veno* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %70 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %40
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %75 = call i32 @tcp_slow_start(%struct.tcp_sock* %74)
  br label %129

76:                                               ; preds = %40
  %77 = load %struct.veno*, %struct.veno** %8, align 8
  %78 = getelementptr inbounds %struct.veno, %struct.veno* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @beta, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %83, i32 %86)
  br label %128

88:                                               ; preds = %76
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %88
  %97 = load %struct.veno*, %struct.veno** %8, align 8
  %98 = getelementptr inbounds %struct.veno, %struct.veno* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %111 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.veno*, %struct.veno** %8, align 8
  %115 = getelementptr inbounds %struct.veno, %struct.veno* %114, i32 0, i32 4
  store i32 0, i32* %115, align 4
  br label %119

116:                                              ; preds = %101, %96
  %117 = load %struct.veno*, %struct.veno** %8, align 8
  %118 = getelementptr inbounds %struct.veno, %struct.veno* %117, i32 0, i32 4
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %121 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %120, i32 0, i32 2
  store i32 0, i32* %121, align 4
  br label %127

122:                                              ; preds = %88
  %123 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %124 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %82
  br label %129

129:                                              ; preds = %128, %73
  %130 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %131 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %136 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %135, i32 0, i32 0
  store i32 2, i32* %136, align 4
  br label %152

137:                                              ; preds = %129
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %142 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %140, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %137
  br label %152

152:                                              ; preds = %151, %134
  br label %153

153:                                              ; preds = %152, %35
  %154 = load %struct.veno*, %struct.veno** %8, align 8
  %155 = getelementptr inbounds %struct.veno, %struct.veno* %154, i32 0, i32 1
  store i32 2147483647, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %29, %19
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.veno* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_reno_cong_avoid(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
