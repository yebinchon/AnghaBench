; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_begin_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_begin_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_node_header = type { i32, i32 }

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_BEGIN_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_begin_node(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fdt_node_header*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @FDT_SW_CHECK_HEADER(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @FDT_TAGALIGN(i32 %14)
  %16 = add i64 8, %15
  %17 = call %struct.fdt_node_header* @_fdt_grab_space(i8* %13, i64 %16)
  store %struct.fdt_node_header* %17, %struct.fdt_node_header** %6, align 8
  %18 = load %struct.fdt_node_header*, %struct.fdt_node_header** %6, align 8
  %19 = icmp ne %struct.fdt_node_header* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* @FDT_BEGIN_NODE, align 4
  %25 = call i32 @cpu_to_fdt32(i32 %24)
  %26 = load %struct.fdt_node_header*, %struct.fdt_node_header** %6, align 8
  %27 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fdt_node_header*, %struct.fdt_node_header** %6, align 8
  %29 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32 %30, i8* %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FDT_SW_CHECK_HEADER(i8*) #1

declare dso_local %struct.fdt_node_header* @_fdt_grab_space(i8*, i64) #1

declare dso_local i64 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
