; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_abstract_best_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_abstract_best_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

@regs_ever_live = common dso_local global i32* null, align 8
@pattern_seqs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @abstract_best_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abstract_best_seq() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i32 (...) @determine_seq_blocks()
  %3 = call i32 (...) @split_blocks_after_seqs()
  %4 = call i32 (...) @split_pattern_seq()
  %5 = call i32 (...) @erase_matching_seqs()
  %6 = call i32 (...) @free_seq_blocks()
  %7 = load i32*, i32** @regs_ever_live, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pattern_seqs, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @REGNO(i32 %10)
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pattern_seqs, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %1, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** @pattern_seqs, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = call i32 @free_pattern_seq(%struct.TYPE_4__* %17)
  ret void
}

declare dso_local i32 @determine_seq_blocks(...) #1

declare dso_local i32 @split_blocks_after_seqs(...) #1

declare dso_local i32 @split_pattern_seq(...) #1

declare dso_local i32 @erase_matching_seqs(...) #1

declare dso_local i32 @free_seq_blocks(...) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @free_pattern_seq(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
