; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_get_more_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_direct-io.c_get_more_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32, i32, i32, i32, i32 }
%struct.dio_submit = type { i32, i32, i32, i32, i32 (i32, i32, %struct.buffer_head*, i32)* }
%struct.buffer_head = type opaque
%struct.buffer_head.0 = type { i64, i32, i64 }

@WRITE = common dso_local global i32 0, align 4
@DIO_SKIP_HOLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head.0*)* @get_more_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_more_blocks(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head.0* %2) #0 {
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca %struct.buffer_head.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  store %struct.buffer_head.0* %2, %struct.buffer_head.0** %6, align 8
  %13 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %14 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %17 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.dio*, %struct.dio** %4, align 8
  %21 = getelementptr inbounds %struct.dio, %struct.dio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %106

25:                                               ; preds = %3
  %26 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %27 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %30 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %36 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %39 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %43 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %47 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %10, align 8
  %55 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %56 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 %57, %59
  %61 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %62 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.dio*, %struct.dio** %4, align 8
  %64 = getelementptr inbounds %struct.dio, %struct.dio* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WRITE, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.dio*, %struct.dio** %4, align 8
  %69 = getelementptr inbounds %struct.dio, %struct.dio* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DIO_SKIP_HOLES, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %25
  %75 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %76 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dio*, %struct.dio** %4, align 8
  %79 = getelementptr inbounds %struct.dio, %struct.dio* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @i_size_read(i32 %80)
  %82 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %83 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %81, %84
  %86 = icmp slt i32 %77, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %25
  %90 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %91 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %90, i32 0, i32 4
  %92 = load i32 (i32, i32, %struct.buffer_head*, i32)*, i32 (i32, i32, %struct.buffer_head*, i32)** %91, align 8
  %93 = load %struct.dio*, %struct.dio** %4, align 8
  %94 = getelementptr inbounds %struct.dio, %struct.dio* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %98 = bitcast %struct.buffer_head.0* %97 to %struct.buffer_head*
  %99 = load i32, i32* %11, align 4
  %100 = call i32 %92(i32 %95, i32 %96, %struct.buffer_head* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %102 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.dio*, %struct.dio** %4, align 8
  %105 = getelementptr inbounds %struct.dio, %struct.dio* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %89, %3
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
