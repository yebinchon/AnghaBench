; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_is_costly_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_is_costly_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_sched_costly_dep = common dso_local global i64 0, align 8
@no_dep_costly = common dso_local global i64 0, align 8
@all_deps_costly = common dso_local global i64 0, align 8
@store_to_load_dep_costly = common dso_local global i64 0, align 8
@true_store_to_load_dep_costly = common dso_local global i64 0, align 8
@max_dep_latency = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @rs6000_is_costly_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_is_costly_dependence(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %13 = load i64, i64* @no_dep_costly, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

16:                                               ; preds = %5
  %17 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %18 = load i64, i64* @all_deps_costly, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %68

21:                                               ; preds = %16
  %22 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %23 = load i64, i64* @store_to_load_dep_costly, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @is_load_insn(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @is_store_insn(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %68

34:                                               ; preds = %29, %25, %21
  %35 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %36 = load i64, i64* @true_store_to_load_dep_costly, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @is_load_insn(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @is_store_insn(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @REG_NOTE_KIND(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %46
  store i32 1, i32* %6, align 4
  br label %68

55:                                               ; preds = %49, %42, %38, %34
  %56 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %57 = load i64, i64* @max_dep_latency, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i64, i64* @rs6000_sched_costly_dep, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp sge i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %68

67:                                               ; preds = %59, %55
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %66, %54, %33, %20, %15
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @is_load_insn(i32) #1

declare dso_local i64 @is_store_insn(i32) #1

declare dso_local i64 @REG_NOTE_KIND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
