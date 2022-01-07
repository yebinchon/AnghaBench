; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_insn_start_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_insn_start_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@NOTE_INSN_BASIC_BLOCK = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"STORE_MOTION  insert store at start of BB %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_5__*)* @insert_insn_start_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_insn_start_bb(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i64 @BB_HEAD(%struct.TYPE_5__* %7)
  %9 = call i64 @PREV_INSN(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i64 @BB_HEAD(%struct.TYPE_5__* %10)
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @LABEL_P(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @NOTE_P(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @NOTE_LINE_NUMBER(i64 %24)
  %26 = load i64, i64* @NOTE_INSN_BASIC_BLOCK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %19
  br label %39

29:                                               ; preds = %23, %15
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i64 @BB_END(%struct.TYPE_5__* %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @NEXT_INSN(i64 %37)
  store i64 %38, i64* %6, align 8
  br label %12

39:                                               ; preds = %35, %28, %12
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @emit_insn_after_noloc(i64 %40, i64 %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* @dump_file, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i64, i64* @dump_file, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i64, i8*, ...) @fprintf(i64 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @dump_file, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @print_inline_rtx(i64 %51, i64 %52, i32 6)
  %54 = load i64, i64* @dump_file, align 8
  %55 = call i32 (i64, i8*, ...) @fprintf(i64 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %45, %39
  ret void
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_5__*) #1

declare dso_local i32 @LABEL_P(i64) #1

declare dso_local i32 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_5__*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @emit_insn_after_noloc(i64, i64) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_inline_rtx(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
