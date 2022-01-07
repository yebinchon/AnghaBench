; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_set_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_set_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { i32, %struct.TYPE_2__, %struct.buffer_head** }
%struct.TYPE_2__ = type { i64* }
%struct.buffer_head = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_entry*, i32)* @fat12_ent_set_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat12_ent_set_ptr(%struct.fat_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head**, align 8
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %7 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %6, i32 0, i32 2
  %8 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head** %8, %struct.buffer_head*** %5, align 8
  %9 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %10 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %16 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %15, i64 0
  %17 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp sge i32 %14, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %24, i64 0
  %26 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %33 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %31, i64* %36, align 8
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %38 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %37, i64 0
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %47 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 %45, i64* %50, align 8
  br label %85

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %54 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 0
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = icmp ne i32 %52, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %63 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %62, i64 0
  %64 = load %struct.buffer_head*, %struct.buffer_head** %63, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %71 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 %69, i64* %74, align 8
  %75 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %76 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %75, i64 1
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %81 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 %79, i64* %84, align 8
  br label %85

85:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
