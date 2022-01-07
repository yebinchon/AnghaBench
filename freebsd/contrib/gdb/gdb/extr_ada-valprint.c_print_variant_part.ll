; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_print_variant_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_print_variant_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i32, i8*, %struct.ui_file*, i32, i32, i32, i32, %struct.type*, i8*)* @print_variant_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_variant_part(%struct.type* %0, i32 %1, i8* %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.type* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ui_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.type*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.type*, align 8
  %23 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store %struct.ui_file* %3, %struct.ui_file** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.type* %8, %struct.type** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load %struct.type*, %struct.type** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %24, i32 %25)
  store %struct.type* %26, %struct.type** %22, align 8
  %27 = load %struct.type*, %struct.type** %22, align 8
  %28 = load %struct.type*, %struct.type** %20, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = call i32 @ada_which_variant_applies(%struct.type* %27, %struct.type* %28, i8* %29)
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %61

34:                                               ; preds = %10
  %35 = load %struct.type*, %struct.type** %22, align 8
  %36 = load i32, i32* %23, align 4
  %37 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %35, i32 %36)
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.type*, %struct.type** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %39, i32 %40)
  %42 = load i32, i32* @HOST_CHAR_BIT, align 4
  %43 = sdiv i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  %46 = load %struct.type*, %struct.type** %22, align 8
  %47 = load i32, i32* %23, align 4
  %48 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %46, i32 %47)
  %49 = load i32, i32* @HOST_CHAR_BIT, align 4
  %50 = sdiv i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  %53 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.type*, %struct.type** %20, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = call i32 @print_field_values(%struct.type* %37, i8* %52, %struct.ui_file* %53, i32 %54, i32 %55, i32 %56, i32 %57, %struct.type* %58, i8* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %34, %33
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @ada_which_variant_applies(%struct.type*, %struct.type*, i8*) #1

declare dso_local i32 @print_field_values(%struct.type*, i8*, %struct.ui_file*, i32, i32, i32, i32, %struct.type*, i8*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
