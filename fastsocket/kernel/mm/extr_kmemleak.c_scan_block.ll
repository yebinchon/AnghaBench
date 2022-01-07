; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_scan_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_scan_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32, i32 }

@BYTES_PER_POINTER = common dso_local global i8* null, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@gray_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.kmemleak_object*, i32)* @scan_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_block(i8* %0, i8* %1, %struct.kmemleak_object* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kmemleak_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.kmemleak_object*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.kmemleak_object* %2, %struct.kmemleak_object** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** @BYTES_PER_POINTER, align 8
  %17 = call i64* @PTR_ALIGN(i8* %15, i8* %16)
  store i64* %17, i64** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** @BYTES_PER_POINTER, align 8
  %20 = getelementptr i8, i8* %19, i64 -1
  %21 = ptrtoint i8* %18 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %11, align 8
  %25 = load i64*, i64** %10, align 8
  store i64* %25, i64** %9, align 8
  br label %26

26:                                               ; preds = %97, %4
  %27 = load i64*, i64** %9, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = icmp ult i64* %27, %28
  br i1 %29, label %30, label %100

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @cond_resched()
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i64 (...) @scan_should_stop()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %100

39:                                               ; preds = %35
  %40 = load i64*, i64** %9, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = load i8*, i8** @BYTES_PER_POINTER, align 8
  %43 = call i32 @kmemcheck_is_obj_initialized(i64 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %97

46:                                               ; preds = %39
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.kmemleak_object* @find_and_get_object(i64 %49, i32 1)
  store %struct.kmemleak_object* %50, %struct.kmemleak_object** %12, align 8
  %51 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %52 = icmp ne %struct.kmemleak_object* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %97

54:                                               ; preds = %46
  %55 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %56 = load %struct.kmemleak_object*, %struct.kmemleak_object** %7, align 8
  %57 = icmp eq %struct.kmemleak_object* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %60 = call i32 @put_object(%struct.kmemleak_object* %59)
  br label %97

61:                                               ; preds = %54
  %62 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %63 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %62, i32 0, i32 0
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %66 = call i32 @spin_lock_irqsave_nested(i32* %63, i64 %64, i32 %65)
  %67 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %68 = call i32 @color_white(%struct.kmemleak_object* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %72 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %71, i32 0, i32 0
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %76 = call i32 @put_object(%struct.kmemleak_object* %75)
  br label %97

77:                                               ; preds = %61
  %78 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %79 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %83 = call i64 @color_gray(%struct.kmemleak_object* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %87 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %86, i32 0, i32 1
  %88 = call i32 @list_add_tail(i32* %87, i32* @gray_list)
  br label %92

89:                                               ; preds = %77
  %90 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %91 = call i32 @put_object(%struct.kmemleak_object* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %94 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %93, i32 0, i32 0
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %70, %58, %53, %45
  %98 = load i64*, i64** %9, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %9, align 8
  br label %26

100:                                              ; preds = %38, %26
  ret void
}

declare dso_local i64* @PTR_ALIGN(i8*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @scan_should_stop(...) #1

declare dso_local i32 @kmemcheck_is_obj_initialized(i64, i8*) #1

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

declare dso_local i32 @spin_lock_irqsave_nested(i32*, i64, i32) #1

declare dso_local i32 @color_white(%struct.kmemleak_object*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @color_gray(%struct.kmemleak_object*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
