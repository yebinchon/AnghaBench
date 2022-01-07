; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_subbuf_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_file_read_subbuf_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i64, i64, i64, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.rchan_buf*)* @relay_file_read_subbuf_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @relay_file_read_subbuf_avail(i64 %0, %struct.rchan_buf* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.rchan_buf* %1, %struct.rchan_buf** %4, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %18 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = load i64, i64* %11, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* %11, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %35 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i64 [ %32, %31 ], [ %36, %33 ]
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %11, align 8
  %41 = udiv i64 %39, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* %11, align 8
  %44 = urem i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %37
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %62, %63
  %65 = sub i64 %61, %64
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %60, %54
  br label %73

67:                                               ; preds = %37
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %8, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i64, i64* %6, align 8
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
