; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_move_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_move_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.insn_label_list* }
%struct.insn_label_list = type { i32, %struct.insn_label_list* }

@now_seg = common dso_local global i64 0, align 8
@frag_now = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_move_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_move_labels() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.insn_label_list*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @now_seg, align 8
  %5 = call %struct.TYPE_4__* @seg_info(i64 %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.insn_label_list*, %struct.insn_label_list** %7, align 8
  store %struct.insn_label_list* %8, %struct.insn_label_list** %2, align 8
  br label %9

9:                                                ; preds = %38, %0
  %10 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %11 = icmp ne %struct.insn_label_list* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %9
  %13 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %14 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @S_GET_SEGMENT(i32 %15)
  %17 = load i64, i64* @now_seg, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %22 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @frag_now, align 4
  %25 = call i32 @symbol_set_frag(i32 %23, i32 %24)
  %26 = call i64 (...) @frag_now_fix()
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mips_opts, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %29, %12
  %33 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %34 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @S_SET_VALUE(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %40 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %39, i32 0, i32 1
  %41 = load %struct.insn_label_list*, %struct.insn_label_list** %40, align 8
  store %struct.insn_label_list* %41, %struct.insn_label_list** %2, align 8
  br label %9

42:                                               ; preds = %9
  ret void
}

declare dso_local %struct.TYPE_4__* @seg_info(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @S_GET_SEGMENT(i32) #1

declare dso_local i32 @symbol_set_frag(i32, i32) #1

declare dso_local i64 @frag_now_fix(...) #1

declare dso_local i32 @S_SET_VALUE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
