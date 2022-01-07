; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_regoff_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_regoff_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }

@get_regoff_str.rs = internal global [16 x i8] zeroinitializer, align 16
@DW_FRAME_UNDEFINED_VAL = common dso_local global i64 0, align 8
@DW_FRAME_REG_INITIAL_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@DW_FRAME_CFA_COL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"c%+jd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%+jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.readelf*, i64, i64)* @get_regoff_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_regoff_str(%struct.readelf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @DW_FRAME_UNDEFINED_VAL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @DW_FRAME_REG_INITIAL_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %3
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_regoff_str.rs, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 117)
  br label %32

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @DW_FRAME_CFA_COL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_regoff_str.rs, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.readelf*, %struct.readelf** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i8* @dwarf_regname(%struct.readelf* %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_regoff_str.rs, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %31, %14
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @get_regoff_str.rs, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dwarf_regname(%struct.readelf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
