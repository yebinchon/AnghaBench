; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_compare_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_compare_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dis_line_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_lines(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dis_line_entry*, align 8
  %7 = alloca %struct.dis_line_entry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dis_line_entry*
  store %struct.dis_line_entry* %10, %struct.dis_line_entry** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dis_line_entry*
  store %struct.dis_line_entry* %12, %struct.dis_line_entry** %7, align 8
  %13 = load %struct.dis_line_entry*, %struct.dis_line_entry** %6, align 8
  %14 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dis_line_entry*, %struct.dis_line_entry** %7, align 8
  %17 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.dis_line_entry*, %struct.dis_line_entry** %6, align 8
  %26 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dis_line_entry*, %struct.dis_line_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
