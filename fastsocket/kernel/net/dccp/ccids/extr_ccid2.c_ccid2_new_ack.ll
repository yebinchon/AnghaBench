; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_new_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_new_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_seq = type { i64, i64 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"R: %lu Time=%lu seq=%llu\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"srtt: %ld rttvar: %ld rto: %ld (HZ=%d) R=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.ccid2_seq*, i32*)* @ccid2_new_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_new_ack(%struct.sock* %0, %struct.ccid2_seq* %1, i32* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.ccid2_seq*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.ccid2_seq* %1, %struct.ccid2_seq** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %12)
  store %struct.ccid2_hc_tx_sock* %13, %struct.ccid2_hc_tx_sock** %7, align 8
  %14 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %15 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %18 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %27 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %33 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %40 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %25, %21
  br label %59

42:                                               ; preds = %3
  %43 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %44 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %48 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %53 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %57 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* @jiffies, align 8
  %66 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %67 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %70 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = call i64 @time_after(i64 %65, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %200

76:                                               ; preds = %64, %59
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.ccid2_seq*, %struct.ccid2_seq** %5, align 8
  %79 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  store i64 %81, i64* %8, align 8
  %82 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %83 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %103

86:                                               ; preds = %76
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* @jiffies, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.ccid2_seq*, %struct.ccid2_seq** %5, align 8
  %92 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i8*, i32, i32, i32, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %90, i32 %94)
  %96 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @ccid2_change_srtt(%struct.ccid2_hc_tx_sock* %96, i64 %97)
  %99 = load i64, i64* %8, align 8
  %100 = lshr i64 %99, 1
  %101 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %102 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  br label %147

103:                                              ; preds = %76
  %104 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %105 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %107, %108
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i64, i64* %10, align 8
  %114 = mul nsw i64 %113, -1
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i64, i64* %10, align 8
  %117 = ashr i64 %116, 2
  store i64 %117, i64* %10, align 8
  %118 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %119 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = mul i64 %120, 3
  store i64 %121, i64* %119, align 8
  %122 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %123 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = lshr i64 %124, 2
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %128 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %132 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = mul nsw i64 %135, 7
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %11, align 8
  %138 = ashr i64 %137, 3
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %8, align 8
  %140 = lshr i64 %139, 3
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %11, align 8
  %144 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @ccid2_change_srtt(%struct.ccid2_hc_tx_sock* %144, i64 %145)
  br label %147

147:                                              ; preds = %115, %86
  %148 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %149 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = shl i64 %150, 2
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  store i32 1, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %147
  %157 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %158 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %163 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %165 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @HZ, align 4
  %168 = sdiv i32 %166, %167
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %175

171:                                              ; preds = %156
  %172 = load i32, i32* @HZ, align 4
  %173 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %174 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %156
  %176 = load i32, i32* %9, align 4
  %177 = icmp sgt i32 %176, 60
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* @HZ, align 4
  %180 = mul nsw i32 %179, 60
  %181 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %182 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %178, %175
  %184 = load i64, i64* @jiffies, align 8
  %185 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %186 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %185, i32 0, i32 6
  store i64 %184, i64* %186, align 8
  %187 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %188 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %191 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %7, align 8
  %195 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @HZ, align 4
  %198 = load i64, i64* %8, align 8
  %199 = call i32 (i8*, i32, i32, i32, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %193, i32 %196, i32 %197, i64 %198)
  br label %200

200:                                              ; preds = %183, %64
  %201 = load %struct.sock*, %struct.sock** %4, align 8
  %202 = call i32 @ccid2_hc_tx_kill_rto_timer(%struct.sock* %201)
  %203 = load %struct.sock*, %struct.sock** %4, align 8
  %204 = call i32 @ccid2_start_rto_timer(%struct.sock* %203)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ccid2_pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ccid2_change_srtt(%struct.ccid2_hc_tx_sock*, i64) #1

declare dso_local i32 @ccid2_hc_tx_kill_rto_timer(%struct.sock*) #1

declare dso_local i32 @ccid2_start_rto_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
