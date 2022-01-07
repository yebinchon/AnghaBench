; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_trans_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_crypto.c_dst_trans_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_trans = type { %struct.dst_node* }
%struct.dst_node = type { i32 }

@dst_trans_crypto_setup = common dso_local global i32 0, align 4
@dst_trans_crypto_action = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_trans_crypto(%struct.dst_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_trans*, align 8
  %4 = alloca %struct.dst_node*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_trans* %0, %struct.dst_trans** %3, align 8
  %6 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %7 = getelementptr inbounds %struct.dst_trans, %struct.dst_trans* %6, i32 0, i32 0
  %8 = load %struct.dst_node*, %struct.dst_node** %7, align 8
  store %struct.dst_node* %8, %struct.dst_node** %4, align 8
  %9 = load %struct.dst_node*, %struct.dst_node** %4, align 8
  %10 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @dst_trans_crypto_setup, align 4
  %13 = load i32, i32* @dst_trans_crypto_action, align 4
  %14 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %15 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %16 = call i32 @thread_pool_schedule(i32 %11, i32 %12, i32 %13, %struct.dst_trans* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

21:                                               ; preds = %19
  %22 = load %struct.dst_trans*, %struct.dst_trans** %3, align 8
  %23 = call i32 @dst_trans_put(%struct.dst_trans* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @thread_pool_schedule(i32, i32, i32, %struct.dst_trans*, i32) #1

declare dso_local i32 @dst_trans_put(%struct.dst_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
