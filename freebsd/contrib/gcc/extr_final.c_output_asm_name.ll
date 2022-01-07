; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_asm_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_output_asm_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@debug_insn = common dso_local global i64 0, align 8
@asm_out_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\09%s %d\09%s\00", align 1
@ASM_COMMENT_START = common dso_local global i8* null, align 8
@insn_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@which_alternative = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_asm_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_asm_name() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @debug_insn, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %0
  %5 = load i64, i64* @debug_insn, align 8
  %6 = call i32 @INSN_CODE(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @asm_out_file, align 4
  %8 = load i8*, i8** @ASM_COMMENT_START, align 8
  %9 = load i64, i64* @debug_insn, align 8
  %10 = call i32 @INSN_UID(i64 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @insn_data, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %10, i8* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @insn_data, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @asm_out_file, align 4
  %27 = load i32, i32* @which_alternative, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %4
  store i64 0, i64* @debug_insn, align 8
  br label %31

31:                                               ; preds = %30, %0
  ret void
}

declare dso_local i32 @INSN_CODE(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @INSN_UID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
