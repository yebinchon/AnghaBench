; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_control_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i387-tdep.c_print_i387_control_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Control Word:        %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"IM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"DM\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ZM\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OM\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"UM\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"                       PC: \00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Single Precision (24-bits)\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Reserved\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Double Precision (53-bits)\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Extended Precision (64-bits)\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"                       RC: \00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Round to nearest\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Round down\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Round up\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Round toward zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ui_file*)* @print_i387_control_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_i387_control_word(i32 %0, %struct.ui_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_file*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %5 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @local_hex_string_custom(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @fprintf_filtered(%struct.ui_file* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %10 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %9)
  %11 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @fprintf_filtered(%struct.ui_file* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @fprintf_filtered(%struct.ui_file* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @fprintf_filtered(%struct.ui_file* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 32
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @fprintf_filtered(%struct.ui_file* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %54 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %53)
  %55 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %56 = call i32 @fputs_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %55)
  %57 = load i32, i32* %3, align 4
  %58 = lshr i32 %57, 8
  %59 = and i32 %58, 3
  switch i32 %59, label %72 [
    i32 0, label %60
    i32 1, label %63
    i32 2, label %66
    i32 3, label %69
  ]

60:                                               ; preds = %2
  %61 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %62 = call i32 @fputs_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %61)
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %65 = call i32 @fputs_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %64)
  br label %72

66:                                               ; preds = %2
  %67 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %68 = call i32 @fputs_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %67)
  br label %72

69:                                               ; preds = %2
  %70 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %71 = call i32 @fputs_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %70)
  br label %72

72:                                               ; preds = %2, %69, %66, %63, %60
  %73 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %74 = call i32 @fputs_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %73)
  %75 = load i32, i32* %3, align 4
  %76 = lshr i32 %75, 10
  %77 = and i32 %76, 3
  switch i32 %77, label %90 [
    i32 0, label %78
    i32 1, label %81
    i32 2, label %84
    i32 3, label %87
  ]

78:                                               ; preds = %72
  %79 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %80 = call i32 @fputs_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %struct.ui_file* %79)
  br label %90

81:                                               ; preds = %72
  %82 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %83 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), %struct.ui_file* %82)
  br label %90

84:                                               ; preds = %72
  %85 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %86 = call i32 @fputs_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.ui_file* %85)
  br label %90

87:                                               ; preds = %72
  %88 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %89 = call i32 @fputs_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), %struct.ui_file* %88)
  br label %90

90:                                               ; preds = %72, %87, %84, %81, %78
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*) #1

declare dso_local i8* @local_hex_string_custom(i32, i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
