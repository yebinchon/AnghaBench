; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_process_insert_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_process_insert_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, i32 }

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.expr*)* @process_insert_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_insert_insn(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %2, align 8
  %7 = load %struct.expr*, %struct.expr** %2, align 8
  %8 = getelementptr inbounds %struct.expr, %struct.expr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.expr*, %struct.expr** %2, align 8
  %11 = getelementptr inbounds %struct.expr, %struct.expr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @copy_rtx(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @start_sequence()
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  %18 = call i64 @general_operand(i32 %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @emit_move_insn(i32 %21, i32 %22)
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gen_rtx_SET(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @emit_insn(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @insn_invalid_p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 (...) @gcc_unreachable()
  br label %35

35:                                               ; preds = %33, %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = call i32 (...) @get_insns()
  store i32 %37, i32* %5, align 4
  %38 = call i32 (...) @end_sequence()
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @general_operand(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i64 @insn_invalid_p(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
