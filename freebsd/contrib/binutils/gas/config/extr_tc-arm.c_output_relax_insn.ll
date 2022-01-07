; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_output_relax_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_output_relax_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i32 0, align 4
@THUMB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_relax_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_relax_insn() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @dwarf2_emit_insn(i32 0)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0, i32 0), align 8
  switch i32 %5, label %11 [
    i32 128, label %6
    i32 129, label %9
  ]

6:                                                ; preds = %0
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0, i32 2), align 8
  store i32* %7, i32** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0, i32 1), align 4
  store i32 %8, i32* %3, align 4
  br label %13

9:                                                ; preds = %0
  store i32* null, i32** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0, i32 1), align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %0
  %12 = call i32* @make_expr_symbol(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2, i32 0))
  store i32* %12, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %9, %6
  %14 = load i32, i32* @rs_machine_dependent, align 4
  %15 = load i32, i32* @INSN_SIZE, align 4
  %16 = load i32, i32* @THUMB_SIZE, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @frag_var(i32 %14, i32 %15, i32 %16, i32 %17, i32* %18, i32 %19, i32* null)
  store i8* %20, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %23 = load i32, i32* @THUMB_SIZE, align 4
  %24 = call i32 @md_number_to_chars(i8* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @dwarf2_emit_insn(i32) #1

declare dso_local i32* @make_expr_symbol(%struct.TYPE_5__*) #1

declare dso_local i8* @frag_var(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
