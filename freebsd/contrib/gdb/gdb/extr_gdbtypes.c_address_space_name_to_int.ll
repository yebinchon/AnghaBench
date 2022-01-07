; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_address_space_name_to_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_address_space_name_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@TYPE_FLAG_CODE_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@TYPE_FLAG_DATA_SPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unknown address space specifier: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @address_space_name_to_int(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  store %struct.gdbarch* %6, %struct.gdbarch** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TYPE_FLAG_CODE_SPACE, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @TYPE_FLAG_DATA_SPACE, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = call i64 @gdbarch_address_class_name_to_type_flags_p(%struct.gdbarch* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @gdbarch_address_class_name_to_type_flags(%struct.gdbarch* %23, i8* %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %22, %18
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %10, %16, %27, %33
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @gdbarch_address_class_name_to_type_flags_p(%struct.gdbarch*) #1

declare dso_local i64 @gdbarch_address_class_name_to_type_flags(%struct.gdbarch*, i8*, i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
