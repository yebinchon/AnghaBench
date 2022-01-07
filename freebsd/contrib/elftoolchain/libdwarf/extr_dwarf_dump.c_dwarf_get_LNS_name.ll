; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_LNS_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_dump.c_dwarf_get_LNS_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"DW_LNS_copy\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"DW_LNS_advance_pc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"DW_LNS_advance_line\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DW_LNS_set_file\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"DW_LNS_set_column\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DW_LNS_negate_stmt\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"DW_LNS_set_basic_block\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"DW_LNS_const_add_pc\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"DW_LNS_fixed_advance_pc\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"DW_LNS_set_prologue_end\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"DW_LNS_set_epilogue_begin\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"DW_LNS_set_isa\00", align 1
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_LNS_name(i32 %0, i8** %1) #0 {
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
  switch i32 %10, label %35 [
    i32 136, label %11
    i32 138, label %13
    i32 139, label %15
    i32 130, label %17
    i32 132, label %19
    i32 134, label %21
    i32 133, label %23
    i32 137, label %25
    i32 135, label %27
    i32 128, label %29
    i32 131, label %31
    i32 129, label %33
  ]

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %37

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %37

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8
  br label %37

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  br label %37

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %26, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %30, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %32, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8** %34, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %38 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
