; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_has_vtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_has_vtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_vtable(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call i64 @TYPE_CODE(%struct.type* %5)
  %7 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_N_BASECLASSES(%struct.type* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i64 @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @B_TST(i64 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %83

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %15

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %10
  %33 = load %struct.type*, %struct.type** %3, align 8
  %34 = call i64 @TYPE_FN_FIELDLISTS(%struct.type* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.type*, %struct.type** %3, align 8
  %40 = call i32 @TYPE_NFN_FIELDS(%struct.type* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.type*, %struct.type** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TYPE_FN_FIELDLIST1(%struct.type* %43, i32 %44)
  %46 = call i64 @TYPE_FN_FIELD_VIRTUAL_P(i32 %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %83

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %37

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.type*, %struct.type** %3, align 8
  %56 = call i64 @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.type*, %struct.type** %3, align 8
  %62 = call i32 @TYPE_N_BASECLASSES(%struct.type* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.type*, %struct.type** %3, align 8
  %66 = call i64 @TYPE_FIELD_VIRTUAL_BITS(%struct.type* %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @B_TST(i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.type*, %struct.type** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %71, i32 %72)
  %74 = call i32 @has_vtable(%struct.type* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %83

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %54
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %76, %48, %26, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_VIRTUAL_BITS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @B_TST(i64, i32) #1

declare dso_local i64 @TYPE_FN_FIELDLISTS(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FN_FIELD_VIRTUAL_P(i32, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
