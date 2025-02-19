; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticore.c_sti_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32 }
%struct.sti_blkmv_inptr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_blkmv_outptr = type { i32 }

@clear_blkmv_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_set(%struct.sti_struct* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
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
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 1
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 5
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 6
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sti_blkmv_inptr, %struct.sti_blkmv_inptr* %13, i32 0, i32 7
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %31, align 4
  %33 = bitcast %struct.sti_blkmv_outptr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 4, i1 false)
  br label %34

34:                                               ; preds = %50, %6
  %35 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %36 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %40 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %43 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @STI_CALL(i32 %41, i32* @clear_blkmv_flags, %struct.sti_blkmv_inptr* %13, %struct.sti_blkmv_outptr* %14, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.sti_struct*, %struct.sti_struct** %7, align 8
  %47 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %34, label %53

53:                                               ; preds = %50
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
