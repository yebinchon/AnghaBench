; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_set_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_reg_info = type { i64, i32, i32 }

@UNW_WHEN_NEVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_reg_info*, i32, i32, i64)* @set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reg(%struct.unw_reg_info* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.unw_reg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.unw_reg_info* %0, %struct.unw_reg_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.unw_reg_info*, %struct.unw_reg_info** %5, align 8
  %11 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.unw_reg_info*, %struct.unw_reg_info** %5, align 8
  %14 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.unw_reg_info*, %struct.unw_reg_info** %5, align 8
  %16 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UNW_WHEN_NEVER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.unw_reg_info*, %struct.unw_reg_info** %5, align 8
  %23 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
