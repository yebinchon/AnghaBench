; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i64, %struct.strtab_hash_entry*, %struct.strtab_hash_entry*, i64, i32 }
%struct.strtab_hash_entry = type { i64, %struct.strtab_hash_entry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bfd_strtab_hash*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.strtab_hash_entry*, align 8
  %11 = alloca i8*, align 8
  store %struct.bfd_strtab_hash* %0, %struct.bfd_strtab_hash** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call %struct.strtab_hash_entry* @strtab_hash_lookup(%struct.bfd_strtab_hash* %15, i8* %16, i32 %17, i64 %18)
  store %struct.strtab_hash_entry* %19, %struct.strtab_hash_entry** %10, align 8
  %20 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %21 = icmp eq %struct.strtab_hash_entry* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i64 -1, i64* %5, align 8
  br label %115

23:                                               ; preds = %14
  br label %60

24:                                               ; preds = %4
  %25 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %26 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %25, i32 0, i32 4
  %27 = call i8* @bfd_hash_allocate(i32* %26, i32 24)
  %28 = bitcast i8* %27 to %struct.strtab_hash_entry*
  store %struct.strtab_hash_entry* %28, %struct.strtab_hash_entry** %10, align 8
  %29 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %30 = icmp eq %struct.strtab_hash_entry* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i64 -1, i64* %5, align 8
  br label %115

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %38 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %55

40:                                               ; preds = %32
  %41 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %42 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %41, i32 0, i32 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = call i8* @bfd_hash_allocate(i32* %42, i32 %45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i64 -1, i64* %5, align 8
  br label %115

50:                                               ; preds = %40
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %53 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %35
  %56 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %57 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %56, i32 0, i32 0
  store i64 -1, i64* %57, align 8
  %58 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %59 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %58, i32 0, i32 1
  store %struct.strtab_hash_entry* null, %struct.strtab_hash_entry** %59, align 8
  br label %60

60:                                               ; preds = %55, %23
  %61 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %62 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %111

65:                                               ; preds = %60
  %66 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %67 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %70 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %76 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %80 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %65
  %84 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %85 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 2
  store i64 %87, i64* %85, align 8
  %88 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %89 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 2
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %83, %65
  %93 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %94 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %93, i32 0, i32 2
  %95 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %94, align 8
  %96 = icmp eq %struct.strtab_hash_entry* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %99 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %100 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %99, i32 0, i32 2
  store %struct.strtab_hash_entry* %98, %struct.strtab_hash_entry** %100, align 8
  br label %107

101:                                              ; preds = %92
  %102 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %103 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %104 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %103, i32 0, i32 1
  %105 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %104, align 8
  %106 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %105, i32 0, i32 1
  store %struct.strtab_hash_entry* %102, %struct.strtab_hash_entry** %106, align 8
  br label %107

107:                                              ; preds = %101, %97
  %108 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %109 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %6, align 8
  %110 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %109, i32 0, i32 1
  store %struct.strtab_hash_entry* %108, %struct.strtab_hash_entry** %110, align 8
  br label %111

111:                                              ; preds = %107, %60
  %112 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %10, align 8
  %113 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %111, %49, %31, %22
  %116 = load i64, i64* %5, align 8
  ret i64 %116
}

declare dso_local %struct.strtab_hash_entry* @strtab_hash_lookup(%struct.bfd_strtab_hash*, i8*, i32, i64) #1

declare dso_local i8* @bfd_hash_allocate(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
