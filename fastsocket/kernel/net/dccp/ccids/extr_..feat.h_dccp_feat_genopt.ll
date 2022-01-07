; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..feat.h_dccp_feat_genopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..feat.h_dccp_feat_genopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_feat_entry = type { i64, i64 }

@DCCPO_CONFIRM_L = common dso_local global i32 0, align 4
@DCCPO_CONFIRM_R = common dso_local global i32 0, align 4
@DCCPO_CHANGE_L = common dso_local global i32 0, align 4
@DCCPO_CHANGE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dccp_feat_entry*)* @dccp_feat_genopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_genopt(%struct.dccp_feat_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dccp_feat_entry*, align 8
  store %struct.dccp_feat_entry* %0, %struct.dccp_feat_entry** %3, align 8
  %4 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %5 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %10 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @DCCPO_CONFIRM_L, align 4
  br label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @DCCPO_CONFIRM_R, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %3, align 8
  %21 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @DCCPO_CHANGE_L, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DCCPO_CHANGE_R, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
