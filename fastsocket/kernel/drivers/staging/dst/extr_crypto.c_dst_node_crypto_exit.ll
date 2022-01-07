; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_node_crypto_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_node_crypto_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { i32, i32, %struct.dst_crypto_ctl }
%struct.dst_crypto_ctl = type { i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dst_node_crypto_exit(%struct.dst_node* %0) #0 {
  %2 = alloca %struct.dst_node*, align 8
  %3 = alloca %struct.dst_crypto_ctl*, align 8
  store %struct.dst_node* %0, %struct.dst_node** %2, align 8
  %4 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %5 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %4, i32 0, i32 2
  store %struct.dst_crypto_ctl* %5, %struct.dst_crypto_ctl** %3, align 8
  %6 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %3, align 8
  %7 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.dst_crypto_ctl*, %struct.dst_crypto_ctl** %3, align 8
  %14 = getelementptr inbounds %struct.dst_crypto_ctl, %struct.dst_crypto_ctl* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12, %1
  %20 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %21 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %25 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  br label %28

28:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
