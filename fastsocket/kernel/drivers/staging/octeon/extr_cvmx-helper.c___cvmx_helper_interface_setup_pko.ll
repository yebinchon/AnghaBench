; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_interface_setup_pko.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c___cvmx_helper_interface_setup_pko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.__cvmx_helper_interface_setup_pko.priorities = private unnamed_addr constant [16 x i32] [i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@interface_port_count = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__cvmx_helper_interface_setup_pko to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_interface_setup_pko(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([16 x i32]* @__const.__cvmx_helper_interface_setup_pko.priorities to i8*), i64 64, i1 false)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @cvmx_helper_get_ipd_port(i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** @interface_port_count, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  br i1 true, label %19, label %23

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %22 = call i32 @cvmx_override_pko_queue_priority(i32 %20, i32* %21)
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cvmx_pko_get_base_queue_per_core(i32 %25, i32 0)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cvmx_pko_get_num_queues(i32 %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %30 = call i32 @cvmx_pko_config_port(i32 %24, i32 %26, i32 %28, i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cvmx_helper_get_ipd_port(i32, i32) #2

declare dso_local i32 @cvmx_override_pko_queue_priority(i32, i32*) #2

declare dso_local i32 @cvmx_pko_config_port(i32, i32, i32, i32*) #2

declare dso_local i32 @cvmx_pko_get_base_queue_per_core(i32, i32) #2

declare dso_local i32 @cvmx_pko_get_num_queues(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
