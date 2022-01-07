; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, i32, i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32 }
%struct.sti_blkmv_outptr = type { i32 }

@default_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_bmove(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sti_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sti_blkmv_inptr, align 4
  %16 = alloca %struct.sti_blkmv_outptr, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.sti_struct* %0, %struct.sti_struct** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 0
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %22 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  store i32 %24, i32* %19, align 4
  %25 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 1
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %28 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 2
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %34 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %31, align 4
  %37 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 3
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %40 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  store i32 %42, i32* %37, align 4
  %43 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %46 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  store i32 %48, i32* %43, align 4
  %49 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %15, i32 0, i32 5
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %52 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  store i32 %54, i32* %49, align 4
  %55 = bitcast %struct.sti_blkmv_outptr* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 4, i1 false)
  br label %56

56:                                               ; preds = %72, %7
  %57 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %58 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %57, i32 0, i32 2
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %62 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %65 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @STI_CALL(i32 %63, i32* @default_blkmv_flags, %struct.sti_blkmv_inptr* %15, %struct.sti_blkmv_outptr* %16, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load %struct.sti_struct*, %struct.sti_struct** %8, align 8
  %69 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %68, i32 0, i32 2
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %56, label %75

75:                                               ; preds = %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @STI_CALL(i32, i32*, %struct.sti_blkmv_inptr*, %struct.sti_blkmv_outptr*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
