; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_elf_final_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_score_elf_final_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fix_data_dependency = common dso_local global i32 0, align 4
@EF_SCORE_FIXDEP = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@score_pic = common dso_local global i64 0, align 8
@PIC = common dso_local global i64 0, align 8
@EF_SCORE_PIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @score_elf_final_processing() #0 {
  %1 = load i32, i32* @fix_data_dependency, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @EF_SCORE_FIXDEP, align 4
  %5 = load i32, i32* @stdoutput, align 4
  %6 = call %struct.TYPE_2__* @elf_elfheader(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i64, i64* @score_pic, align 8
  %12 = load i64, i64* @PIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @EF_SCORE_PIC, align 4
  %16 = load i32, i32* @stdoutput, align 4
  %17 = call %struct.TYPE_2__* @elf_elfheader(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %10
  ret void
}

declare dso_local %struct.TYPE_2__* @elf_elfheader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
