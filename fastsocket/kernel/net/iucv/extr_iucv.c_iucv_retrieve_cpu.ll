; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_retrieve_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_retrieve_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@iucv_param_irq = common dso_local global %union.iucv_param** null, align 8
@IUCV_RETRIEVE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iucv_retrieve_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_retrieve_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.iucv_param*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @iucv_buffer_cpumask, align 4
  %8 = call i32 @cpu_isset(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = call i32 @iucv_block_cpu(i32* null)
  %13 = load %union.iucv_param**, %union.iucv_param*** @iucv_param_irq, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %13, i64 %15
  %17 = load %union.iucv_param*, %union.iucv_param** %16, align 8
  store %union.iucv_param* %17, %union.iucv_param** %4, align 8
  %18 = load i32, i32* @IUCV_RETRIEVE_BUFFER, align 4
  %19 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %20 = call i32 @iucv_call_b2f0(i32 %18, %union.iucv_param* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @iucv_buffer_cpumask, align 4
  %23 = call i32 @cpu_clear(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_isset(i32, i32) #1

declare dso_local i32 @iucv_block_cpu(i32*) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
