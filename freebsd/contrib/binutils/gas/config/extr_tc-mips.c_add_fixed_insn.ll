; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_fixed_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_fixed_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mips_cl_insn = type { i32 }

@frag_now = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*)* @add_fixed_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fixed_insn(%struct.mips_cl_insn* %0) #0 {
  %2 = alloca %struct.mips_cl_insn*, align 8
  %3 = alloca i8*, align 8
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %2, align 8
  %4 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %5 = call i32 @insn_length(%struct.mips_cl_insn* %4)
  %6 = call i8* @frag_more(i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 0, %13
  %15 = getelementptr inbounds i8, i8* %9, i64 %14
  %16 = call i32 @move_insn(%struct.mips_cl_insn* %7, %struct.TYPE_3__* %8, i8* %15)
  ret void
}

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @insn_length(%struct.mips_cl_insn*) #1

declare dso_local i32 @move_insn(%struct.mips_cl_insn*, %struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
