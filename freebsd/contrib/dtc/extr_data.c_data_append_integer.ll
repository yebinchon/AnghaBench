; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_append_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_append_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid literal size (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_append_integer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.data, align 4
  %5 = alloca %struct.data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %41 [
    i32 8, label %14
    i32 16, label %20
    i32 32, label %27
    i32 64, label %34
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @data_append_data(i32 %17, i32* %8, i32 1)
  %19 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cpu_to_fdt16(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @data_append_data(i32 %24, i32* %9, i32 2)
  %26 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %44

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cpu_to_fdt32(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @data_append_data(i32 %31, i32* %10, i32 4)
  %33 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %44

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cpu_to_fdt64(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = getelementptr inbounds %struct.data, %struct.data* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @data_append_data(i32 %38, i32* %11, i32 8)
  %40 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %14, %20, %27, %34, %41
  %45 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @data_append_data(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_fdt16(i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @cpu_to_fdt64(i32) #1

declare dso_local i32 @die(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
