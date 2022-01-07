; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_resumed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_resumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iucv_path*, i32)* }
%struct.iucv_irq_data = type { i32 }
%struct.iucv_path_resumed = type { i64, i32 }

@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_irq_data*)* @iucv_path_resumed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_path_resumed(%struct.iucv_irq_data* %0) #0 {
  %2 = alloca %struct.iucv_irq_data*, align 8
  %3 = alloca %struct.iucv_path_resumed*, align 8
  %4 = alloca %struct.iucv_path*, align 8
  store %struct.iucv_irq_data* %0, %struct.iucv_irq_data** %2, align 8
  %5 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %2, align 8
  %6 = bitcast %struct.iucv_irq_data* %5 to i8*
  %7 = bitcast i8* %6 to %struct.iucv_path_resumed*
  store %struct.iucv_path_resumed* %7, %struct.iucv_path_resumed** %3, align 8
  %8 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %9 = load %struct.iucv_path_resumed*, %struct.iucv_path_resumed** %3, align 8
  %10 = getelementptr inbounds %struct.iucv_path_resumed, %struct.iucv_path_resumed* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %8, i64 %11
  %13 = load %struct.iucv_path*, %struct.iucv_path** %12, align 8
  store %struct.iucv_path* %13, %struct.iucv_path** %4, align 8
  %14 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %15 = icmp ne %struct.iucv_path* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %18 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %23 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.iucv_path*, i32)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %30 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %32, align 8
  %34 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %35 = load %struct.iucv_path_resumed*, %struct.iucv_path_resumed** %3, align 8
  %36 = getelementptr inbounds %struct.iucv_path_resumed, %struct.iucv_path_resumed* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %33(%struct.iucv_path* %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %21, %16, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
