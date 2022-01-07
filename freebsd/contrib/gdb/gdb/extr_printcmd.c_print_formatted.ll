; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_formatted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_formatted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@lval_memory = common dso_local global i64 0, align 8
@next_address = common dso_local global i64 0, align 8
@next_section = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@TYPE_CODE_STRING = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@TYPE_CODE_NAMESPACE = common dso_local global i32 0, align 4
@Val_pretty_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.value*, i32, i32, %struct.ui_file*)* @print_formatted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_formatted(%struct.value* %0, i32 %1, i32 %2, %struct.ui_file* %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ui_file* %3, %struct.ui_file** %8, align 8
  %11 = load %struct.value*, %struct.value** %5, align 8
  %12 = call i32 @VALUE_TYPE(%struct.value* %11)
  %13 = call %struct.type* @check_typedef(i32 %12)
  store %struct.type* %13, %struct.type** %9, align 8
  %14 = load %struct.type*, %struct.type** %9, align 8
  %15 = call i32 @TYPE_LENGTH(%struct.type* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.value*, %struct.value** %5, align 8
  %17 = call i64 @VALUE_LVAL(%struct.value* %16)
  %18 = load i64, i64* @lval_memory, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.value*, %struct.value** %5, align 8
  %22 = call i64 @VALUE_ADDRESS(%struct.value* %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  store i64 %25, i64* @next_address, align 8
  %26 = load %struct.value*, %struct.value** %5, align 8
  %27 = call i32 @VALUE_BFD_SECTION(%struct.value* %26)
  store i32 %27, i32* @next_section, align 4
  br label %28

28:                                               ; preds = %20, %4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %51 [
    i32 115, label %30
    i32 105, label %40
  ]

30:                                               ; preds = %28
  %31 = load %struct.value*, %struct.value** %5, align 8
  %32 = call i64 @VALUE_ADDRESS(%struct.value* %31)
  %33 = load %struct.value*, %struct.value** %5, align 8
  %34 = call i64 @VALUE_ADDRESS(%struct.value* %33)
  %35 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %36 = call i64 @val_print_string(i64 %34, i32 -1, i32 1, %struct.ui_file* %35)
  %37 = add nsw i64 %32, %36
  store i64 %37, i64* @next_address, align 8
  %38 = load %struct.value*, %struct.value** %5, align 8
  %39 = call i32 @VALUE_BFD_SECTION(%struct.value* %38)
  store i32 %39, i32* @next_section, align 4
  br label %94

40:                                               ; preds = %28
  %41 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.value*, %struct.value** %5, align 8
  %43 = call i64 @VALUE_ADDRESS(%struct.value* %42)
  %44 = load %struct.value*, %struct.value** %5, align 8
  %45 = call i64 @VALUE_ADDRESS(%struct.value* %44)
  %46 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %47 = call i64 @gdb_print_insn(i64 %45, %struct.ui_file* %46)
  %48 = add nsw i64 %43, %47
  store i64 %48, i64* @next_address, align 8
  %49 = load %struct.value*, %struct.value** %5, align 8
  %50 = call i32 @VALUE_BFD_SECTION(%struct.value* %49)
  store i32 %50, i32* @next_section, align 4
  br label %94

51:                                               ; preds = %28
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %51
  %55 = load %struct.type*, %struct.type** %9, align 8
  %56 = call i32 @TYPE_CODE(%struct.type* %55)
  %57 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = load %struct.type*, %struct.type** %9, align 8
  %61 = call i32 @TYPE_CODE(%struct.type* %60)
  %62 = load i32, i32* @TYPE_CODE_STRING, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %9, align 8
  %66 = call i32 @TYPE_CODE(%struct.type* %65)
  %67 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.type*, %struct.type** %9, align 8
  %71 = call i32 @TYPE_CODE(%struct.type* %70)
  %72 = load i32, i32* @TYPE_CODE_UNION, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.type*, %struct.type** %9, align 8
  %76 = call i32 @TYPE_CODE(%struct.type* %75)
  %77 = load i32, i32* @TYPE_CODE_NAMESPACE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74, %69, %64, %59, %54, %51
  %80 = load %struct.value*, %struct.value** %5, align 8
  %81 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @Val_pretty_default, align 4
  %84 = call i32 @value_print(%struct.value* %80, %struct.ui_file* %81, i32 %82, i32 %83)
  br label %93

85:                                               ; preds = %74
  %86 = load %struct.value*, %struct.value** %5, align 8
  %87 = call i32 @VALUE_CONTENTS(%struct.value* %86)
  %88 = load %struct.type*, %struct.type** %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %92 = call i32 @print_scalar_formatted(i32 %87, %struct.type* %88, i32 %89, i32 %90, %struct.ui_file* %91)
  br label %93

93:                                               ; preds = %85, %79
  br label %94

94:                                               ; preds = %93, %40, %30
  ret void
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @VALUE_BFD_SECTION(%struct.value*) #1

declare dso_local i64 @val_print_string(i64, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i64 @gdb_print_insn(i64, %struct.ui_file*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @value_print(%struct.value*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @print_scalar_formatted(i32, %struct.type*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
