; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_getprop_by_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_getprop_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_getprop_by_offset(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = call %struct.fdt_property* @fdt_get_property_by_offset(i8* %11, i32 %12, i32* %13)
  store %struct.fdt_property* %14, %struct.fdt_property** %10, align 8
  %15 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %16 = icmp ne %struct.fdt_property* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %33

18:                                               ; preds = %4
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %24 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fdt32_to_cpu(i32 %25)
  %27 = call i8* @fdt_string(i8* %22, i32 %26)
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %21, %18
  %30 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %31 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset(i8*, i32, i32*) #1

declare dso_local i8* @fdt_string(i8*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
