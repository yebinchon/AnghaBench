; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_zero_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_dio_zero_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio*, %struct.dio_submit*, i32, %struct.buffer_head*)* @dio_zero_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_zero_block(%struct.dio* %0, %struct.dio_submit* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.dio*, align 8
  %6 = alloca %struct.dio_submit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.dio* %0, %struct.dio** %5, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %13 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %14 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %16 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = call i32 @buffer_new(%struct.buffer_head* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %4
  br label %69

24:                                               ; preds = %19
  %25 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %26 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %30 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub i32 %32, 1
  %34 = and i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %69

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %48 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  store i32 %50, i32* %11, align 4
  %51 = call %struct.page* @ZERO_PAGE(i32 0)
  store %struct.page* %51, %struct.page** %12, align 8
  %52 = load %struct.dio*, %struct.dio** %5, align 8
  %53 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %57 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = call i64 @submit_page_section(%struct.dio* %52, %struct.dio_submit* %53, %struct.page* %54, i32 0, i32 %55, i32 %58, %struct.buffer_head* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %69

63:                                               ; preds = %45
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %66 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %62, %37, %23
  ret void
}

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i64 @submit_page_section(%struct.dio*, %struct.dio_submit*, %struct.page*, i32, i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
