; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_update_eliminable_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_update_eliminable_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i64, i64, i64 }

@num_not_at_initial_offset = common dso_local global i64 0, align 8
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_eliminable_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_eliminable_offsets() #0 {
  %1 = alloca %struct.elim_table*, align 8
  store i64 0, i64* @num_not_at_initial_offset, align 8
  %2 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %2, %struct.elim_table** %1, align 8
  br label %3

3:                                                ; preds = %31, %0
  %4 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %5 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %6 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %7 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %5, i64 %6
  %8 = icmp ult %struct.elim_table* %4, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %11 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %14 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %16 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %21 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %24 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* @num_not_at_initial_offset, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @num_not_at_initial_offset, align 8
  br label %30

30:                                               ; preds = %27, %19, %9
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.elim_table*, %struct.elim_table** %1, align 8
  %33 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %32, i32 1
  store %struct.elim_table* %33, %struct.elim_table** %1, align 8
  br label %3

34:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
