; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_list_properties.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_fdtget.c_list_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @list_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_properties(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fdt_property*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fdt_first_property_offset(i8* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %12
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.fdt_property* @fdt_get_property_by_offset(i8* %26, i32 %27, i32* null)
  store %struct.fdt_property* %28, %struct.fdt_property** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.fdt_property*, %struct.fdt_property** %6, align 8
  %31 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fdt32_to_cpu(i32 %32)
  %34 = call i8* @fdt_string(i8* %29, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @puts(i8* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @fdt_next_property_offset(i8* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40
  br i1 true, label %12, label %45

45:                                               ; preds = %23, %44
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fdt_first_property_offset(i8*, i32) #1

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset(i8*, i32, i32*) #1

declare dso_local i8* @fdt_string(i8*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fdt_next_property_offset(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
