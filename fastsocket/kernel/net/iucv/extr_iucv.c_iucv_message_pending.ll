; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.iucv_path*, %struct.iucv_message*)* }
%struct.iucv_message = type { i32, i32, i32, i32, i32, i32 }
%struct.iucv_irq_data = type { i32 }
%struct.iucv_message_pending = type { i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_irq_data*)* @iucv_message_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_message_pending(%struct.iucv_irq_data* %0) #0 {
  %2 = alloca %struct.iucv_irq_data*, align 8
  %3 = alloca %struct.iucv_message_pending*, align 8
  %4 = alloca %struct.iucv_path*, align 8
  %5 = alloca %struct.iucv_message, align 4
  store %struct.iucv_irq_data* %0, %struct.iucv_irq_data** %2, align 8
  %6 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %2, align 8
  %7 = bitcast %struct.iucv_irq_data* %6 to i8*
  %8 = bitcast i8* %7 to %struct.iucv_message_pending*
  store %struct.iucv_message_pending* %8, %struct.iucv_message_pending** %3, align 8
  %9 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %10 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %11 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %9, i64 %12
  %14 = load %struct.iucv_path*, %struct.iucv_path** %13, align 8
  store %struct.iucv_path* %14, %struct.iucv_path** %4, align 8
  %15 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %16 = icmp ne %struct.iucv_path* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %1
  %18 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %19 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %24 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.iucv_path*, %struct.iucv_message*)*, i32 (%struct.iucv_path*, %struct.iucv_message*)** %26, align 8
  %28 = icmp ne i32 (%struct.iucv_path*, %struct.iucv_message*)* %27, null
  br i1 %28, label %29, label %75

29:                                               ; preds = %22
  %30 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %31 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %35 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %39 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %43 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IUCV_IPRMDATA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %52 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %50, i32 %54, i32 8)
  %56 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 1
  store i32 8, i32* %56, align 4
  br label %63

57:                                               ; preds = %29
  %58 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %59 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %48
  %64 = load %struct.iucv_message_pending*, %struct.iucv_message_pending** %3, align 8
  %65 = getelementptr inbounds %struct.iucv_message_pending, %struct.iucv_message_pending* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %69 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.iucv_path*, %struct.iucv_message*)*, i32 (%struct.iucv_path*, %struct.iucv_message*)** %71, align 8
  %73 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %74 = call i32 %72(%struct.iucv_path* %73, %struct.iucv_message* %5)
  br label %75

75:                                               ; preds = %63, %22, %17, %1
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
