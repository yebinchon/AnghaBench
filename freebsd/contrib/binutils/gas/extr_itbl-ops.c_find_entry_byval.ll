; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_find_entry_byval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_find_entry_byval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { i64, i64, %struct.itbl_range, %struct.itbl_entry* }
%struct.itbl_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.itbl_entry* (i64, i32, i64, %struct.itbl_range*)* @find_entry_byval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.itbl_entry* @find_entry_byval(i64 %0, i32 %1, i64 %2, %struct.itbl_range* %3) #0 {
  %5 = alloca %struct.itbl_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.itbl_range*, align 8
  %10 = alloca %struct.itbl_entry*, align 8
  %11 = alloca %struct.itbl_entry**, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.itbl_range* %3, %struct.itbl_range** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.itbl_entry** @get_entries(i64 %13, i32 %14)
  store %struct.itbl_entry** %15, %struct.itbl_entry*** %11, align 8
  %16 = load %struct.itbl_entry**, %struct.itbl_entry*** %11, align 8
  %17 = load %struct.itbl_entry*, %struct.itbl_entry** %16, align 8
  store %struct.itbl_entry* %17, %struct.itbl_entry** %10, align 8
  br label %18

18:                                               ; preds = %111, %4
  %19 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %20 = icmp ne %struct.itbl_entry* %19, null
  br i1 %20, label %21, label %115

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %24 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %111

28:                                               ; preds = %21
  %29 = load %struct.itbl_range*, %struct.itbl_range** %9, align 8
  %30 = icmp eq %struct.itbl_range* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %33 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %36 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %35, i32 0, i32 2
  %37 = bitcast %struct.itbl_range* %36 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @apply_range(i64 %34, i64 %39, i64 %41)
  store i64 %42, i64* %12, align 8
  %43 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %44 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %43, i32 0, i32 2
  %45 = bitcast %struct.itbl_range* %44 to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @apply_range(i64 4294967295, i64 %47, i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %104

53:                                               ; preds = %28
  %54 = load %struct.itbl_range*, %struct.itbl_range** %9, align 8
  %55 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %58 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.itbl_range*, %struct.itbl_range** %9, align 8
  %64 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %67 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %73 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %79 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.itbl_range, %struct.itbl_range* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77, %62
  %84 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %85 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.itbl_range*, %struct.itbl_range** %9, align 8
  %88 = bitcast %struct.itbl_range* %87 to { i64, i64 }*
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @apply_range(i64 %86, i64 %90, i64 %92)
  store i64 %93, i64* %12, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.itbl_range*, %struct.itbl_range** %9, align 8
  %96 = bitcast %struct.itbl_range* %95 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @apply_range(i64 %94, i64 %98, i64 %100)
  store i64 %101, i64* %8, align 8
  br label %103

102:                                              ; preds = %77, %71
  br label %111

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103, %31
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  store %struct.itbl_entry* %109, %struct.itbl_entry** %5, align 8
  br label %116

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %102, %27
  %112 = load %struct.itbl_entry*, %struct.itbl_entry** %10, align 8
  %113 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %112, i32 0, i32 3
  %114 = load %struct.itbl_entry*, %struct.itbl_entry** %113, align 8
  store %struct.itbl_entry* %114, %struct.itbl_entry** %10, align 8
  br label %18

115:                                              ; preds = %18
  store %struct.itbl_entry* null, %struct.itbl_entry** %5, align 8
  br label %116

116:                                              ; preds = %115, %108
  %117 = load %struct.itbl_entry*, %struct.itbl_entry** %5, align 8
  ret %struct.itbl_entry* %117
}

declare dso_local %struct.itbl_entry** @get_entries(i64, i32) #1

declare dso_local i64 @apply_range(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
