; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_meta_int_apply_extras.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_meta_int_apply_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meta_value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.meta_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meta_value*, %struct.meta_obj*)* @meta_int_apply_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meta_int_apply_extras(%struct.meta_value* %0, %struct.meta_obj* %1) #0 {
  %3 = alloca %struct.meta_value*, align 8
  %4 = alloca %struct.meta_obj*, align 8
  store %struct.meta_value* %0, %struct.meta_value** %3, align 8
  store %struct.meta_obj* %1, %struct.meta_obj** %4, align 8
  %5 = load %struct.meta_value*, %struct.meta_value** %3, align 8
  %6 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.meta_value*, %struct.meta_value** %3, align 8
  %12 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.meta_obj*, %struct.meta_obj** %4, align 8
  %16 = getelementptr inbounds %struct.meta_obj, %struct.meta_obj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.meta_value*, %struct.meta_value** %3, align 8
  %21 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.meta_value*, %struct.meta_value** %3, align 8
  %26 = getelementptr inbounds %struct.meta_value, %struct.meta_value* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.meta_obj*, %struct.meta_obj** %4, align 8
  %29 = getelementptr inbounds %struct.meta_obj, %struct.meta_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
