; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_register_nn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_feat.c_dccp_feat_register_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i32 }

@DCCP_CLOSED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@FEAT_NN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_feat_register_nn(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DCCP_CLOSED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EISCONN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @dccp_feat_type(i32 %17)
  %19 = load i64, i64* @FEAT_NN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__feat_register_nn(i32* %27, i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %21, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @dccp_feat_type(i32) #1

declare dso_local i32 @__feat_register_nn(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
