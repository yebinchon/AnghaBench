; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_blkmv_outptr = type { i32 }

@clear_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_clear(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sti_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sti_blkmv_inptr, align 4
  %14 = alloca %struct.sti_blkmv_outptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 0
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %20 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %17, align 4
  %23 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %26 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  store i32 %28, i32* %23, align 4
  %29 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 2
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %32 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 3
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %38 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %35, align 4
  %41 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %44 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %41, align 4
  %47 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 5
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %50 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %47, align 4
  %53 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 6
  %54 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @c_bg(%struct.sti_struct* %54, i32 %55)
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 7
  %58 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @c_fg(%struct.sti_struct* %58, i32 %59)
  store i32 %60, i32* %57, align 4
  %61 = bitcast %struct.sti_blkmv_outptr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %61, i8 0, i64 4, i1 false)
  br label %62

62:                                               ; preds = %78, %6
  %63 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %64 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %63, i32 0, i32 2
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %68 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %71 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @STI_CALL(i32 %69, i32* @clear_blkmv_flags, %struct.sti_blkmv_inptr* %13, %struct.sti_blkmv_outptr* %14, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %75 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %74, i32 0, i32 2
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %62, label %81

81:                                               ; preds = %78
  ret void
}

declare dso_local i32 @c_bg(%struct.sti_struct*, i32) #1

declare dso_local i32 @c_fg(%struct.sti_struct*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @STI_CALL(i32, i32*, %struct.sti_blkmv_inptr*, %struct.sti_blkmv_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
