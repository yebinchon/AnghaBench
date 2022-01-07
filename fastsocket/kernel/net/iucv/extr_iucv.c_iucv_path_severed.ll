; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_severed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_severed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iucv_path*, i32)* }
%struct.iucv_irq_data = type { i32 }
%struct.iucv_path_severed = type { i64, i32 }

@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_irq_data*)* @iucv_path_severed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_path_severed(%struct.iucv_irq_data* %0) #0 {
  %2 = alloca %struct.iucv_irq_data*, align 8
  %3 = alloca %struct.iucv_path_severed*, align 8
  %4 = alloca %struct.iucv_path*, align 8
  store %struct.iucv_irq_data* %0, %struct.iucv_irq_data** %2, align 8
  %5 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %2, align 8
  %6 = bitcast %struct.iucv_irq_data* %5 to i8*
  %7 = bitcast i8* %6 to %struct.iucv_path_severed*
  store %struct.iucv_path_severed* %7, %struct.iucv_path_severed** %3, align 8
  %8 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %9 = load %struct.iucv_path_severed*, %struct.iucv_path_severed** %3, align 8
  %10 = getelementptr inbounds %struct.iucv_path_severed, %struct.iucv_path_severed* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %8, i64 %11
  %13 = load %struct.iucv_path*, %struct.iucv_path** %12, align 8
  store %struct.iucv_path* %13, %struct.iucv_path** %4, align 8
  %14 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %15 = icmp ne %struct.iucv_path* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %18 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %24 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.iucv_path*, i32)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %31 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.iucv_path*, i32)*, i32 (%struct.iucv_path*, i32)** %33, align 8
  %35 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %36 = load %struct.iucv_path_severed*, %struct.iucv_path_severed** %3, align 8
  %37 = getelementptr inbounds %struct.iucv_path_severed, %struct.iucv_path_severed* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %34(%struct.iucv_path* %35, i32 %38)
  br label %55

40:                                               ; preds = %22
  %41 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %42 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @iucv_sever_pathid(i64 %43, i32* null)
  %45 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %46 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %47 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %45, i64 %48
  store %struct.iucv_path* null, %struct.iucv_path** %49, align 8
  %50 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %51 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %50, i32 0, i32 1
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %54 = call i32 @iucv_path_free(%struct.iucv_path* %53)
  br label %55

55:                                               ; preds = %21, %40, %29
  ret void
}

declare dso_local i32 @iucv_sever_pathid(i64, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
