; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_const_desc_rtx_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_const_desc_rtx_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_descriptor_rtx = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @const_desc_rtx_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_desc_rtx_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.constant_descriptor_rtx*, align 8
  %7 = alloca %struct.constant_descriptor_rtx*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.constant_descriptor_rtx*
  store %struct.constant_descriptor_rtx* %9, %struct.constant_descriptor_rtx** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.constant_descriptor_rtx*
  store %struct.constant_descriptor_rtx* %11, %struct.constant_descriptor_rtx** %7, align 8
  %12 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %6, align 8
  %13 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %7, align 8
  %16 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %6, align 8
  %22 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.constant_descriptor_rtx*, %struct.constant_descriptor_rtx** %7, align 8
  %25 = getelementptr inbounds %struct.constant_descriptor_rtx, %struct.constant_descriptor_rtx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rtx_equal_p(i32 %23, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @rtx_equal_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
