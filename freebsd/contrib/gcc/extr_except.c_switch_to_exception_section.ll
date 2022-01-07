; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_switch_to_exception_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_switch_to_exception_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@exception_section = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EH_TABLES_CAN_BE_READ_ONLY = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@DW_EH_PE_aligned = common dso_local global i32 0, align 4
@SECTION_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c".gcc_except_table\00", align 1
@data_section = common dso_local global i64 0, align 8
@readonly_data_section = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @switch_to_exception_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_exception_section() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @exception_section, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %45

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %5
  %9 = load i64, i64* @EH_TABLES_CAN_BE_READ_ONLY, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = call i32 @ASM_PREFERRED_EH_DATA_FORMAT(i32 0, i32 1)
  store i32 %12, i32* %2, align 4
  %13 = load i64, i64* @flag_pic, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 112
  %18 = load i32, i32* @DW_EH_PE_absptr, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 112
  %23 = load i32, i32* @DW_EH_PE_aligned, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %11
  br label %28

26:                                               ; preds = %20, %15
  %27 = load i32, i32* @SECTION_WRITE, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %1, align 4
  br label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @SECTION_WRITE, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @get_section(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32* null)
  store i64 %34, i64* @exception_section, align 8
  br label %44

35:                                               ; preds = %5
  %36 = load i64, i64* @flag_pic, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* @data_section, align 8
  br label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @readonly_data_section, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* @exception_section, align 8
  br label %44

44:                                               ; preds = %42, %32
  br label %45

45:                                               ; preds = %44, %0
  %46 = load i64, i64* @exception_section, align 8
  %47 = call i32 @switch_to_section(i64 %46)
  ret void
}

declare dso_local i32 @ASM_PREFERRED_EH_DATA_FORMAT(i32, i32) #1

declare dso_local i64 @get_section(i8*, i32, i32*) #1

declare dso_local i32 @switch_to_section(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
