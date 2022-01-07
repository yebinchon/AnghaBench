; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_clear_insn_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_clear_insn_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_label_list = type { %struct.insn_label_list* }
%struct.TYPE_3__ = type { %struct.insn_label_list* }

@now_seg = common dso_local global i64 0, align 8
@free_insn_labels = common dso_local global %struct.insn_label_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_clear_insn_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_clear_insn_labels() #0 {
  %1 = alloca %struct.insn_label_list**, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i64, i64* @now_seg, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  store %struct.insn_label_list** @free_insn_labels, %struct.insn_label_list*** %1, align 8
  br label %6

6:                                                ; preds = %11, %5
  %7 = load %struct.insn_label_list**, %struct.insn_label_list*** %1, align 8
  %8 = load %struct.insn_label_list*, %struct.insn_label_list** %7, align 8
  %9 = icmp ne %struct.insn_label_list* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.insn_label_list**, %struct.insn_label_list*** %1, align 8
  %13 = load %struct.insn_label_list*, %struct.insn_label_list** %12, align 8
  %14 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %13, i32 0, i32 0
  store %struct.insn_label_list** %14, %struct.insn_label_list*** %1, align 8
  br label %6

15:                                               ; preds = %6
  %16 = load i64, i64* @now_seg, align 8
  %17 = call %struct.TYPE_3__* @seg_info(i64 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.insn_label_list*, %struct.insn_label_list** %19, align 8
  %21 = load %struct.insn_label_list**, %struct.insn_label_list*** %1, align 8
  store %struct.insn_label_list* %20, %struct.insn_label_list** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.insn_label_list* null, %struct.insn_label_list** %23, align 8
  br label %24

24:                                               ; preds = %15, %0
  ret void
}

declare dso_local %struct.TYPE_3__* @seg_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
