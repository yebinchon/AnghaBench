; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_ubranch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_ubranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_ubranch.string = internal global [64 x i8] zeroinitializer, align 16
@TARGET_V9 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ba%*,pt\09%%xcc, \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"b%*\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_ubranch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* @TARGET_V9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = call i64 (...) @INSN_ADDRESSES_SET_P()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @INSN_UID(i32 %16)
  %18 = call i32 @INSN_ADDRESSES(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @INSN_UID(i32 %19)
  %21 = call i32 @INSN_ADDRESSES(i32 %20)
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, -260000
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 260000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25, %15
  br label %30

30:                                               ; preds = %29, %12, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_ubranch.string, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %37

35:                                               ; preds = %30
  %36 = call i32 @strcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_ubranch.string, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  %38 = call i8* @strchr(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_ubranch.string, i64 0, i64 0), i8 signext 0)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 37, i8* %39, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  store i8 108, i8* %41, align 1
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 48, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  store i8 37, i8* %48, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 40, i8* %50, align 1
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_ubranch.string, i64 0, i64 0)
}

declare dso_local i64 @INSN_ADDRESSES_SET_P(...) #1

declare dso_local i32 @INSN_ADDRESSES(i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
