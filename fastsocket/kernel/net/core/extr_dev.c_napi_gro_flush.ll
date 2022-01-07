; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_gro_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_gro_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @napi_gro_flush(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %5 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %6 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %5, i32 0, i32 0
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @napi_gro_complete(%struct.sk_buff* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %3, align 8
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %23 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %25 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %24, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %25, align 8
  ret void
}

declare dso_local i32 @napi_gro_complete(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
