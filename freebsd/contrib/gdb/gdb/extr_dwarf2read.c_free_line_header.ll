; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_free_line_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_free_line_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { %struct.line_header*, %struct.line_header*, %struct.line_header* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_header*)* @free_line_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_line_header(%struct.line_header* %0) #0 {
  %2 = alloca %struct.line_header*, align 8
  store %struct.line_header* %0, %struct.line_header** %2, align 8
  %3 = load %struct.line_header*, %struct.line_header** %2, align 8
  %4 = getelementptr inbounds %struct.line_header, %struct.line_header* %3, i32 0, i32 2
  %5 = load %struct.line_header*, %struct.line_header** %4, align 8
  %6 = icmp ne %struct.line_header* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.line_header*, %struct.line_header** %2, align 8
  %9 = getelementptr inbounds %struct.line_header, %struct.line_header* %8, i32 0, i32 2
  %10 = load %struct.line_header*, %struct.line_header** %9, align 8
  %11 = call i32 @xfree(%struct.line_header* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.line_header*, %struct.line_header** %2, align 8
  %14 = getelementptr inbounds %struct.line_header, %struct.line_header* %13, i32 0, i32 1
  %15 = load %struct.line_header*, %struct.line_header** %14, align 8
  %16 = icmp ne %struct.line_header* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.line_header*, %struct.line_header** %2, align 8
  %19 = getelementptr inbounds %struct.line_header, %struct.line_header* %18, i32 0, i32 1
  %20 = load %struct.line_header*, %struct.line_header** %19, align 8
  %21 = call i32 @xfree(%struct.line_header* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.line_header*, %struct.line_header** %2, align 8
  %24 = getelementptr inbounds %struct.line_header, %struct.line_header* %23, i32 0, i32 0
  %25 = load %struct.line_header*, %struct.line_header** %24, align 8
  %26 = icmp ne %struct.line_header* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.line_header*, %struct.line_header** %2, align 8
  %29 = getelementptr inbounds %struct.line_header, %struct.line_header* %28, i32 0, i32 0
  %30 = load %struct.line_header*, %struct.line_header** %29, align 8
  %31 = call i32 @xfree(%struct.line_header* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.line_header*, %struct.line_header** %2, align 8
  %34 = call i32 @xfree(%struct.line_header* %33)
  ret void
}

declare dso_local i32 @xfree(%struct.line_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
