; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_init_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_init_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32*, i32, i32*, %struct.TYPE_3__, %struct.xdr_buf* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.xdr_buf = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_init_decode(%struct.xdr_stream* %0, %struct.xdr_buf* %1, i32* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %8, i32 0, i32 4
  store %struct.xdr_buf* %7, %struct.xdr_buf** %9, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %11 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @XDR_QUADLEN(i32 %18)
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %23 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %31 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %32 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %35 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @xdr_set_iov(%struct.xdr_stream* %30, %struct.TYPE_4__* %33, i32 %36)
  br label %50

38:                                               ; preds = %3
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %45 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %46 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xdr_set_page_base(%struct.xdr_stream* %44, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %56 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ugt i32* %54, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %61 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp uge i32* %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %68 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %66 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %75 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %82 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %65, %59, %53, %50
  ret void
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @xdr_set_iov(%struct.xdr_stream*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @xdr_set_page_base(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
