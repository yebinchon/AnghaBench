; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_count_dyn_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_count_dyn_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfNN_ia64_dyn_sym_info = type { %struct.elfNN_ia64_dyn_reloc_entry* }
%struct.elfNN_ia64_dyn_reloc_entry = type { i32, i64, i32, i32*, %struct.elfNN_ia64_dyn_reloc_entry* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.elfNN_ia64_dyn_sym_info*, i32*, i32, i32)* @count_dyn_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_dyn_reloc(i32* %0, %struct.elfNN_ia64_dyn_sym_info* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.elfNN_ia64_dyn_sym_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.elfNN_ia64_dyn_reloc_entry*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.elfNN_ia64_dyn_sym_info* %1, %struct.elfNN_ia64_dyn_sym_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %8, align 8
  %14 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %13, i32 0, i32 0
  %15 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %14, align 8
  store %struct.elfNN_ia64_dyn_reloc_entry* %15, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  br label %16

16:                                               ; preds = %33, %5
  %17 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %18 = icmp ne %struct.elfNN_ia64_dyn_reloc_entry* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %21 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %27 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %37

32:                                               ; preds = %25, %19
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %35 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %34, i32 0, i32 4
  %36 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %35, align 8
  store %struct.elfNN_ia64_dyn_reloc_entry* %36, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  br label %16

37:                                               ; preds = %31, %16
  %38 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %39 = icmp ne %struct.elfNN_ia64_dyn_reloc_entry* %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @bfd_alloc(i32* %41, i32 40)
  %43 = inttoptr i64 %42 to %struct.elfNN_ia64_dyn_reloc_entry*
  store %struct.elfNN_ia64_dyn_reloc_entry* %43, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %44 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %45 = icmp ne %struct.elfNN_ia64_dyn_reloc_entry* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %74

48:                                               ; preds = %40
  %49 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %8, align 8
  %50 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %49, i32 0, i32 0
  %51 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %50, align 8
  %52 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %53 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %52, i32 0, i32 4
  store %struct.elfNN_ia64_dyn_reloc_entry* %51, %struct.elfNN_ia64_dyn_reloc_entry** %53, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %56 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %59 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %61 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %63 = load %struct.elfNN_ia64_dyn_sym_info*, %struct.elfNN_ia64_dyn_sym_info** %8, align 8
  %64 = getelementptr inbounds %struct.elfNN_ia64_dyn_sym_info, %struct.elfNN_ia64_dyn_sym_info* %63, i32 0, i32 0
  store %struct.elfNN_ia64_dyn_reloc_entry* %62, %struct.elfNN_ia64_dyn_reloc_entry** %64, align 8
  br label %65

65:                                               ; preds = %48, %37
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %68 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.elfNN_ia64_dyn_reloc_entry*, %struct.elfNN_ia64_dyn_reloc_entry** %12, align 8
  %70 = getelementptr inbounds %struct.elfNN_ia64_dyn_reloc_entry, %struct.elfNN_ia64_dyn_reloc_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %65, %46
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @bfd_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
