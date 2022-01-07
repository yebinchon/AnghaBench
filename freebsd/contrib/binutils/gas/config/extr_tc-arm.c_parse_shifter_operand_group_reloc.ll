; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shifter_operand_group_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_shifter_operand_group_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.group_reloc_table_entry = type { i64 }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unknown group relocation\00", align 1
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PARSE_OPERAND_FAIL_NO_BACKTRACK = common dso_local global i32 0, align 4
@GE_NO_PREFIX = common dso_local global i32 0, align 4
@PARSE_OPERAND_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@PARSE_OPERAND_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @parse_shifter_operand_group_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_shifter_operand_group_reloc(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.group_reloc_table_entry*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %27, label %20

20:                                               ; preds = %13, %2
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 58
  br i1 %26, label %27, label %66

27:                                               ; preds = %20, %13
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %35, align 8
  br label %42

38:                                               ; preds = %27
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i8**, i8*** %4, align 8
  %44 = call i64 @find_group_reloc_table_entry(i8** %43, %struct.group_reloc_table_entry** %6)
  %45 = load i64, i64* @FAIL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %49 = load i32, i32* @PARSE_OPERAND_FAIL_NO_BACKTRACK, align 4
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %42
  %51 = load i8**, i8*** %4, align 8
  %52 = load i32, i32* @GE_NO_PREFIX, align 4
  %53 = call i64 @my_get_expression(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0, i32 1), i8** %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @PARSE_OPERAND_FAIL_NO_BACKTRACK, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %50
  %58 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** %6, align 8
  %59 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0, i32 0), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* @PARSE_OPERAND_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %78

66:                                               ; preds = %20
  %67 = load i8**, i8*** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @parse_shifter_operand(i8** %67, i32 %68)
  %70 = load i64, i64* @SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @PARSE_OPERAND_SUCCESS, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @PARSE_OPERAND_FAIL, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %57, %55, %47
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @find_group_reloc_table_entry(i8**, %struct.group_reloc_table_entry**) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @my_get_expression(i32*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @parse_shifter_operand(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
