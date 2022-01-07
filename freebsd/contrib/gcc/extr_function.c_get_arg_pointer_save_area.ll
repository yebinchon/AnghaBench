; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_get_arg_pointer_save_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_get_arg_pointer_save_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32, i64 }

@Pmode = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.function* null, align 8
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_arg_pointer_save_area(%struct.function* %0) #0 {
  %2 = alloca %struct.function*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.function* %0, %struct.function** %2, align 8
  %5 = load %struct.function*, %struct.function** %2, align 8
  %6 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @Pmode, align 4
  %12 = load i32, i32* @Pmode, align 4
  %13 = call i32 @GET_MODE_SIZE(i32 %12)
  %14 = load %struct.function*, %struct.function** %2, align 8
  %15 = call i64 @assign_stack_local_1(i32 %11, i32 %13, i32 0, %struct.function* %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.function*, %struct.function** %2, align 8
  %18 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.function*, %struct.function** %2, align 8
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %22 = icmp eq %struct.function* %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.function*, %struct.function** %2, align 8
  %25 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @start_sequence()
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @validize_mem(i64 %30)
  %32 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %33 = call i32 @emit_move_insn(i32 %31, i32 %32)
  %34 = call i64 (...) @get_insns()
  store i64 %34, i64* %4, align 8
  %35 = call i32 (...) @end_sequence()
  %36 = call i32 (...) @push_topmost_sequence()
  %37 = load i64, i64* %4, align 8
  %38 = call i32 (...) @entry_of_function()
  %39 = call i32 @emit_insn_after(i64 %37, i32 %38)
  %40 = call i32 (...) @pop_topmost_sequence()
  br label %41

41:                                               ; preds = %28, %23, %19
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @assign_stack_local_1(i32, i32, i32, %struct.function*) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @validize_mem(i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @push_topmost_sequence(...) #1

declare dso_local i32 @emit_insn_after(i64, i32) #1

declare dso_local i32 @entry_of_function(...) #1

declare dso_local i32 @pop_topmost_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
