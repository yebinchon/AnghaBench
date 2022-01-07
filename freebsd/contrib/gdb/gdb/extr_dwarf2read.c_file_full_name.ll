; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_file_full_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_file_full_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i8**, %struct.file_entry* }
%struct.file_entry = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct.line_header*, i8*)* @file_full_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @file_full_name(i32 %0, %struct.line_header* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.line_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.line_header* %1, %struct.line_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.line_header*, %struct.line_header** %6, align 8
  %13 = getelementptr inbounds %struct.line_header, %struct.line_header* %12, i32 0, i32 1
  %14 = load %struct.file_entry*, %struct.file_entry** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %14, i64 %17
  store %struct.file_entry* %18, %struct.file_entry** %8, align 8
  %19 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %20 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @IS_ABSOLUTE_PATH(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %26 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @xstrdup(i8* %27)
  store i8* %28, i8** %4, align 8
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %31 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.line_header*, %struct.line_header** %6, align 8
  %36 = getelementptr inbounds %struct.line_header, %struct.line_header* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %39 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %47

45:                                               ; preds = %29
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %56 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = add nsw i32 %54, %58
  %60 = add nsw i32 %59, 1
  %61 = call i8* @xmalloc(i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strcpy(i8* %62, i8* %63)
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 47, i8* %68, align 1
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %75 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcpy(i8* %73, i8* %76)
  %78 = load i8*, i8** %11, align 8
  store i8* %78, i8** %4, align 8
  br label %84

79:                                               ; preds = %47
  %80 = load %struct.file_entry*, %struct.file_entry** %8, align 8
  %81 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @xstrdup(i8* %82)
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %79, %50, %24
  %85 = load i8*, i8** %4, align 8
  ret i8* %85
}

declare dso_local i64 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
