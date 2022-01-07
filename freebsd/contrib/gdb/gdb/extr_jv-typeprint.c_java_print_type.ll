; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @java_print_type(%struct.type* %0, i8* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ui_file* %2, %struct.ui_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.type*, %struct.type** %6, align 8
  %13 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @java_type_print_base(%struct.type* %12, %struct.ui_file* %13, i32 %14, i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %26 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %29 = call i32 @fputs_filtered(i8* %27, %struct.ui_file* %28)
  br label %30

30:                                               ; preds = %24, %19, %5
  %31 = load i8*, i8** %7, align 8
  %32 = call i32* @strchr(i8* %31, i8 signext 40)
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.type*, %struct.type** %6, align 8
  %36 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @c_type_print_varspec_suffix(%struct.type* %35, %struct.ui_file* %36, i32 %37, i32 0, i32 %38)
  ret void
}

declare dso_local i32 @java_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @c_type_print_varspec_suffix(%struct.type*, %struct.ui_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
