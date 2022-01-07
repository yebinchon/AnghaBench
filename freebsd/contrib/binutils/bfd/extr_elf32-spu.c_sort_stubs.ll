; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_sort_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_sort_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_stub_hash_entry = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sort_stubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_stubs(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spu_stub_hash_entry**, align 8
  %7 = alloca %struct.spu_stub_hash_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.spu_stub_hash_entry**
  store %struct.spu_stub_hash_entry** %11, %struct.spu_stub_hash_entry*** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.spu_stub_hash_entry**
  store %struct.spu_stub_hash_entry** %13, %struct.spu_stub_hash_entry*** %7, align 8
  %14 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %6, align 8
  %15 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %14, align 8
  %16 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call %struct.TYPE_7__* @spu_elf_section_data(%struct.TYPE_8__* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %7, align 8
  %24 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %23, align 8
  %25 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call %struct.TYPE_7__* @spu_elf_section_data(%struct.TYPE_8__* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %104

38:                                               ; preds = %2
  %39 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %6, align 8
  %40 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %39, align 8
  %41 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %6, align 8
  %48 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %47, align 8
  %49 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %46, %52
  %54 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %6, align 8
  %55 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %54, align 8
  %56 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %7, align 8
  %60 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %59, align 8
  %61 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %58, %66
  %68 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %7, align 8
  %69 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %68, align 8
  %70 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %67, %73
  %75 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %7, align 8
  %76 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %75, align 8
  %77 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %38
  %83 = load i64, i64* %9, align 8
  %84 = icmp slt i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 -1, i32 1
  store i32 %86, i32* %3, align 4
  br label %104

87:                                               ; preds = %38
  %88 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %7, align 8
  %89 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %88, align 8
  %90 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %6, align 8
  %94 = load %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %93, align 8
  %95 = getelementptr inbounds %struct.spu_stub_hash_entry, %struct.spu_stub_hash_entry* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcmp(i32 %92, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @BFD_ASSERT(i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %87, %82, %36
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_7__* @spu_elf_section_data(%struct.TYPE_8__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
