; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_print_format3_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_debug_fs.c_print_format3_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@DLM_IFL_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"lkb %x %d %x %u %llu %x %x %d %d %d %d %d %d %u %llu %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dlm_lkb*, i32)* @print_format3_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_format3_lock(%struct.seq_file* %0, %struct.dlm_lkb* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DLM_IFL_USER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %16, i32 0, i32 14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %20, %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %43 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %46 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %52 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %63 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %69 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @ktime_to_ns(i32 %70)
  %72 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %73 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ktime_to_ns(i32 %74)
  %76 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40, i64 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %60, i32 %61, i32 %64, i32 %67, i64 %71, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
