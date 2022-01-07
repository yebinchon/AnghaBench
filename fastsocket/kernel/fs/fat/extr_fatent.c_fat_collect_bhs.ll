; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_collect_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_collect_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.fat_entry = type { i32, %struct.buffer_head** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head**, i32*, %struct.fat_entry*)* @fat_collect_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_collect_bhs(%struct.buffer_head** %0, i32* %1, %struct.fat_entry* %2) #0 {
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fat_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.buffer_head** %0, %struct.buffer_head*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.fat_entry* %2, %struct.fat_entry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %12 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %23 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %22, i32 0, i32 1
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %24, i64 %26
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %29, i64 %31
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = icmp eq %struct.buffer_head* %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %16

40:                                               ; preds = %35, %16
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %47 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %46, i32 0, i32 1
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %48, i64 %50
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = call i32 @get_bh(%struct.buffer_head* %52)
  %54 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %55 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %54, i32 0, i32 1
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 %58
  %60 = load %struct.buffer_head*, %struct.buffer_head** %59, align 8
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %61, i64 %63
  store %struct.buffer_head* %60, %struct.buffer_head** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %45, %40
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %9

72:                                               ; preds = %9
  ret void
}

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
