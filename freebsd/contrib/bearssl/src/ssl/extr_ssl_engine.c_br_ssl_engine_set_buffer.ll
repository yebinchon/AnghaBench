; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_set_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_engine.c_br_ssl_engine_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_IN_OVERHEAD = common dso_local global i32 0, align 4
@MAX_OUT_OVERHEAD = common dso_local global i32 0, align 4
@BR_IO_FAILED = common dso_local global i32 0, align 4
@BR_ERR_BAD_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_ssl_engine_set_buffer(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32 @br_ssl_engine_set_buffers_bidi(%struct.TYPE_4__* %13, i8* null, i64 0, i8* null, i64 0)
  br label %71

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @MAX_IN_OVERHEAD, align 4
  %21 = add nsw i32 512, %20
  %22 = add nsw i32 %21, 512
  %23 = load i32, i32* @MAX_OUT_OVERHEAD, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %19, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i32, i32* @BR_IO_FAILED, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @BR_ERR_BAD_PARAM, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %71

34:                                               ; preds = %18
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @MAX_IN_OVERHEAD, align 4
  %37 = add nsw i32 16384, %36
  %38 = add nsw i32 %37, 512
  %39 = load i32, i32* @MAX_OUT_OVERHEAD, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %35, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @MAX_OUT_OVERHEAD, align 4
  %45 = add nsw i32 512, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %9, align 8
  br label %53

47:                                               ; preds = %34
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* @MAX_IN_OVERHEAD, align 4
  %50 = add nsw i32 16384, %49
  %51 = sext i32 %50 to i64
  %52 = sub i64 %48, %51
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub i64 %57, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @br_ssl_engine_set_buffers_bidi(%struct.TYPE_4__* %55, i8* %56, i64 %59, i8* %62, i64 %63)
  br label %70

65:                                               ; preds = %15
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @br_ssl_engine_set_buffers_bidi(%struct.TYPE_4__* %66, i8* %67, i64 %68, i8* null, i64 0)
  br label %70

70:                                               ; preds = %65, %54
  br label %71

71:                                               ; preds = %27, %70, %12
  ret void
}

declare dso_local i32 @br_ssl_engine_set_buffers_bidi(%struct.TYPE_4__*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
