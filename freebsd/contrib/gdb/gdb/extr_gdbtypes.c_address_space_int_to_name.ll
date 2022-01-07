; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_address_space_int_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_address_space_int_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@TYPE_FLAG_CODE_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@TYPE_FLAG_DATA_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@TYPE_FLAG_ADDRESS_CLASS_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @address_space_int_to_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdbarch*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  store %struct.gdbarch* %5, %struct.gdbarch** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TYPE_FLAG_CODE_SPACE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TYPE_FLAG_DATA_SPACE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %31

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TYPE_FLAG_ADDRESS_CLASS_ALL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %24 = call i64 @gdbarch_address_class_type_flags_to_name_p(%struct.gdbarch* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @gdbarch_address_class_type_flags_to_name(%struct.gdbarch* %27, i32 %28)
  store i8* %29, i8** %2, align 8
  br label %31

30:                                               ; preds = %22, %17
  store i8* null, i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %26, %16, %10
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i64 @gdbarch_address_class_type_flags_to_name_p(%struct.gdbarch*) #1

declare dso_local i8* @gdbarch_address_class_type_flags_to_name(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
