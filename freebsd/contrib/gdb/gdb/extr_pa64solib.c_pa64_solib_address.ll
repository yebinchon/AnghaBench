; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i8*, %struct.so_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@so_list_head = common dso_local global %struct.so_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pa64_solib_address(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.so_list*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %5, %struct.so_list** %4, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load %struct.so_list*, %struct.so_list** %4, align 8
  %8 = icmp ne %struct.so_list* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.so_list*, %struct.so_list** %4, align 8
  %12 = getelementptr inbounds %struct.so_list, %struct.so_list* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %10, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.so_list*, %struct.so_list** %4, align 8
  %19 = getelementptr inbounds %struct.so_list, %struct.so_list* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.so_list*, %struct.so_list** %4, align 8
  %23 = getelementptr inbounds %struct.so_list, %struct.so_list* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  %27 = icmp slt i32 %17, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load %struct.so_list*, %struct.so_list** %4, align 8
  %30 = getelementptr inbounds %struct.so_list, %struct.so_list* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %37

32:                                               ; preds = %16, %9
  %33 = load %struct.so_list*, %struct.so_list** %4, align 8
  %34 = getelementptr inbounds %struct.so_list, %struct.so_list* %33, i32 0, i32 1
  %35 = load %struct.so_list*, %struct.so_list** %34, align 8
  store %struct.so_list* %35, %struct.so_list** %4, align 8
  br label %6

36:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
