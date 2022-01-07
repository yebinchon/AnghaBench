; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rtt_estimator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rtt_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @tcp_rtt_estimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_rtt_estimator(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %138

18:                                               ; preds = %13
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %18
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i64, i64* %6, align 8
  %49 = ashr i64 %48, 3
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %47, %35
  br label %59

51:                                               ; preds = %18
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %59
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %91 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %94 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %75
  br label %96

96:                                               ; preds = %95, %59
  %97 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %98 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %101 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @after(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %96
  %106 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %107 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %105
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %115 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = ashr i64 %120, 2
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %123 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %113, %105
  %127 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %128 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %131 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sock*, %struct.sock** %3, align 8
  %133 = call i32 @tcp_rto_min(%struct.sock* %132)
  %134 = sext i32 %133 to i64
  %135 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %136 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %126, %96
  br label %166

138:                                              ; preds = %13
  %139 = load i64, i64* %6, align 8
  %140 = shl i64 %139, 3
  %141 = trunc i64 %140 to i32
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %143 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %6, align 8
  %145 = shl i64 %144, 1
  %146 = trunc i64 %145 to i32
  %147 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %148 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = load %struct.sock*, %struct.sock** %3, align 8
  %154 = call i32 @tcp_rto_min(%struct.sock* %153)
  %155 = call i32 @max(i64 %152, i32 %154)
  %156 = sext i32 %155 to i64
  %157 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %158 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %157, i32 0, i32 3
  store i64 %156, i64* %158, align 8
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 2
  store i64 %156, i64* %160, align 8
  %161 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %138, %137
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_rto_min(%struct.sock*) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
