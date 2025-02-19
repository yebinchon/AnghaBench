; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_free_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32*, i64, i32* }

@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_free_pages(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @transport_free_sgl(i32* %13, i64 %16)
  %18 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @transport_free_sgl(i32* %24, i64 %27)
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @transport_free_sgl(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
