; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_dump_insn_slim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_dump_insn_slim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"      %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_insn_slim(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @BUF_LEN, align 4
  %9 = add nsw i32 %8, 32
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @print_insn(i8* %12, i64 %13, i32 1)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fputs(i8* %12, i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @putc(i8 signext 10, i32* %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @INSN_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @REG_NOTES(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @REG_NOTES(i64 %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %41, %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  %35 = call i32 @print_value(i8* %12, i64 %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @REG_NOTE_KIND(i64 %37)
  %39 = call i8* @GET_REG_NOTE_NAME(i32 %38)
  %40 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %12)
  br label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @XEXP(i64 %42, i32 1)
  store i64 %43, i64* %7, align 8
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %22, %2
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_insn(i8*, i64, i32) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @putc(i8 signext, i32*) #2

declare dso_local i64 @INSN_P(i64) #2

declare dso_local i64 @REG_NOTES(i64) #2

declare dso_local i32 @print_value(i8*, i64, i32) #2

declare dso_local i64 @XEXP(i64, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i8* @GET_REG_NOTE_NAME(i32) #2

declare dso_local i32 @REG_NOTE_KIND(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
