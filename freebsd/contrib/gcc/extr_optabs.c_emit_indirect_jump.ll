; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_emit_indirect_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_emit_indirect_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@CODE_FOR_indirect_jump = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_indirect_jump(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %4 = load i64, i64* @CODE_FOR_indirect_jump, align 8
  %5 = trunc i64 %4 to i32
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @Pmode, align 4
  %15 = call i32 %12(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @Pmode, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @copy_to_mode_reg(i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @gen_indirect_jump(i32 %22)
  %24 = call i32 @emit_jump_insn(i32 %23)
  %25 = call i32 (...) @emit_barrier()
  ret void
}

declare dso_local i32 @copy_to_mode_reg(i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_indirect_jump(i32) #1

declare dso_local i32 @emit_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
