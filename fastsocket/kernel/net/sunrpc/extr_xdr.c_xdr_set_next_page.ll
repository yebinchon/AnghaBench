; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_set_next_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_set_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*)* @xdr_set_next_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xdr_set_next_page(%struct.xdr_stream* %0) #0 {
  %2 = alloca %struct.xdr_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %2, align 8
  %4 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %5 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add i32 1, %6
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %9 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 %7, %12
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %17 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i64 @xdr_set_page_base(%struct.xdr_stream* %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %33 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %2, align 8
  %38 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xdr_set_iov(%struct.xdr_stream* %31, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64 @xdr_set_page_base(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @xdr_set_iov(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
