; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c___vm_enough_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c___vm_enough_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@sysctl_overcommit_memory = common dso_local global i64 0, align 8
@OVERCOMMIT_ALWAYS = common dso_local global i64 0, align 8
@OVERCOMMIT_GUESS = common dso_local global i64 0, align 8
@NR_FILE_PAGES = common dso_local global i32 0, align 4
@nr_swap_pages = common dso_local global i64 0, align 8
@NR_SLAB_RECLAIMABLE = common dso_local global i32 0, align 4
@totalreserve_pages = common dso_local global i64 0, align 8
@totalram_pages = common dso_local global i32 0, align 4
@sysctl_overcommit_ratio = common dso_local global i32 0, align 4
@total_swap_pages = common dso_local global i64 0, align 8
@vm_committed_as = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vm_enough_memory(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @vm_acct_memory(i64 %11)
  %13 = load i64, i64* @sysctl_overcommit_memory, align 8
  %14 = load i64, i64* @OVERCOMMIT_ALWAYS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

17:                                               ; preds = %3
  %18 = load i64, i64* @sysctl_overcommit_memory, align 8
  %19 = load i64, i64* @OVERCOMMIT_GUESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load i32, i32* @NR_FILE_PAGES, align 4
  %23 = call i64 @global_page_state(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @nr_swap_pages, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* @NR_SLAB_RECLAIMABLE, align 4
  %28 = call i64 @global_page_state(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load i64, i64* %8, align 8
  %35 = udiv i64 %34, 32
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %33, %21
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %108

43:                                               ; preds = %38
  %44 = call i64 (...) @nr_free_pages()
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @totalreserve_pages, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %103

49:                                               ; preds = %43
  %50 = load i64, i64* @totalreserve_pages, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = udiv i64 %57, 32
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %108

69:                                               ; preds = %61
  br label %103

70:                                               ; preds = %17
  %71 = load i32, i32* @totalram_pages, align 4
  %72 = load i32, i32* @sysctl_overcommit_ratio, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %73, 100
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %9, align 8
  %80 = udiv i64 %79, 32
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i64, i64* @total_swap_pages, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %88 = icmp ne %struct.mm_struct* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %91 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 32
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %89, %83
  %98 = call i64 @percpu_counter_read_positive(i32* @vm_committed_as)
  %99 = load i64, i64* %9, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %108

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %69, %48
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @vm_unacct_memory(i64 %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %101, %68, %42, %16
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @vm_acct_memory(i64) #1

declare dso_local i64 @global_page_state(i32) #1

declare dso_local i64 @nr_free_pages(...) #1

declare dso_local i64 @percpu_counter_read_positive(i32*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
