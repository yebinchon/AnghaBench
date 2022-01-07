; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_encode_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_encode_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.page**, %struct.kvec* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.kvec = type { i8*, i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_encode_pages(%struct.xdr_buf* %0, %struct.page** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %13 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %12, i32 0, i32 6
  %14 = load %struct.kvec*, %struct.kvec** %13, align 8
  store %struct.kvec* %14, %struct.kvec** %9, align 8
  %15 = load %struct.page**, %struct.page*** %6, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 5
  store %struct.page** %15, %struct.page*** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %25 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @XDR_QUADLEN(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %30, i64 %38
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.kvec*, %struct.kvec** %9, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.kvec*, %struct.kvec** %9, align 8
  %44 = getelementptr inbounds %struct.kvec, %struct.kvec* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 3
  %51 = sub i32 4, %50
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %10, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 3
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load %struct.kvec*, %struct.kvec** %9, align 8
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.kvec*, %struct.kvec** %9, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %48, %4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %69 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %74 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %72
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
