; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i32, i8*, i32, i32 }
%struct.macro_name_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macro_buffer*, %struct.macro_buffer*, %struct.macro_name_list*, i32*, i8*)* @scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan(%struct.macro_buffer* %0, %struct.macro_buffer* %1, %struct.macro_name_list* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.macro_buffer*, align 8
  %7 = alloca %struct.macro_buffer*, align 8
  %8 = alloca %struct.macro_name_list*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.macro_buffer, align 8
  %12 = alloca i8*, align 8
  store %struct.macro_buffer* %0, %struct.macro_buffer** %6, align 8
  store %struct.macro_buffer* %1, %struct.macro_buffer** %7, align 8
  store %struct.macro_name_list* %2, %struct.macro_name_list** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @gdb_assert(i32 %22)
  br label %24

24:                                               ; preds = %64, %5
  %25 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  %28 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %29 = call i32 @get_token(%struct.macro_buffer* %11, %struct.macro_buffer* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %65

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %11, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ugt i8* %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %11, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @appendmem(%struct.macro_buffer* %38, i8* %39, i32 %46)
  %48 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %37, %32
  %54 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %55 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %56 = load %struct.macro_name_list*, %struct.macro_name_list** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @maybe_expand(%struct.macro_buffer* %54, %struct.macro_buffer* %11, %struct.macro_buffer* %55, %struct.macro_name_list* %56, i32* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %63 = call i32 @append_tokens_without_splicing(%struct.macro_buffer* %62, %struct.macro_buffer* %11)
  br label %64

64:                                               ; preds = %61, %53
  br label %24

65:                                               ; preds = %31
  %66 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %72 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.macro_buffer*, %struct.macro_buffer** %7, align 8
  %76 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @appendmem(%struct.macro_buffer* %71, i8* %74, i32 %77)
  %79 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.macro_buffer*, %struct.macro_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @get_token(%struct.macro_buffer*, %struct.macro_buffer*) #1

declare dso_local i32 @appendmem(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @maybe_expand(%struct.macro_buffer*, %struct.macro_buffer*, %struct.macro_buffer*, %struct.macro_name_list*, i32*, i8*) #1

declare dso_local i32 @append_tokens_without_splicing(%struct.macro_buffer*, %struct.macro_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
