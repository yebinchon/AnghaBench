; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_in_dynamic_linker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_in_dynamic_linker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@symfile_objfile = common dso_local global i32* null, align 8
@dld_cache = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@current_target = common dso_local global i32 0, align 4
@auto_solib_add = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pa64_solib_in_dynamic_linker(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** @symfile_objfile, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 1), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @auto_solib_add, align 4
  %15 = call i32 @read_dld_descriptor(i32* @current_target, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %32

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 0, i32 0), align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 0, i32 1), align 8
  %27 = add nsw i64 %25, %26
  %28 = icmp slt i64 %24, %27
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i1 [ false, %19 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %17, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @read_dld_descriptor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
