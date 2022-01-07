; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_no_feedback_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_no_feedback_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_tx_sock = type { i64, i32, i64, i32, i32, i32, i32, i32, i64 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s(%p, state=%s) - entry \0A\00", align 1
@TFRC_SSTATE_FBACK = common dso_local global i64 0, align 8
@TFRC_SSTATE_NO_FBACK = common dso_local global i64 0, align 8
@TFRC_T_MBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Reduced X to %llu/64 bytes/sec\0A\00", align 1
@TFRC_INITIAL_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ccid3_hc_tx_no_feedback_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_tx_no_feedback_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sock*
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %8)
  store %struct.ccid3_hc_tx_sock* %9, %struct.ccid3_hc_tx_sock** %4, align 8
  %10 = load i32, i32* @USEC_PER_SEC, align 4
  %11 = sdiv i32 %10, 5
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i32 @bh_lock_sock(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i64 @sock_owned_by_user(%struct.sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %153

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @dccp_role(%struct.sock* %20)
  %22 = sext i32 %21 to i64
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %25 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ccid3_tx_state_name(i64 %26)
  %28 = call i32 (i8*, i64, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %22, %struct.sock* %23, i32 %27)
  %29 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %30 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TFRC_SSTATE_FBACK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = load i64, i64* @TFRC_SSTATE_NO_FBACK, align 8
  %37 = call i32 @ccid3_hc_tx_set_state(%struct.sock* %35, i64 %36)
  br label %46

38:                                               ; preds = %19
  %39 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %40 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TFRC_SSTATE_NO_FBACK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %162

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %48 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %53 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51, %46
  %57 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %58 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  %61 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %62 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 6
  %66 = load i32, i32* @TFRC_T_MBI, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i8* @max(i32 %60, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %71 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %73 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %72)
  br label %127

74:                                               ; preds = %51
  %75 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %76 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %81 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi i1 [ false, %74 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %90 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %93 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 5
  %96 = icmp sgt i32 %91, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %85
  %98 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %99 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %100, 2
  %102 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %103 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %105, 6
  %107 = load i32, i32* @TFRC_T_MBI, align 4
  %108 = mul nsw i32 2, %107
  %109 = sdiv i32 %106, %108
  %110 = call i8* @max(i32 %101, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %113 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  br label %124

114:                                              ; preds = %85
  %115 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %116 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %119 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %121 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 4
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %114, %97
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = call i32 @ccid3_hc_tx_update_x(%struct.sock* %125, i32* null)
  br label %127

127:                                              ; preds = %124, %56
  %128 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %129 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = call i32 (i8*, i64, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %134 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i64, i64* @TFRC_INITIAL_TIMEOUT, align 8
  store i64 %141, i64* %5, align 8
  br label %152

142:                                              ; preds = %127
  %143 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %144 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %147 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 2, %148
  %150 = call i8* @max(i32 %145, i32 %149)
  %151 = ptrtoint i8* %150 to i64
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %142, %140
  br label %153

153:                                              ; preds = %152, %18
  %154 = load %struct.sock*, %struct.sock** %3, align 8
  %155 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %4, align 8
  %156 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %155, i32 0, i32 7
  %157 = load i64, i64* @jiffies, align 8
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @usecs_to_jiffies(i64 %158)
  %160 = add nsw i64 %157, %159
  %161 = call i32 @sk_reset_timer(%struct.sock* %154, i32* %156, i64 %160)
  br label %162

162:                                              ; preds = %153, %44
  %163 = load %struct.sock*, %struct.sock** %3, align 8
  %164 = call i32 @bh_unlock_sock(%struct.sock* %163)
  %165 = load %struct.sock*, %struct.sock** %3, align 8
  %166 = call i32 @sock_put(%struct.sock* %165)
  ret void
}

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i64, ...) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @ccid3_tx_state_name(i64) #1

declare dso_local i32 @ccid3_hc_tx_set_state(%struct.sock*, i64) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ccid3_hc_tx_update_x(%struct.sock*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
