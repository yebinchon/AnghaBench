; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_end_buffer_async_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_end_buffer_async_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head*, %struct.page* }
%struct.page = type { i32 }

@BH_Uptodate_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @end_buffer_async_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_buffer_async_read(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = call i64 @buffer_async_read(%struct.buffer_head* %10)
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 2
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %23 = call i32 @set_buffer_uptodate(%struct.buffer_head* %22)
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %28 = call i32 @quiet_error(%struct.buffer_head* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %32 = call i32 @buffer_io_error(%struct.buffer_head* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @SetPageError(%struct.page* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = call %struct.buffer_head* @page_buffers(%struct.page* %37)
  store %struct.buffer_head* %38, %struct.buffer_head** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load i32, i32* @BH_Uptodate_Lock, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = call i32 @bit_spin_lock(i32 %41, i32* %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %46 = call i32 @clear_buffer_async_read(%struct.buffer_head* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %48 = call i32 @unlock_buffer(%struct.buffer_head* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %7, align 8
  br label %50

50:                                               ; preds = %70, %36
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = call i32 @buffer_uptodate(%struct.buffer_head* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = call i64 @buffer_async_read(%struct.buffer_head* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = call i32 @buffer_locked(%struct.buffer_head* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  br label %93

66:                                               ; preds = %55
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 1
  %69 = load %struct.buffer_head*, %struct.buffer_head** %68, align 8
  store %struct.buffer_head* %69, %struct.buffer_head** %7, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %73 = icmp ne %struct.buffer_head* %71, %72
  br i1 %73, label %50, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @BH_Uptodate_Lock, align 4
  %76 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = call i32 @bit_spin_unlock(i32 %75, i32* %77)
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @local_irq_restore(i64 %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.page*, %struct.page** %8, align 8
  %85 = call i32 @PageError(%struct.page* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = call i32 @SetPageUptodate(%struct.page* %88)
  br label %90

90:                                               ; preds = %87, %83, %74
  %91 = load %struct.page*, %struct.page** %8, align 8
  %92 = call i32 @unlock_page(%struct.page* %91)
  br label %100

93:                                               ; preds = %59
  %94 = load i32, i32* @BH_Uptodate_Lock, align 4
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %95, i32 0, i32 0
  %97 = call i32 @bit_spin_unlock(i32 %94, i32* %96)
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @local_irq_restore(i64 %98)
  br label %100

100:                                              ; preds = %93, %90
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @quiet_error(%struct.buffer_head*) #1

declare dso_local i32 @buffer_io_error(%struct.buffer_head*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @bit_spin_lock(i32, i32*) #1

declare dso_local i32 @clear_buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @bit_spin_unlock(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
