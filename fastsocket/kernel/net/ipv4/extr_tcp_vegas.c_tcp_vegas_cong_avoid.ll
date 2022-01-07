; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_vegas.c_tcp_vegas_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_vegas.c_tcp_vegas_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32 }
%struct.vegas = type { i32, i32, i32, i32, i32 }

@gamma = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@alpha = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_vegas_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_vegas_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.vegas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %12)
  store %struct.tcp_sock* %13, %struct.tcp_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.vegas* @inet_csk_ca(%struct.sock* %14)
  store %struct.vegas* %15, %struct.vegas** %8, align 8
  %16 = load %struct.vegas*, %struct.vegas** %8, align 8
  %17 = getelementptr inbounds %struct.vegas, %struct.vegas* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @tcp_reno_cong_avoid(%struct.sock* %21, i32 %22, i32 %23)
  br label %181

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vegas*, %struct.vegas** %8, align 8
  %28 = getelementptr inbounds %struct.vegas, %struct.vegas* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @after(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %169

32:                                               ; preds = %25
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vegas*, %struct.vegas** %8, align 8
  %37 = getelementptr inbounds %struct.vegas, %struct.vegas* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vegas*, %struct.vegas** %8, align 8
  %39 = getelementptr inbounds %struct.vegas, %struct.vegas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @tcp_reno_cong_avoid(%struct.sock* %43, i32 %44, i32 %45)
  br label %164

47:                                               ; preds = %32
  %48 = load %struct.vegas*, %struct.vegas** %8, align 8
  %49 = getelementptr inbounds %struct.vegas, %struct.vegas* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vegas*, %struct.vegas** %8, align 8
  %55 = getelementptr inbounds %struct.vegas, %struct.vegas* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.vegas*, %struct.vegas** %8, align 8
  %65 = getelementptr inbounds %struct.vegas, %struct.vegas* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = mul nsw i32 %62, %67
  %69 = load %struct.vegas*, %struct.vegas** %8, align 8
  %70 = getelementptr inbounds %struct.vegas, %struct.vegas* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @gamma, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %47
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @min(i32 %87, i32 %89)
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %94 = call i8* @tcp_vegas_ssthresh(%struct.tcp_sock* %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %136

98:                                               ; preds = %76, %47
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %100 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %108 = call i32 @tcp_slow_start(%struct.tcp_sock* %107)
  br label %135

109:                                              ; preds = %98
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @beta, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %115 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %119 = call i8* @tcp_vegas_ssthresh(%struct.tcp_sock* %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %122 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %134

123:                                              ; preds = %109
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @alpha, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %129 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %133

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %127
  br label %134

134:                                              ; preds = %133, %113
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %84
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 0
  store i32 2, i32* %143, align 4
  br label %159

144:                                              ; preds = %136
  %145 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %146 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %149 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %154 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %152, %144
  br label %159

159:                                              ; preds = %158, %141
  %160 = load %struct.sock*, %struct.sock** %4, align 8
  %161 = call i32 @tcp_current_ssthresh(%struct.sock* %160)
  %162 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %163 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %42
  %165 = load %struct.vegas*, %struct.vegas** %8, align 8
  %166 = getelementptr inbounds %struct.vegas, %struct.vegas* %165, i32 0, i32 0
  store i32 0, i32* %166, align 4
  %167 = load %struct.vegas*, %struct.vegas** %8, align 8
  %168 = getelementptr inbounds %struct.vegas, %struct.vegas* %167, i32 0, i32 1
  store i32 2147483647, i32* %168, align 4
  br label %181

169:                                              ; preds = %25
  %170 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %171 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %174 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %172, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %179 = call i32 @tcp_slow_start(%struct.tcp_sock* %178)
  br label %180

180:                                              ; preds = %177, %169
  br label %181

181:                                              ; preds = %20, %180, %164
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.vegas* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_reno_cong_avoid(%struct.sock*, i32, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @tcp_vegas_ssthresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_current_ssthresh(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
