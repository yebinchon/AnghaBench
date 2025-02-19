; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_macro_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@mips_macro_warning = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@mips_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@history = common dso_local global %struct.TYPE_8__* null, align 8
@INSN_UNCOND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_DELAY = common dso_local global i32 0, align 4
@INSN_COND_BRANCH_LIKELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macro_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_start() #0 {
  %1 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mips_macro_warning, i32 0, i32 1), i32 0, i32 4)
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mips_opts, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @history, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INSN_UNCOND_BRANCH_DELAY, align 4
  %12 = load i32, i32* @INSN_COND_BRANCH_DELAY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @INSN_COND_BRANCH_LIKELY, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %4, %0
  %19 = phi i1 [ false, %0 ], [ %17, %4 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mips_macro_warning, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
