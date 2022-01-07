; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_real_write_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_real_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.ieee_buf*, %struct.TYPE_2__* }
%struct.ieee_buf = type { i64, i32*, %struct.ieee_buf* }
%struct.TYPE_2__ = type { %struct.ieee_buf*, %struct.ieee_buf* }

@IEEE_BUFSIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i32)* @ieee_real_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_real_write_byte(%struct.ieee_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee_buf*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %7 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %6, i32 0, i32 0
  %8 = load %struct.ieee_buf*, %struct.ieee_buf** %7, align 8
  %9 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IEEE_BUFSIZE, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %2
  %14 = call i64 @xmalloc(i32 24)
  %15 = inttoptr i64 %14 to %struct.ieee_buf*
  store %struct.ieee_buf* %15, %struct.ieee_buf** %5, align 8
  %16 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %17 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %16, i32 0, i32 2
  store %struct.ieee_buf* null, %struct.ieee_buf** %17, align 8
  %18 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %19 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %21 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.ieee_buf*, %struct.ieee_buf** %23, align 8
  %25 = icmp eq %struct.ieee_buf* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %28 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %29 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.ieee_buf* %27, %struct.ieee_buf** %31, align 8
  br label %40

32:                                               ; preds = %13
  %33 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.ieee_buf*, %struct.ieee_buf** %37, align 8
  %39 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %38, i32 0, i32 2
  store %struct.ieee_buf* %33, %struct.ieee_buf** %39, align 8
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %42 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %43 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.ieee_buf* %41, %struct.ieee_buf** %45, align 8
  %46 = load %struct.ieee_buf*, %struct.ieee_buf** %5, align 8
  %47 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %48 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %47, i32 0, i32 0
  store %struct.ieee_buf* %46, %struct.ieee_buf** %48, align 8
  br label %49

49:                                               ; preds = %40, %2
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %52 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %51, i32 0, i32 0
  %53 = load %struct.ieee_buf*, %struct.ieee_buf** %52, align 8
  %54 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %57 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %56, i32 0, i32 0
  %58 = load %struct.ieee_buf*, %struct.ieee_buf** %57, align 8
  %59 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  store i32 %50, i32* %61, align 4
  %62 = load %struct.ieee_handle*, %struct.ieee_handle** %3, align 8
  %63 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %62, i32 0, i32 0
  %64 = load %struct.ieee_buf*, %struct.ieee_buf** %63, align 8
  %65 = getelementptr inbounds %struct.ieee_buf, %struct.ieee_buf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* @TRUE, align 4
  ret i32 %68
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
