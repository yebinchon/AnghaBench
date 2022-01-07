; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_init_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_init_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@cfun = common dso_local global %struct.function* null, align 8
@first_insn = common dso_local global i32* null, align 8
@last_insn = common dso_local global i32* null, align 8
@cur_insn_uid = common dso_local global i32 0, align 4
@LAST_VIRTUAL_REGISTER = common dso_local global i8* null, align 8
@reg_rtx_no = common dso_local global i8* null, align 8
@UNKNOWN_LOCATION = common dso_local global i32 0, align 4
@last_location = common dso_local global i32 0, align 4
@label_num = common dso_local global i32 0, align 4
@first_label_num = common dso_local global i32 0, align 4
@seq_stack = common dso_local global i32* null, align 8
@regno_reg_rtx = common dso_local global i8* null, align 8
@static_regno_reg_rtx = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@INIT_EXPANDERS = common dso_local global i32 0, align 4
@STACK_BOUNDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_emit() #0 {
  %1 = alloca %struct.function*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %11, %struct.function** %1, align 8
  %12 = call i8* @ggc_alloc(i32 4)
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  %14 = load %struct.function*, %struct.function** %1, align 8
  %15 = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  store i32* null, i32** @first_insn, align 8
  store i32* null, i32** @last_insn, align 8
  store i32 1, i32* @cur_insn_uid, align 4
  %16 = load i8*, i8** @LAST_VIRTUAL_REGISTER, align 8
  %17 = getelementptr i8, i8* %16, i64 1
  store i8* %17, i8** @reg_rtx_no, align 8
  %18 = load i32, i32* @UNKNOWN_LOCATION, align 4
  store i32 %18, i32* @last_location, align 4
  %19 = load i32, i32* @label_num, align 4
  store i32 %19, i32* @first_label_num, align 4
  store i32* null, i32** @seq_stack, align 8
  %20 = load i8*, i8** @LAST_VIRTUAL_REGISTER, align 8
  %21 = getelementptr i8, i8* %20, i64 101
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.function*, %struct.function** %1, align 8
  %24 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.function*, %struct.function** %1, align 8
  %28 = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32 @ggc_alloc_cleared(i32 %34)
  %36 = load %struct.function*, %struct.function** %1, align 8
  %37 = getelementptr inbounds %struct.function, %struct.function* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.function*, %struct.function** %1, align 8
  %41 = getelementptr inbounds %struct.function, %struct.function* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i8* @ggc_alloc(i32 %47)
  store i8* %48, i8** @regno_reg_rtx, align 8
  %49 = load i8*, i8** @regno_reg_rtx, align 8
  %50 = load i32, i32* @static_regno_reg_rtx, align 4
  %51 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i8* %49, i32 %50, i32 %54)
  %56 = load %struct.function*, %struct.function** %1, align 8
  %57 = getelementptr inbounds %struct.function, %struct.function* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @init_virtual_regs(%struct.TYPE_2__* %58)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  ret void
}

declare dso_local i8* @ggc_alloc(i32) #1

declare dso_local i32 @ggc_alloc_cleared(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @init_virtual_regs(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
