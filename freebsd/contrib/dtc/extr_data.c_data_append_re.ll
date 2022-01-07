; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_append_re.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_data.c_data_append_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_reserve_entry = type { i8*, i8* }
%struct.data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_append_re(i32 %0, %struct.fdt_reserve_entry* %1) #0 {
  %3 = alloca %struct.data, align 4
  %4 = alloca %struct.data, align 4
  %5 = alloca %struct.fdt_reserve_entry*, align 8
  %6 = alloca %struct.fdt_reserve_entry, align 8
  %7 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store %struct.fdt_reserve_entry* %1, %struct.fdt_reserve_entry** %5, align 8
  %8 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %5, align 8
  %9 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @cpu_to_fdt64(i8* %10)
  %12 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load %struct.fdt_reserve_entry*, %struct.fdt_reserve_entry** %5, align 8
  %14 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @cpu_to_fdt64(i8* %15)
  %17 = getelementptr inbounds %struct.fdt_reserve_entry, %struct.fdt_reserve_entry* %6, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.data, %struct.data* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @data_append_data(i32 %19, %struct.fdt_reserve_entry* %6, i32 16)
  %21 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i8* @cpu_to_fdt64(i8*) #1

declare dso_local i32 @data_append_data(i32, %struct.fdt_reserve_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
