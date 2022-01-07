; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sti_font_inptr = type { i32, i32, i32, i32, i32, i32 }
%struct.sti_font_outptr = type { i32 }

@default_font_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_putc(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sti_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sti_font_inptr, align 4
  %10 = alloca %struct.sti_font_outptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %16 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %22 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 2
  %26 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @c_bg(%struct.sti_struct* %26, i32 %27)
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 3
  %30 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @c_fg(%struct.sti_struct* %30, i32 %31)
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 4
  %34 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @c_index(%struct.sti_struct* %34, i32 %35)
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.sti_font_inptr, %struct.sti_font_inptr* %9, i32 0, i32 5
  %38 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %39 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @STI_PTR(i32 %42)
  store i32 %43, i32* %37, align 4
  %44 = bitcast %struct.sti_font_outptr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 4, i1 false)
  br label %45

45:                                               ; preds = %61, %4
  %46 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %47 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %46, i32 0, i32 2
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %51 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %54 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @STI_CALL(i32 %52, i32* @default_font_flags, %struct.sti_font_inptr* %9, %struct.sti_font_outptr* %10, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sti_struct*, %struct.sti_struct** %5, align 8
  %58 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %57, i32 0, i32 2
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %45, label %64

64:                                               ; preds = %61
  ret void
}

declare dso_local i32 @c_bg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_fg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_index(%struct.sti_struct*, i32) #1

declare dso_local i32 @STI_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @STI_CALL(i32, i32*, %struct.sti_font_inptr*, %struct.sti_font_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
