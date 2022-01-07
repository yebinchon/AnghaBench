; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c__fdt_add_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_rw.c__fdt_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i8*, i8* }

@FDT_PROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, %struct.fdt_property**)* @_fdt_add_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fdt_add_property(i8* %0, i32 %1, i8* %2, i32 %3, %struct.fdt_property** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdt_property**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fdt_property** %4, %struct.fdt_property*** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @_fdt_check_node_offset(i8* %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %65

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @_fdt_find_add_string(i8* %23, i8* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %65

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call %struct.fdt_property* @_fdt_offset_ptr_w(i8* %31, i32 %32)
  %34 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  store %struct.fdt_property* %33, %struct.fdt_property** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @FDT_TAGALIGN(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = add i64 24, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %42 = load %struct.fdt_property*, %struct.fdt_property** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @_fdt_splice_struct(i8* %40, %struct.fdt_property* %42, i32 0, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %6, align 4
  br label %65

49:                                               ; preds = %30
  %50 = load i32, i32* @FDT_PROP, align 4
  %51 = call i8* @cpu_to_fdt32(i32 %50)
  %52 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %53 = load %struct.fdt_property*, %struct.fdt_property** %52, align 8
  %54 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i8* @cpu_to_fdt32(i32 %55)
  %57 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %58 = load %struct.fdt_property*, %struct.fdt_property** %57, align 8
  %59 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @cpu_to_fdt32(i32 %60)
  %62 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %63 = load %struct.fdt_property*, %struct.fdt_property** %62, align 8
  %64 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %49, %47, %28, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @_fdt_check_node_offset(i8*, i32) #1

declare dso_local i32 @_fdt_find_add_string(i8*, i8*) #1

declare dso_local %struct.fdt_property* @_fdt_offset_ptr_w(i8*, i32) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @_fdt_splice_struct(i8*, %struct.fdt_property*, i32, i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
