; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_find_next_usable_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_find_next_usable_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Bit not found near goal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.buffer_head*, i64)* @find_next_usable_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_usable_block(i64 %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 63
  %18 = and i64 %17, -64
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ext3_find_next_zero_bit(i64 %27, i64 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %37 = call i64 @ext3_test_allocatable(i64 %35, %struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %93

41:                                               ; preds = %34, %24
  %42 = call i32 @ext3_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %3
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i64, i64* %8, align 8
  %54 = ashr i64 %53, 3
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, 7
  %59 = ashr i64 %58, 3
  %60 = load i64, i64* %8, align 8
  %61 = ashr i64 %60, 3
  %62 = sub nsw i64 %59, %61
  %63 = call i8* @memscan(i8* %56, i32 0, i64 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = ptrtoint i8* %64 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = shl i64 %71, 3
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %48
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %83 = call i64 @ext3_test_allocatable(i64 %81, %struct.buffer_head* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %4, align 8
  br label %93

87:                                               ; preds = %80, %76, %48
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = call i64 @bitmap_search_next_usable_block(i64 %88, %struct.buffer_head* %89, i64 %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %87, %85, %39
  %94 = load i64, i64* %4, align 8
  ret i64 %94
}

declare dso_local i64 @ext3_find_next_zero_bit(i64, i64, i64) #1

declare dso_local i64 @ext3_test_allocatable(i64, %struct.buffer_head*) #1

declare dso_local i32 @ext3_debug(i8*) #1

declare dso_local i8* @memscan(i8*, i32, i64) #1

declare dso_local i64 @bitmap_search_next_usable_block(i64, %struct.buffer_head*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
