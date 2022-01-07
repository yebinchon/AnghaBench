; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_set_disassembly_style.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_set_disassembly_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disassembly_style = common dso_local global i8* null, align 8
@num_disassembly_options = common dso_local global i32 0, align 4
@current_option = common dso_local global i32 0, align 4
@arm_register_names = common dso_local global i8** null, align 8
@ARM_PC_REGNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"FPS\00", align 1
@ARM_FPS_REGNUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"CPSR\00", align 1
@ARM_PS_REGNUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpsr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_disassembly_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_disassembly_style() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @get_arm_regnames(i32 %7, i8** %1, i8** %2, i8*** %3)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i8*, i8** @disassembly_style, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @num_disassembly_options, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = call i32 @get_arm_regnames(i32 %21, i8** %1, i8** %2, i8*** %3)
  br label %9

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* @current_option, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %39, %23
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i8**, i8*** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** @arm_register_names, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %25

42:                                               ; preds = %25
  %43 = load i8**, i8*** %3, align 8
  %44 = load i64, i64* @ARM_PC_REGNUM, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isupper(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i8**, i8*** @arm_register_names, align 8
  %52 = load i64, i64* @ARM_FPS_REGNUM, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = load i8**, i8*** @arm_register_names, align 8
  %55 = load i64, i64* @ARM_PS_REGNUM, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  br label %64

57:                                               ; preds = %42
  %58 = load i8**, i8*** @arm_register_names, align 8
  %59 = load i64, i64* @ARM_FPS_REGNUM, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %60, align 8
  %61 = load i8**, i8*** @arm_register_names, align 8
  %62 = load i64, i64* @ARM_PS_REGNUM, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @set_arm_regname_option(i32 %65)
  ret void
}

declare dso_local i32 @get_arm_regnames(i32, i8**, i8**, i8***) #1

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i32 @set_arm_regname_option(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
