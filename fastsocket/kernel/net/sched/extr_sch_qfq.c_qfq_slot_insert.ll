; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_slot_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i32, i32, i32, i32, i32* }
%struct.qfq_class = type { i32, i32, i32 }

@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_group*, %struct.qfq_class*, i32)* @qfq_slot_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_insert(%struct.qfq_group* %0, %struct.qfq_class* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qfq_group* %0, %struct.qfq_group** %4, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %12 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  %15 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %16 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %21 = sub nsw i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %29 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %33 = sub nsw i32 %32, 2
  %34 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %33, %36
  %38 = sub nsw i32 %31, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %41 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %46 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %26, %3
  %52 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %53 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %58 = srem i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %60 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %59, i32 0, i32 0
  %61 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %62 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @hlist_add_head(i32* %60, i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %70 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %69, i32 0, i32 3
  %71 = call i32 @__set_bit(i32 %68, i32* %70)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
