; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_advance_iovec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_aio_advance_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i64, i64, %struct.iovec* }
%struct.iovec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kiocb*, i64)* @aio_advance_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_advance_iovec(%struct.kiocb* %0, i64 %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %8 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %7, i32 0, i32 3
  %9 = load %struct.iovec*, %struct.iovec** %8, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i64 %12
  store %struct.iovec* %13, %struct.iovec** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp sle i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  br label %18

18:                                               ; preds = %68, %2
  %19 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = icmp sgt i64 %27, 0
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i1 [ false, %18 ], [ %28, %26 ]
  br i1 %30, label %31, label %69

31:                                               ; preds = %29
  %32 = load %struct.iovec*, %struct.iovec** %5, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @min(i64 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.iovec*, %struct.iovec** %5, align 8
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.iovec*, %struct.iovec** %5, align 8
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %51 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load %struct.iovec*, %struct.iovec** %5, align 8
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %31
  %62 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %63 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.iovec*, %struct.iovec** %5, align 8
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 1
  store %struct.iovec* %67, %struct.iovec** %5, align 8
  br label %68

68:                                               ; preds = %61, %31
  br label %18

69:                                               ; preds = %29
  %70 = load i64, i64* %4, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %74 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i1 [ false, %69 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
