; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_record_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_record_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfile = type { i32, %struct.linetable* }
%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i32, i32 }

@INITIAL_LINE_VECTOR_LENGTH = common dso_local global i32 0, align 4
@have_line_numbers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_line(%struct.subfile* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.subfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.linetable_entry*, align 8
  store %struct.subfile* %0, %struct.subfile** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 65535
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %87

11:                                               ; preds = %3
  %12 = load %struct.subfile*, %struct.subfile** %4, align 8
  %13 = getelementptr inbounds %struct.subfile, %struct.subfile* %12, i32 0, i32 1
  %14 = load %struct.linetable*, %struct.linetable** %13, align 8
  %15 = icmp ne %struct.linetable* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @INITIAL_LINE_VECTOR_LENGTH, align 4
  %18 = load %struct.subfile*, %struct.subfile** %4, align 8
  %19 = getelementptr inbounds %struct.subfile, %struct.subfile* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.subfile*, %struct.subfile** %4, align 8
  %21 = getelementptr inbounds %struct.subfile, %struct.subfile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @xmalloc(i32 %26)
  %28 = inttoptr i64 %27 to %struct.linetable*
  %29 = load %struct.subfile*, %struct.subfile** %4, align 8
  %30 = getelementptr inbounds %struct.subfile, %struct.subfile* %29, i32 0, i32 1
  store %struct.linetable* %28, %struct.linetable** %30, align 8
  %31 = load %struct.subfile*, %struct.subfile** %4, align 8
  %32 = getelementptr inbounds %struct.subfile, %struct.subfile* %31, i32 0, i32 1
  %33 = load %struct.linetable*, %struct.linetable** %32, align 8
  %34 = getelementptr inbounds %struct.linetable, %struct.linetable* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  store i32 1, i32* @have_line_numbers, align 4
  br label %35

35:                                               ; preds = %16, %11
  %36 = load %struct.subfile*, %struct.subfile** %4, align 8
  %37 = getelementptr inbounds %struct.subfile, %struct.subfile* %36, i32 0, i32 1
  %38 = load %struct.linetable*, %struct.linetable** %37, align 8
  %39 = getelementptr inbounds %struct.linetable, %struct.linetable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = load %struct.subfile*, %struct.subfile** %4, align 8
  %43 = getelementptr inbounds %struct.subfile, %struct.subfile* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %35
  %47 = load %struct.subfile*, %struct.subfile** %4, align 8
  %48 = getelementptr inbounds %struct.subfile, %struct.subfile* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %48, align 8
  %51 = load %struct.subfile*, %struct.subfile** %4, align 8
  %52 = getelementptr inbounds %struct.subfile, %struct.subfile* %51, i32 0, i32 1
  %53 = load %struct.linetable*, %struct.linetable** %52, align 8
  %54 = bitcast %struct.linetable* %53 to i8*
  %55 = load %struct.subfile*, %struct.subfile** %4, align 8
  %56 = getelementptr inbounds %struct.subfile, %struct.subfile* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = add i64 16, %59
  %61 = trunc i64 %60 to i32
  %62 = call i64 @xrealloc(i8* %54, i32 %61)
  %63 = inttoptr i64 %62 to %struct.linetable*
  %64 = load %struct.subfile*, %struct.subfile** %4, align 8
  %65 = getelementptr inbounds %struct.subfile, %struct.subfile* %64, i32 0, i32 1
  store %struct.linetable* %63, %struct.linetable** %65, align 8
  br label %66

66:                                               ; preds = %46, %35
  %67 = load %struct.subfile*, %struct.subfile** %4, align 8
  %68 = getelementptr inbounds %struct.subfile, %struct.subfile* %67, i32 0, i32 1
  %69 = load %struct.linetable*, %struct.linetable** %68, align 8
  %70 = getelementptr inbounds %struct.linetable, %struct.linetable* %69, i32 0, i32 1
  %71 = load %struct.linetable_entry*, %struct.linetable_entry** %70, align 8
  %72 = load %struct.subfile*, %struct.subfile** %4, align 8
  %73 = getelementptr inbounds %struct.subfile, %struct.subfile* %72, i32 0, i32 1
  %74 = load %struct.linetable*, %struct.linetable** %73, align 8
  %75 = getelementptr inbounds %struct.linetable, %struct.linetable* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %71, i64 %78
  store %struct.linetable_entry* %79, %struct.linetable_entry** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.linetable_entry*, %struct.linetable_entry** %7, align 8
  %82 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ADDR_BITS_REMOVE(i32 %83)
  %85 = load %struct.linetable_entry*, %struct.linetable_entry** %7, align 8
  %86 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %66, %10
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
