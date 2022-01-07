; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_setup_spill_pointers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_setup_spill_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64, i8**, i32**, i32**, i8**, i32 }
%struct.TYPE_4__ = type { i32 }

@spill_fill_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@current_frame_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @setup_spill_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_spill_pointers(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 (...) @get_last_insn()
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 8), align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 7), align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 7), align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* %13, i8** %15, align 8
  %16 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 6), align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  store i32* null, i32** %17, align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 6), align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* null, i32** %19, align 8
  %20 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 5), align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  store i32* null, i32** %21, align 8
  %22 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 5), align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 4), align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 4), align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %27, i8** %29, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 3), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_frame_info, i32 0, i32 0), align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 0), align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 1, %33
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 1), align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %52, %3
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 1), align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = call i32 (...) @next_scratch_gr_reg()
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @DImode, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @gen_rtx_REG(i32 %41, i32 %42)
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spill_fill_data, i32 0, i32 2), align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_frame_info, i32 0, i32 0), align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_frame_info, i32 0, i32 0), align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %35

55:                                               ; preds = %35
  ret void
}

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i32 @next_scratch_gr_reg(...) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
