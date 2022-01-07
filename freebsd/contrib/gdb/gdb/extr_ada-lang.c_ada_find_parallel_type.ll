; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_find_parallel_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_find_parallel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@ada_find_parallel_type.name = internal global i8* null, align 8
@ada_find_parallel_type.name_len = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_find_parallel_type(%struct.type* %0, i8* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca %struct.block**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = call i8* @ada_type_name(%struct.type* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.type* null, %struct.type** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** @ada_find_parallel_type.name, align 8
  %20 = load i64, i64* @ada_find_parallel_type.name_len, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 1
  %26 = call i32 @GROW_VECT(i8* %19, i64 %20, i32 %25)
  %27 = load i8*, i8** @ada_find_parallel_type.name, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = load i8*, i8** @ada_find_parallel_type.name, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  %36 = load i8*, i8** @ada_find_parallel_type.name, align 8
  %37 = call %struct.type* @ada_find_any_type(i8* %36)
  store %struct.type* %37, %struct.type** %3, align 8
  br label %38

38:                                               ; preds = %16, %15
  %39 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %39
}

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GROW_VECT(i8*, i64, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.type* @ada_find_any_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
