; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_rx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { i32 }

@BNEP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnep_session*, i8*, i32)* @bnep_rx_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_rx_control(%struct.bnep_session* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bnep_session*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.bnep_session* %0, %struct.bnep_session** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %29 [
    i32 134, label %18
    i32 129, label %18
    i32 128, label %18
    i32 131, label %18
    i32 133, label %18
    i32 130, label %19
    i32 132, label %24
  ]

18:                                               ; preds = %3, %3, %3, %3, %3
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bnep_ctrl_set_netfilter(%struct.bnep_session* %20, i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bnep_ctrl_set_mcfilter(%struct.bnep_session* %25, i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %38

29:                                               ; preds = %3
  %30 = load i32, i32* @BNEP_CONTROL, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 134, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %37 = call i32 @bnep_send(%struct.bnep_session* %35, i32* %36, i32 12)
  br label %38

38:                                               ; preds = %29, %24, %19, %18
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @bnep_ctrl_set_netfilter(%struct.bnep_session*, i8*, i32) #1

declare dso_local i32 @bnep_ctrl_set_mcfilter(%struct.bnep_session*, i8*, i32) #1

declare dso_local i32 @bnep_send(%struct.bnep_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
