; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_spill_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_spill_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"can't find a register in class %qs while reloading %<asm%>\00", align 1
@reg_class_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to find a register to spill in class %qs\00", align 1
@dump_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"\0AReloads for insn # %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"this is the insn:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @spill_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spill_failure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @PATTERN(i32 %5)
  %7 = call i64 @asm_noperands(i32 %6)
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32*, i32** @reg_class_names, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @error_for_asm(i32 %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %36

17:                                               ; preds = %2
  %18 = load i32*, i32** @reg_class_names, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @dump_file, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i64, i64* @dump_file, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @INSN_UID(i32 %28)
  %30 = call i32 @fprintf(i64 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @dump_file, align 8
  %32 = call i32 @debug_reload_to_stream(i64 %31)
  br label %33

33:                                               ; preds = %26, %17
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @fatal_insn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %9
  ret void
}

declare dso_local i64 @asm_noperands(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @error_for_asm(i32, i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @debug_reload_to_stream(i64) #1

declare dso_local i32 @fatal_insn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
