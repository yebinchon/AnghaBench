; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_zone_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_zone_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.compact_control = type { i32, i32, i32, i32, i32, %struct.zone*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compact_zone_order(%struct.zone* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.compact_control, align 8
  store %struct.zone* %0, %struct.zone** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 1
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 5
  %21 = load %struct.zone*, %struct.zone** %6, align 8
  store %struct.zone* %21, %struct.zone** %20, align 8
  %22 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 6
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @allocflags_to_migratetype(i32 %23)
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 8
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 4
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.zone*, %struct.zone** %6, align 8
  %32 = call i64 @compact_zone(%struct.zone* %31, %struct.compact_control* %12)
  store i64 %32, i64* %11, align 8
  %33 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 4
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @VM_BUG_ON(i32 %37)
  %39 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 3
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @VM_BUG_ON(i32 %43)
  %45 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %12, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* %11, align 8
  ret i64 %48
}

declare dso_local i32 @allocflags_to_migratetype(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @compact_zone(%struct.zone*, %struct.compact_control*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
