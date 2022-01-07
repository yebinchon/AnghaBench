; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_list_lookup_by_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_list_lookup_by_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch_list = type { %struct.TYPE_2__*, %struct.gdbarch_list* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.gdbarch_info = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list* %0, %struct.gdbarch_info* %1) #0 {
  %3 = alloca %struct.gdbarch_list*, align 8
  %4 = alloca %struct.gdbarch_list*, align 8
  %5 = alloca %struct.gdbarch_info*, align 8
  store %struct.gdbarch_list* %0, %struct.gdbarch_list** %4, align 8
  store %struct.gdbarch_info* %1, %struct.gdbarch_info** %5, align 8
  br label %6

6:                                                ; preds = %44, %2
  %7 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  %8 = icmp ne %struct.gdbarch_list* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %6
  %10 = load %struct.gdbarch_info*, %struct.gdbarch_info** %5, align 8
  %11 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  %14 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %44

20:                                               ; preds = %9
  %21 = load %struct.gdbarch_info*, %struct.gdbarch_info** %5, align 8
  %22 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  %25 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %44

31:                                               ; preds = %20
  %32 = load %struct.gdbarch_info*, %struct.gdbarch_info** %5, align 8
  %33 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  %36 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %44

42:                                               ; preds = %31
  %43 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  store %struct.gdbarch_list* %43, %struct.gdbarch_list** %3, align 8
  br label %49

44:                                               ; preds = %41, %30, %19
  %45 = load %struct.gdbarch_list*, %struct.gdbarch_list** %4, align 8
  %46 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %45, i32 0, i32 1
  %47 = load %struct.gdbarch_list*, %struct.gdbarch_list** %46, align 8
  store %struct.gdbarch_list* %47, %struct.gdbarch_list** %4, align 8
  br label %6

48:                                               ; preds = %6
  store %struct.gdbarch_list* null, %struct.gdbarch_list** %3, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load %struct.gdbarch_list*, %struct.gdbarch_list** %3, align 8
  ret %struct.gdbarch_list* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
