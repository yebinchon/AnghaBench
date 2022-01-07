; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }

@NAPI_STATE_NPSVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @napi_complete(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %4 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %5 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %6 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %5, i32 0, i32 0
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %13 = call i32 @napi_gro_flush(%struct.napi_struct* %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %17 = call i32 @__napi_complete(%struct.napi_struct* %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @napi_gro_flush(%struct.napi_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
