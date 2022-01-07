; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_EH_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_EH_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"DW_EH_PE_absptr\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_uleb128\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_udata2\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_udata4\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_udata8\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_sleb128\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_sdata2\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_sdata4\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"DW_EH_PE_sdata8\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DW_EH_PE_pcrel\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_textrel\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_datarel\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_funcrel\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"DW_EH_PE_aligned\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"DW_EH_PE_omit\00", align 1
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_EH_name(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = icmp ne i8** %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %41 [
    i32 142, label %11
    i32 128, label %13
    i32 131, label %15
    i32 130, label %17
    i32 129, label %19
    i32 133, label %21
    i32 136, label %23
    i32 135, label %25
    i32 134, label %27
    i32 137, label %29
    i32 132, label %31
    i32 140, label %33
    i32 139, label %35
    i32 141, label %37
    i32 138, label %39
  ]

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %43

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %43

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8
  br label %43

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  br label %43

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %26, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  br label %43

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %30, align 8
  br label %43

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %32, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %34, align 8
  br label %43

35:                                               ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %36, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** %38, align 8
  br label %43

39:                                               ; preds = %2
  %40 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %40, align 8
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %44 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
