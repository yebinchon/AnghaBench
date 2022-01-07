; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_opncls_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_opncls_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { %struct.opncls* }
%struct.opncls = type { i64 (%struct.bfd.0*, i32, i8*, i64, i32)*, i32, i32 }
%struct.bfd.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd*, i8*, i64)* @opncls_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opncls_bread(%struct.bfd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.opncls*, align 8
  %9 = alloca i64, align 8
  store %struct.bfd* %0, %struct.bfd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.bfd*, %struct.bfd** %5, align 8
  %11 = getelementptr inbounds %struct.bfd, %struct.bfd* %10, i32 0, i32 0
  %12 = load %struct.opncls*, %struct.opncls** %11, align 8
  store %struct.opncls* %12, %struct.opncls** %8, align 8
  %13 = load %struct.opncls*, %struct.opncls** %8, align 8
  %14 = getelementptr inbounds %struct.opncls, %struct.opncls* %13, i32 0, i32 0
  %15 = load i64 (%struct.bfd.0*, i32, i8*, i64, i32)*, i64 (%struct.bfd.0*, i32, i8*, i64, i32)** %14, align 8
  %16 = load %struct.bfd*, %struct.bfd** %5, align 8
  %17 = bitcast %struct.bfd* %16 to %struct.bfd.0*
  %18 = load %struct.opncls*, %struct.opncls** %8, align 8
  %19 = getelementptr inbounds %struct.opncls, %struct.opncls* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.opncls*, %struct.opncls** %8, align 8
  %24 = getelementptr inbounds %struct.opncls, %struct.opncls* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 %15(%struct.bfd.0* %17, i32 %20, i8* %21, i64 %22, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %4, align 8
  br label %40

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.opncls*, %struct.opncls** %8, align 8
  %34 = getelementptr inbounds %struct.opncls, %struct.opncls* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %31, %29
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
