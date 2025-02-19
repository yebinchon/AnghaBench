; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_restore_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_cfi_add_CFA_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cfa_save_data*, i32 }
%struct.cfa_save_data = type { %struct.cfa_save_data*, i32 }

@DW_CFA_restore_state = common dso_local global i32 0, align 4
@frchain_now = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"CFI state restore without previous remember\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfi_add_CFA_restore_state() #0 {
  %1 = alloca %struct.cfa_save_data*, align 8
  %2 = load i32, i32* @DW_CFA_restore_state, align 4
  %3 = call i32 @cfi_add_CFA_insn(i32 %2)
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.cfa_save_data*, %struct.cfa_save_data** %7, align 8
  store %struct.cfa_save_data* %8, %struct.cfa_save_data** %1, align 8
  %9 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %10 = icmp ne %struct.cfa_save_data* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %0
  %12 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %13 = getelementptr inbounds %struct.cfa_save_data, %struct.cfa_save_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 8
  %19 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %20 = getelementptr inbounds %struct.cfa_save_data, %struct.cfa_save_data* %19, i32 0, i32 0
  %21 = load %struct.cfa_save_data*, %struct.cfa_save_data** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @frchain_now, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.cfa_save_data* %21, %struct.cfa_save_data** %25, align 8
  %26 = load %struct.cfa_save_data*, %struct.cfa_save_data** %1, align 8
  %27 = call i32 @free(%struct.cfa_save_data* %26)
  br label %31

28:                                               ; preds = %0
  %29 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @as_bad(i32 %29)
  br label %31

31:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @cfi_add_CFA_insn(i32) #1

declare dso_local i32 @free(%struct.cfa_save_data*) #1

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
