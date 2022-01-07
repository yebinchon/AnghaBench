; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_define_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_define_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_label_list = type { %struct.insn_label_list*, i32* }
%struct.TYPE_3__ = type { %struct.insn_label_list* }

@now_seg = common dso_local global i32 0, align 4
@free_insn_labels = common dso_local global %struct.insn_label_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_define_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.insn_label_list*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @now_seg, align 4
  %6 = call %struct.TYPE_3__* @seg_info(i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.insn_label_list*, %struct.insn_label_list** @free_insn_labels, align 8
  %8 = icmp eq %struct.insn_label_list* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i64 @xmalloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.insn_label_list*
  store %struct.insn_label_list* %11, %struct.insn_label_list** %4, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.insn_label_list*, %struct.insn_label_list** @free_insn_labels, align 8
  store %struct.insn_label_list* %13, %struct.insn_label_list** %4, align 8
  %14 = load %struct.insn_label_list*, %struct.insn_label_list** %4, align 8
  %15 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %14, i32 0, i32 0
  %16 = load %struct.insn_label_list*, %struct.insn_label_list** %15, align 8
  store %struct.insn_label_list* %16, %struct.insn_label_list** @free_insn_labels, align 8
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.insn_label_list*, %struct.insn_label_list** %4, align 8
  %20 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.insn_label_list*, %struct.insn_label_list** %22, align 8
  %24 = load %struct.insn_label_list*, %struct.insn_label_list** %4, align 8
  %25 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %24, i32 0, i32 0
  store %struct.insn_label_list* %23, %struct.insn_label_list** %25, align 8
  %26 = load %struct.insn_label_list*, %struct.insn_label_list** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.insn_label_list* %26, %struct.insn_label_list** %28, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @seg_info(i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
