; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_verify_initial_elim_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_verify_initial_elim_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i32, i32 }

@num_eliminable = common dso_local global i32 0, align 4
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @verify_initial_elim_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_initial_elim_offsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @num_eliminable, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %17

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @INITIAL_FRAME_POINTER_OFFSET(i64 %7)
  %9 = load i64, i64* %2, align 8
  %10 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %11 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %10, i64 0
  %12 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %17

16:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %15, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @INITIAL_FRAME_POINTER_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
