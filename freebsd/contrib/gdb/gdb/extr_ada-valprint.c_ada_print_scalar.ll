; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_print_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_print_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"internal error: unhandled type in ada_print_scalar\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid type code in symbol table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ada_print_scalar(%struct.type* %0, i64 %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %9 = load %struct.type*, %struct.type** %4, align 8
  %10 = call i32 @CHECK_TYPEDEF(%struct.type* %9)
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i32 @TYPE_CODE(%struct.type* %11)
  switch i32 %12, label %76 [
    i32 143, label %13
    i32 139, label %47
    i32 144, label %57
    i32 145, label %62
    i32 135, label %69
    i32 130, label %74
    i32 136, label %74
    i32 146, label %74
    i32 131, label %74
    i32 129, label %74
    i32 140, label %74
    i32 141, label %74
    i32 128, label %74
    i32 133, label %74
    i32 132, label %74
    i32 142, label %74
    i32 138, label %74
    i32 137, label %74
    i32 134, label %74
  ]

13:                                               ; preds = %3
  %14 = load %struct.type*, %struct.type** %4, align 8
  %15 = call i32 @TYPE_NFIELDS(%struct.type* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %21, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %16

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TYPE_FIELD_NAME(%struct.type* %36, i32 %37)
  %39 = call i32 @ada_enum_name(i32 %38)
  %40 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %41 = call i32 @fputs_filtered(i32 %39, %struct.ui_file* %40)
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @print_longest(%struct.ui_file* %43, i8 zeroext 100, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %42, %35
  br label %78

47:                                               ; preds = %3
  %48 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %49 = load %struct.type*, %struct.type** %4, align 8
  %50 = call i32 @TYPE_UNSIGNED(%struct.type* %49)
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 117, i32 100
  %54 = trunc i32 %53 to i8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @print_longest(%struct.ui_file* %48, i8 zeroext %54, i32 0, i64 %55)
  br label %78

57:                                               ; preds = %3
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i8
  %60 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %61 = call i32 @LA_PRINT_CHAR(i8 zeroext %59, %struct.ui_file* %60)
  br label %78

62:                                               ; preds = %3
  %63 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %68 = call i32 @fprintf_filtered(%struct.ui_file* %63, i8* %67)
  br label %78

69:                                               ; preds = %3
  %70 = load %struct.type*, %struct.type** %4, align 8
  %71 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %70)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @ada_print_scalar(%struct.type* %71, i64 %72, %struct.ui_file* %73)
  br label %81

74:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %75 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %78

76:                                               ; preds = %3
  %77 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %74, %62, %57, %47, %46
  %79 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %80 = call i32 @gdb_flush(%struct.ui_file* %79)
  br label %81

81:                                               ; preds = %78, %69
  ret void
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @ada_enum_name(i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 zeroext, i32, i64) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @LA_PRINT_CHAR(i8 zeroext, %struct.ui_file*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
