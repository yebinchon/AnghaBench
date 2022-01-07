; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_frob_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_frob_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_label_seen = common dso_local global i32* null, align 8
@thumb_mode = common dso_local global i32 0, align 4
@label_is_thumb_function_name = common dso_local global i64 0, align 8
@stdoutput = common dso_local global i32 0, align 4
@now_seg = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@support_interwork = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_frob_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** @last_label_seen, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @thumb_mode, align 4
  %6 = call i32 @ARM_SET_THUMB(i32* %4, i32 %5)
  %7 = load i64, i64* @label_is_thumb_function_name, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @S_GET_NAME(i32* %10)
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 46
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load i32*, i32** %2, align 8
  %18 = call i8* @S_GET_NAME(i32* %17)
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 76
  br i1 %22, label %23, label %34

23:                                               ; preds = %16, %9
  %24 = load i32, i32* @stdoutput, align 4
  %25 = load i32, i32* @now_seg, align 4
  %26 = call i32 @bfd_get_section_flags(i32 %24, i32 %25)
  %27 = load i32, i32* @SEC_CODE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @THUMB_SET_FUNC(i32* %31, i32 1)
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* @label_is_thumb_function_name, align 8
  br label %34

34:                                               ; preds = %30, %23, %16, %1
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @dwarf2_emit_label(i32* %35)
  ret void
}

declare dso_local i32 @ARM_SET_THUMB(i32*, i32) #1

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32, i32) #1

declare dso_local i32 @THUMB_SET_FUNC(i32*, i32) #1

declare dso_local i32 @dwarf2_emit_label(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
