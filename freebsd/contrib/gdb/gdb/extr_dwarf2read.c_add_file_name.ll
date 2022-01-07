; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_file_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i32, i32, %struct.file_entry* }
%struct.file_entry = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_header*, i8*, i32, i32, i32)* @add_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_file_name(%struct.line_header* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.line_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_entry*, align 8
  store %struct.line_header* %0, %struct.line_header** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.line_header*, %struct.line_header** %6, align 8
  %13 = getelementptr inbounds %struct.line_header, %struct.line_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load %struct.line_header*, %struct.line_header** %6, align 8
  %18 = getelementptr inbounds %struct.line_header, %struct.line_header* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.line_header*, %struct.line_header** %6, align 8
  %20 = getelementptr inbounds %struct.line_header, %struct.line_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 24
  %24 = trunc i64 %23 to i32
  %25 = call %struct.file_entry* @xmalloc(i32 %24)
  %26 = load %struct.line_header*, %struct.line_header** %6, align 8
  %27 = getelementptr inbounds %struct.line_header, %struct.line_header* %26, i32 0, i32 2
  store %struct.file_entry* %25, %struct.file_entry** %27, align 8
  br label %54

28:                                               ; preds = %5
  %29 = load %struct.line_header*, %struct.line_header** %6, align 8
  %30 = getelementptr inbounds %struct.line_header, %struct.line_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.line_header*, %struct.line_header** %6, align 8
  %33 = getelementptr inbounds %struct.line_header, %struct.line_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load %struct.line_header*, %struct.line_header** %6, align 8
  %38 = getelementptr inbounds %struct.line_header, %struct.line_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %38, align 8
  %41 = load %struct.line_header*, %struct.line_header** %6, align 8
  %42 = getelementptr inbounds %struct.line_header, %struct.line_header* %41, i32 0, i32 2
  %43 = load %struct.file_entry*, %struct.file_entry** %42, align 8
  %44 = load %struct.line_header*, %struct.line_header** %6, align 8
  %45 = getelementptr inbounds %struct.line_header, %struct.line_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 24
  %49 = trunc i64 %48 to i32
  %50 = call %struct.file_entry* @xrealloc(%struct.file_entry* %43, i32 %49)
  %51 = load %struct.line_header*, %struct.line_header** %6, align 8
  %52 = getelementptr inbounds %struct.line_header, %struct.line_header* %51, i32 0, i32 2
  store %struct.file_entry* %50, %struct.file_entry** %52, align 8
  br label %53

53:                                               ; preds = %36, %28
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.line_header*, %struct.line_header** %6, align 8
  %56 = getelementptr inbounds %struct.line_header, %struct.line_header* %55, i32 0, i32 2
  %57 = load %struct.file_entry*, %struct.file_entry** %56, align 8
  %58 = load %struct.line_header*, %struct.line_header** %6, align 8
  %59 = getelementptr inbounds %struct.line_header, %struct.line_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %57, i64 %62
  store %struct.file_entry* %63, %struct.file_entry** %11, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %66 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %69 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %72 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %75 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  ret void
}

declare dso_local %struct.file_entry* @xmalloc(i32) #1

declare dso_local %struct.file_entry* @xrealloc(%struct.file_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
