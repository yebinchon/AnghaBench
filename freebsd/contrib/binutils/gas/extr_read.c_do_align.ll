; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ignoring fill value in absolute section\00", align 1
@need_pass_2 = common dso_local global i32 0, align 4
@OCTETS_PER_BYTE_POWER = common dso_local global i64 0, align 8
@just_record_alignment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @do_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_align(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @now_seg, align 8
  %10 = load i64, i64* @absolute_section, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @as_warn(i32 %27)
  br label %30

29:                                               ; preds = %20
  br label %16

30:                                               ; preds = %26, %16
  br label %31

31:                                               ; preds = %30, %12
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load i32, i32* @need_pass_2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i64, i64* @now_seg, align 8
  %43 = call i64 @subseg_text_p(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @frag_align_code(i32 %46, i32 %47)
  br label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @frag_align(i32 %50, i8 signext 0, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %70

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @frag_align(i32 %58, i8 signext %60, i32 %61)
  br label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @frag_align_pattern(i32 %64, i8* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %35, %32
  %72 = load i64, i64* @now_seg, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @OCTETS_PER_BYTE_POWER, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i32 (i64, i64, ...) bitcast (i32 (...)* @record_alignment to i32 (i64, i64, ...)*)(i64 %72, i64 %76)
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @subseg_text_p(i64) #1

declare dso_local i32 @frag_align_code(i32, i32) #1

declare dso_local i32 @frag_align(i32, i8 signext, i32) #1

declare dso_local i32 @frag_align_pattern(i32, i8*, i32, i32) #1

declare dso_local i32 @record_alignment(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
