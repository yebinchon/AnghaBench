; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_cie_compute_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_cie_compute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie = type { i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cie*)* @cie_compute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cie_compute_hash(%struct.cie* %0) #0 {
  %2 = alloca %struct.cie*, align 8
  %3 = alloca i32, align 4
  store %struct.cie* %0, %struct.cie** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cie*, %struct.cie** %2, align 8
  %5 = getelementptr inbounds %struct.cie, %struct.cie* %4, i32 0, i32 14
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @iterative_hash_object(i64 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.cie*, %struct.cie** %2, align 8
  %10 = getelementptr inbounds %struct.cie, %struct.cie* %9, i32 0, i32 13
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iterative_hash_object(i64 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.cie*, %struct.cie** %2, align 8
  %15 = getelementptr inbounds %struct.cie, %struct.cie* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cie*, %struct.cie** %2, align 8
  %18 = getelementptr inbounds %struct.cie, %struct.cie* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @strlen(i32 %19)
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @iterative_hash(i32 %16, i64 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.cie*, %struct.cie** %2, align 8
  %25 = getelementptr inbounds %struct.cie, %struct.cie* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @iterative_hash_object(i64 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.cie*, %struct.cie** %2, align 8
  %30 = getelementptr inbounds %struct.cie, %struct.cie* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @iterative_hash_object(i64 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.cie*, %struct.cie** %2, align 8
  %35 = getelementptr inbounds %struct.cie, %struct.cie* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @iterative_hash_object(i64 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.cie*, %struct.cie** %2, align 8
  %40 = getelementptr inbounds %struct.cie, %struct.cie* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @iterative_hash_object(i64 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.cie*, %struct.cie** %2, align 8
  %45 = getelementptr inbounds %struct.cie, %struct.cie* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @iterative_hash_object(i64 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.cie*, %struct.cie** %2, align 8
  %50 = getelementptr inbounds %struct.cie, %struct.cie* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @iterative_hash_object(i64 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load %struct.cie*, %struct.cie** %2, align 8
  %55 = getelementptr inbounds %struct.cie, %struct.cie* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @iterative_hash_object(i64 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.cie*, %struct.cie** %2, align 8
  %60 = getelementptr inbounds %struct.cie, %struct.cie* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @iterative_hash_object(i64 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load %struct.cie*, %struct.cie** %2, align 8
  %65 = getelementptr inbounds %struct.cie, %struct.cie* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @iterative_hash_object(i64 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load %struct.cie*, %struct.cie** %2, align 8
  %70 = getelementptr inbounds %struct.cie, %struct.cie* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @iterative_hash_object(i64 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load %struct.cie*, %struct.cie** %2, align 8
  %75 = getelementptr inbounds %struct.cie, %struct.cie* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.cie*, %struct.cie** %2, align 8
  %78 = getelementptr inbounds %struct.cie, %struct.cie* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @iterative_hash(i32 %76, i64 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.cie*, %struct.cie** %2, align 8
  %84 = getelementptr inbounds %struct.cie, %struct.cie* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @iterative_hash_object(i64, i32) #1

declare dso_local i32 @iterative_hash(i32, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
