; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_dst_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_dst_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* (%struct.dst_entry*, i32)* }
%struct.sock = type { %struct.dst_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @__sk_dst_check(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  store %struct.dst_entry* %9, %struct.dst_entry** %6, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %11 = icmp ne %struct.dst_entry* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %19 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32* (%struct.dst_entry*, i32)*, i32* (%struct.dst_entry*, i32)** %21, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32* %22(%struct.dst_entry* %23, i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @sk_tx_queue_clear(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  store %struct.dst_entry* null, %struct.dst_entry** %31, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %33 = call i32 @dst_release(%struct.dst_entry* %32)
  store %struct.dst_entry* null, %struct.dst_entry** %3, align 8
  br label %36

34:                                               ; preds = %17, %12, %2
  %35 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %35, %struct.dst_entry** %3, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  ret %struct.dst_entry* %37
}

declare dso_local i32 @sk_tx_queue_clear(%struct.sock*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
