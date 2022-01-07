; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_rest_of_handle_global_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_rest_of_handle_global_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@optimize = common dso_local global i64 0, align 8
@pass_global_alloc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TV_DUMP = common dso_local global i32 0, align 4
@dump_file = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_global_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_global_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @optimize, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @global_alloc()
  store i32 %5, i32* %1, align 4
  br label %11

6:                                                ; preds = %0
  %7 = call i32 (...) @get_insns()
  %8 = call i32 @build_insn_chain(i32 %7)
  %9 = call i32 (...) @get_insns()
  %10 = call i32 @reload(i32 %9, i32 0)
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pass_global_alloc, i32 0, i32 0), align 4
  %13 = call i64 @dump_enabled_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* @TV_DUMP, align 4
  %17 = call i32 @timevar_push(i32 %16)
  %18 = load i32, i32* @dump_file, align 4
  %19 = call i32 @dump_global_regs(i32 %18)
  %20 = load i32, i32* @TV_DUMP, align 4
  %21 = call i32 @timevar_pop(i32 %20)
  br label %22

22:                                               ; preds = %15, %11
  %23 = load i32, i32* @reload_completed, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ true, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* @reload_completed, align 4
  ret i32 0
}

declare dso_local i32 @global_alloc(...) #1

declare dso_local i32 @build_insn_chain(i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @reload(i32, i32) #1

declare dso_local i64 @dump_enabled_p(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @dump_global_regs(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
