; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_include_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_include_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i32, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_header*, i8*)* @add_include_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_include_dir(%struct.line_header* %0, i8* %1) #0 {
  %3 = alloca %struct.line_header*, align 8
  %4 = alloca i8*, align 8
  store %struct.line_header* %0, %struct.line_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.line_header*, %struct.line_header** %3, align 8
  %6 = getelementptr inbounds %struct.line_header, %struct.line_header* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.line_header*, %struct.line_header** %3, align 8
  %11 = getelementptr inbounds %struct.line_header, %struct.line_header* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.line_header*, %struct.line_header** %3, align 8
  %13 = getelementptr inbounds %struct.line_header, %struct.line_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i8** @xmalloc(i32 %17)
  %19 = load %struct.line_header*, %struct.line_header** %3, align 8
  %20 = getelementptr inbounds %struct.line_header, %struct.line_header* %19, i32 0, i32 1
  store i8** %18, i8*** %20, align 8
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.line_header*, %struct.line_header** %3, align 8
  %23 = getelementptr inbounds %struct.line_header, %struct.line_header* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.line_header*, %struct.line_header** %3, align 8
  %26 = getelementptr inbounds %struct.line_header, %struct.line_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.line_header*, %struct.line_header** %3, align 8
  %31 = getelementptr inbounds %struct.line_header, %struct.line_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* %31, align 8
  %34 = load %struct.line_header*, %struct.line_header** %3, align 8
  %35 = getelementptr inbounds %struct.line_header, %struct.line_header* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load %struct.line_header*, %struct.line_header** %3, align 8
  %38 = getelementptr inbounds %struct.line_header, %struct.line_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i8** @xrealloc(i8** %36, i32 %42)
  %44 = load %struct.line_header*, %struct.line_header** %3, align 8
  %45 = getelementptr inbounds %struct.line_header, %struct.line_header* %44, i32 0, i32 1
  store i8** %43, i8*** %45, align 8
  br label %46

46:                                               ; preds = %29, %21
  br label %47

47:                                               ; preds = %46, %9
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.line_header*, %struct.line_header** %3, align 8
  %50 = getelementptr inbounds %struct.line_header, %struct.line_header* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.line_header*, %struct.line_header** %3, align 8
  %53 = getelementptr inbounds %struct.line_header, %struct.line_header* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %51, i64 %56
  store i8* %48, i8** %57, align 8
  ret void
}

declare dso_local i8** @xmalloc(i32) #1

declare dso_local i8** @xrealloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
