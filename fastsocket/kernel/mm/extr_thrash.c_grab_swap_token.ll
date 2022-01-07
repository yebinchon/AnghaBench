; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_thrash.c_grab_swap_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_thrash.c_grab_swap_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i8*, i64, i32 }

@global_faults = common dso_local global i8* null, align 8
@swap_token_lock = common dso_local global i32 0, align 4
@swap_token_mm = common dso_local global %struct.mm_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grab_swap_token(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load i8*, i8** @global_faults, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** @global_faults, align 8
  %6 = load i8*, i8** @global_faults, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %6 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = call i32 @spin_trylock(i32* @swap_token_lock)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.mm_struct*, %struct.mm_struct** @swap_token_mm, align 8
  %19 = icmp eq %struct.mm_struct* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  store %struct.mm_struct* %27, %struct.mm_struct** @swap_token_mm, align 8
  br label %78

28:                                               ; preds = %17
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** @swap_token_mm, align 8
  %31 = icmp ne %struct.mm_struct* %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %57

43:                                               ; preds = %32
  %44 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %45 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** @swap_token_mm, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %67, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  store %struct.mm_struct* %70, %struct.mm_struct** @swap_token_mm, align 8
  br label %71

71:                                               ; preds = %65, %57
  br label %77

72:                                               ; preds = %28
  %73 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 2
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %71
  br label %78

78:                                               ; preds = %77, %20
  %79 = load i8*, i8** @global_faults, align 8
  %80 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %81 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = call i32 @spin_unlock(i32* @swap_token_lock)
  br label %86

86:                                               ; preds = %78, %16
  ret void
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
