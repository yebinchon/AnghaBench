; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_find_most_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_find_most_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_value = type { i32, %struct.attr_value* }
%struct.attr_desc = type { %struct.attr_value* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_value* (%struct.attr_desc*)* @find_most_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_value* @find_most_used(%struct.attr_desc* %0) #0 {
  %2 = alloca %struct.attr_desc*, align 8
  %3 = alloca %struct.attr_value*, align 8
  %4 = alloca %struct.attr_value*, align 8
  %5 = alloca i32, align 4
  store %struct.attr_desc* %0, %struct.attr_desc** %2, align 8
  store %struct.attr_value* null, %struct.attr_value** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.attr_desc*, %struct.attr_desc** %2, align 8
  %7 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %6, i32 0, i32 0
  %8 = load %struct.attr_value*, %struct.attr_value** %7, align 8
  store %struct.attr_value* %8, %struct.attr_value** %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %11 = icmp ne %struct.attr_value* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %14 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %20 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  store %struct.attr_value* %22, %struct.attr_value** %4, align 8
  br label %23

23:                                               ; preds = %18, %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.attr_value*, %struct.attr_value** %3, align 8
  %26 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %25, i32 0, i32 1
  %27 = load %struct.attr_value*, %struct.attr_value** %26, align 8
  store %struct.attr_value* %27, %struct.attr_value** %3, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.attr_value*, %struct.attr_value** %4, align 8
  ret %struct.attr_value* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
