; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_is_valid_sp_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_is_valid_sp_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCCPC_CCID2 = common dso_local global i32 0, align 4
@DCCPC_CCID3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dccp_feat_is_valid_sp_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_is_valid_sp_val(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %26 [
    i32 135, label %7
    i32 128, label %18
    i32 133, label %18
    i32 131, label %18
    i32 129, label %18
    i32 134, label %18
    i32 130, label %18
    i32 132, label %22
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DCCPC_CCID2, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DCCPC_CCID3, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2, %2, %2, %2, %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 2
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 16
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %22, %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
