; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_match_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_match_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_sctp_flag_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_sctp_flag_info*, i32, i64, i64)* @match_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_flags(%struct.xt_sctp_flag_info* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_sctp_flag_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xt_sctp_flag_info* %0, %struct.xt_sctp_flag_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %16, i64 %18
  %20 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %26, i64 %28
  %30 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %25, %31
  %33 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %33, i64 %35
  %37 = getelementptr inbounds %struct.xt_sctp_flag_info, %struct.xt_sctp_flag_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %11

45:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
