; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_inline_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_inline_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, i32, %struct.page**, %struct.kvec*, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_inline_pages(%struct.xdr_buf* %0, i32 %1, %struct.page** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca %struct.kvec*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 5
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  store %struct.kvec* %17, %struct.kvec** %11, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 4
  %20 = load %struct.kvec*, %struct.kvec** %19, align 8
  store %struct.kvec* %20, %struct.kvec** %12, align 8
  %21 = load %struct.kvec*, %struct.kvec** %11, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load %struct.kvec*, %struct.kvec** %11, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.kvec*, %struct.kvec** %11, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.page**, %struct.page*** %8, align 8
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 3
  store %struct.page** %30, %struct.page*** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %35 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.kvec*, %struct.kvec** %12, align 8
  %44 = getelementptr inbounds %struct.kvec, %struct.kvec* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %45, %46
  %48 = load %struct.kvec*, %struct.kvec** %12, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %52 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
