; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_get_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32, i32 }

@accessors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unwind: Can't create unwind address space.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UNW_REG_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_info*, i32, i8*)* @get_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_entries(%struct.unwind_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.unwind_info* %0, %struct.unwind_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = call i32 @unw_create_addr_space(i32* @accessors, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %22 = call i32 @unw_init_remote(i32* %9, i32 %20, %struct.unwind_info* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @display_error(i32 %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i64 @unw_step(i32* %9)
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load i32, i32* @UNW_REG_IP, align 4
  %39 = call i32 @unw_get_reg(i32* %9, i32 %38, i32* %11)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %42 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %45 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @entry(i32 %40, i32 %43, i32 %46, i32 %47, i8* %48)
  store i32 %49, i32* %10, align 4
  br label %29

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @unw_destroy_addr_space(i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @unw_create_addr_space(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @unw_init_remote(i32*, i32, %struct.unwind_info*) #1

declare dso_local i32 @display_error(i32) #1

declare dso_local i64 @unw_step(i32*) #1

declare dso_local i32 @unw_get_reg(i32*, i32, i32*) #1

declare dso_local i32 @entry(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @unw_destroy_addr_space(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
