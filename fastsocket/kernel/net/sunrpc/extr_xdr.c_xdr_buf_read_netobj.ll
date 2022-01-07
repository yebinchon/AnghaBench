; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_buf_read_netobj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_buf_read_netobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.xdr_netobj = type { i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_buf_read_netobj(%struct.xdr_buf* %0, %struct.xdr_netobj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca %struct.xdr_netobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdr_buf, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 0
  %13 = call i64 @xdr_decode_word(%struct.xdr_buf* %9, i32 %10, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %129

18:                                               ; preds = %3
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 4
  %22 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %23 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @xdr_buf_subsegment(%struct.xdr_buf* %19, %struct.xdr_buf* %8, i32 %21, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %129

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %37 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %44 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %129

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %55 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %8, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %62 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %129

66:                                               ; preds = %48
  %67 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %68 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %71 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %74 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = icmp sgt i64 %69, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %129

81:                                               ; preds = %66
  %82 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %83 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %81
  %90 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %91 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %97 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %95, %101
  %103 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %104 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %121

105:                                              ; preds = %81
  %106 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %107 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %113 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %111, %117
  %119 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %120 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %105, %89
  %122 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %123 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %126 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @__read_bytes_from_xdr_buf(%struct.xdr_buf* %8, i64 %124, i64 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %121, %78, %65, %47, %27, %15
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @xdr_decode_word(%struct.xdr_buf*, i32, i64*) #1

declare dso_local i64 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i64) #1

declare dso_local i32 @__read_bytes_from_xdr_buf(%struct.xdr_buf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
