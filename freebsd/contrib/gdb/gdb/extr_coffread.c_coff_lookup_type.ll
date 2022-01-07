; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_lookup_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_lookup_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@type_vector_length = common dso_local global i32 0, align 4
@type_vector = common dso_local global %struct.type** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type** (i32)* @coff_lookup_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type** @coff_lookup_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @type_vector_length, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load i32, i32* @type_vector_length, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @type_vector_length, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* @type_vector_length, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @type_vector_length, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* @type_vector_length, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.type**, %struct.type*** @type_vector, align 8
  %19 = bitcast %struct.type** %18 to i8*
  %20 = load i32, i32* @type_vector_length, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @xrealloc(i8* %19, i32 %23)
  %25 = inttoptr i64 %24 to %struct.type**
  store %struct.type** %25, %struct.type*** @type_vector, align 8
  %26 = load %struct.type**, %struct.type*** @type_vector, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.type*, %struct.type** %26, i64 %28
  %30 = load i32, i32* @type_vector_length, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.type** %29, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %17, %1
  %38 = load %struct.type**, %struct.type*** @type_vector, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.type*, %struct.type** %38, i64 %40
  ret %struct.type** %41
}

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.type**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
