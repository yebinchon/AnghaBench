; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_spill_next_when.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_spill_next_when.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_reg_info = type { i64, i32 }

@UNW_WHERE_SPILL_HOME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_reg_info**, %struct.unw_reg_info*, i32)* @spill_next_when to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spill_next_when(%struct.unw_reg_info** %0, %struct.unw_reg_info* %1, i32 %2) #0 {
  %4 = alloca %struct.unw_reg_info**, align 8
  %5 = alloca %struct.unw_reg_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.unw_reg_info*, align 8
  store %struct.unw_reg_info** %0, %struct.unw_reg_info*** %4, align 8
  store %struct.unw_reg_info* %1, %struct.unw_reg_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.unw_reg_info**, %struct.unw_reg_info*** %4, align 8
  %9 = load %struct.unw_reg_info*, %struct.unw_reg_info** %8, align 8
  store %struct.unw_reg_info* %9, %struct.unw_reg_info** %7, align 8
  br label %10

10:                                               ; preds = %28, %3
  %11 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %12 = load %struct.unw_reg_info*, %struct.unw_reg_info** %5, align 8
  %13 = icmp ule %struct.unw_reg_info* %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %16 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UNW_WHERE_SPILL_HOME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %23 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %25 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %24, i64 1
  %26 = load %struct.unw_reg_info**, %struct.unw_reg_info*** %4, align 8
  store %struct.unw_reg_info* %25, %struct.unw_reg_info** %26, align 8
  ret void

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.unw_reg_info*, %struct.unw_reg_info** %7, align 8
  %30 = getelementptr inbounds %struct.unw_reg_info, %struct.unw_reg_info* %29, i32 1
  store %struct.unw_reg_info* %30, %struct.unw_reg_info** %7, align 8
  br label %10

31:                                               ; preds = %10
  %32 = call i32 (...) @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
