; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_acct_stack_growth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_acct_stack_growth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rlimit* }
%struct.rlimit = type { i64 }
%struct.vm_area_struct = type { i32, i64, i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @acct_stack_growth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acct_stack_growth(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.rlimit*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.rlimit*, %struct.rlimit** %19, align 8
  store %struct.rlimit* %20, %struct.rlimit** %9, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @may_expand_vm(%struct.mm_struct* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %131

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @over_stack_limit(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %131

35:                                               ; preds = %28
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VM_LOCKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %35
  %43 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %49 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %50 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %48, i64 %49
  %51 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PAGE_SHIFT, align 8
  %54 = lshr i64 %52, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %42
  %59 = load i32, i32* @CAP_IPC_LOCK, align 4
  %60 = call i32 @capable(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %131

65:                                               ; preds = %58, %42
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VM_GROWSUP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  br label %83

77:                                               ; preds = %66
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub i64 %80, %81
  br label %83

83:                                               ; preds = %77, %73
  %84 = phi i64 [ %76, %73 ], [ %82, %77 ]
  store i64 %84, i64* %10, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 4
  %87 = load %struct.mm_struct*, %struct.mm_struct** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @is_hugepage_only_range(%struct.mm_struct* %87, i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %131

95:                                               ; preds = %83
  %96 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %131

103:                                              ; preds = %95
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %106 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @VM_LOCKED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %103
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %118 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %115, %103
  %122 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @vm_stat_account(%struct.mm_struct* %122, i32 %125, i32 %128, i64 %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %121, %100, %92, %62, %32, %25
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i64) #1

declare dso_local i64 @over_stack_limit(i64) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @is_hugepage_only_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
