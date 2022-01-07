; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_describe_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2loc.c_locexpr_describe_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.ui_file = type { i32 }
%struct.dwarf2_locexpr_baton = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DW_OP_reg0 = common dso_local global i64 0, align 8
@DW_OP_reg31 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"a variable in register %s\00", align 1
@DW_OP_GNU_push_tls_address = common dso_local global i64 0, align 8
@DW_OP_addr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"a thread-local variable at offset %s in the thread-local storage for `%s'\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"a variable with complex or multiple locations (DWARF2)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.ui_file*)* @locexpr_describe_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locexpr_describe_location(%struct.symbol* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca %struct.dwarf2_locexpr_baton*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  %10 = load %struct.symbol*, %struct.symbol** %4, align 8
  %11 = call %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol* %10)
  store %struct.dwarf2_locexpr_baton* %11, %struct.dwarf2_locexpr_baton** %6, align 8
  %12 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %13 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %18 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DW_OP_reg0, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %26 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DW_OP_reg31, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %34 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DW_OP_reg0, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @DWARF2_REG_TO_REGNUM(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @REGISTER_NAME(i32 %42)
  %44 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 1, i32* %3, align 4
  br label %99

45:                                               ; preds = %24, %16, %2
  %46 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %47 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %52 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %55 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %53, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DW_OP_GNU_push_tls_address, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %50
  %64 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %65 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DW_OP_addr, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %73 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %77 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %80 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  %85 = call i32 @dwarf2_read_address(i64* %75, i64* %84, i32* %8)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @paddr_nz(i32 %87)
  %89 = load %struct.dwarf2_locexpr_baton*, %struct.dwarf2_locexpr_baton** %6, align 8
  %90 = getelementptr inbounds %struct.dwarf2_locexpr_baton, %struct.dwarf2_locexpr_baton* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %86, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %93)
  store i32 1, i32* %3, align 4
  br label %99

95:                                               ; preds = %63
  br label %96

96:                                               ; preds = %95, %50, %45
  %97 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %98 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %71, %32
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.dwarf2_locexpr_baton* @SYMBOL_LOCATION_BATON(%struct.symbol*) #1

declare dso_local i32 @DWARF2_REG_TO_REGNUM(i64) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @REGISTER_NAME(i32) #1

declare dso_local i32 @dwarf2_read_address(i64*, i64*, i32*) #1

declare dso_local i32 @paddr_nz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
