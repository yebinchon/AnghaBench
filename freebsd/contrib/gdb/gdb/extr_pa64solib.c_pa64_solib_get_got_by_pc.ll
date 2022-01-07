; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_get_got_by_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_get_got_by_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.so_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@so_list_head = common dso_local global %struct.so_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pa64_solib_get_got_by_pc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %5, %struct.so_list** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %33, %1
  %7 = load %struct.so_list*, %struct.so_list** %3, align 8
  %8 = icmp ne %struct.so_list* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.so_list*, %struct.so_list** %3, align 8
  %11 = getelementptr inbounds %struct.so_list, %struct.so_list* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %9
  %17 = load %struct.so_list*, %struct.so_list** %3, align 8
  %18 = getelementptr inbounds %struct.so_list, %struct.so_list* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.so_list*, %struct.so_list** %3, align 8
  %22 = getelementptr inbounds %struct.so_list, %struct.so_list* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %20, %24
  %26 = load i64, i64* %2, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.so_list*, %struct.so_list** %3, align 8
  %30 = getelementptr inbounds %struct.so_list, %struct.so_list* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  br label %37

33:                                               ; preds = %16, %9
  %34 = load %struct.so_list*, %struct.so_list** %3, align 8
  %35 = getelementptr inbounds %struct.so_list, %struct.so_list* %34, i32 0, i32 0
  %36 = load %struct.so_list*, %struct.so_list** %35, align 8
  store %struct.so_list* %36, %struct.so_list** %3, align 8
  br label %6

37:                                               ; preds = %28, %6
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
