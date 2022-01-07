; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_read_objc_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_read_objc_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objc_class = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.objc_class*)* @read_objc_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_objc_class(i64 %0, %struct.objc_class* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.objc_class*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.objc_class* %1, %struct.objc_class** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i8* @read_memory_unsigned_integer(i64 %5, i32 4)
  %7 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %8 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %7, i32 0, i32 9
  store i8* %6, i8** %8, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %9, 4
  %11 = call i8* @read_memory_unsigned_integer(i64 %10, i32 4)
  %12 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %13 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %14, 8
  %16 = call i8* @read_memory_unsigned_integer(i64 %15, i32 4)
  %17 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %18 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, 12
  %21 = call i8* @read_memory_unsigned_integer(i64 %20, i32 4)
  %22 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %23 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, 16
  %26 = call i8* @read_memory_unsigned_integer(i64 %25, i32 4)
  %27 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %28 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 18
  %31 = call i8* @read_memory_unsigned_integer(i64 %30, i32 4)
  %32 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %33 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 24
  %36 = call i8* @read_memory_unsigned_integer(i64 %35, i32 4)
  %37 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %38 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %39, 28
  %41 = call i8* @read_memory_unsigned_integer(i64 %40, i32 4)
  %42 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %43 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add nsw i64 %44, 32
  %46 = call i8* @read_memory_unsigned_integer(i64 %45, i32 4)
  %47 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %48 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add nsw i64 %49, 36
  %51 = call i8* @read_memory_unsigned_integer(i64 %50, i32 4)
  %52 = load %struct.objc_class*, %struct.objc_class** %4, align 8
  %53 = getelementptr inbounds %struct.objc_class, %struct.objc_class* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret void
}

declare dso_local i8* @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
