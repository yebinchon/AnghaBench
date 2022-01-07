; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips16_mark_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips16_mark_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.insn_label_list* }
%struct.insn_label_list = type { i32*, %struct.insn_label_list* }

@now_seg = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IS_ELF = common dso_local global i64 0, align 8
@STO_MIPS16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips16_mark_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips16_mark_labels() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.insn_label_list*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @now_seg, align 4
  %5 = call %struct.TYPE_4__* @seg_info(i32 %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mips_opts, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %48

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.insn_label_list*, %struct.insn_label_list** %11, align 8
  store %struct.insn_label_list* %12, %struct.insn_label_list** %2, align 8
  br label %13

13:                                               ; preds = %44, %9
  %14 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %15 = icmp ne %struct.insn_label_list* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %18 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @S_GET_VALUE(i32* %20)
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @S_IS_WEAK(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @S_IS_EXTERNAL(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @now_seg, align 4
  %35 = call i32 @s_is_linkonce(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @S_GET_VALUE(i32* %39)
  %41 = or i32 %40, 1
  %42 = call i32 @S_SET_VALUE(i32* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %32, %28, %24, %16
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.insn_label_list*, %struct.insn_label_list** %2, align 8
  %46 = getelementptr inbounds %struct.insn_label_list, %struct.insn_label_list* %45, i32 0, i32 1
  %47 = load %struct.insn_label_list*, %struct.insn_label_list** %46, align 8
  store %struct.insn_label_list* %47, %struct.insn_label_list** %2, align 8
  br label %13

48:                                               ; preds = %8, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @seg_info(i32) #1

declare dso_local i32 @S_GET_VALUE(i32*) #1

declare dso_local i32 @S_IS_WEAK(i32*) #1

declare dso_local i32 @S_IS_EXTERNAL(i32*) #1

declare dso_local i32 @s_is_linkonce(i32*, i32) #1

declare dso_local i32 @S_SET_VALUE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
