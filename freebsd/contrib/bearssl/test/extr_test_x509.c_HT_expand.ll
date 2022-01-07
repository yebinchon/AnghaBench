; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_HT_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_HT_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @HT_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HT_expand(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = shl i64 %14, 1
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = mul i64 %16, 8
  %18 = call %struct.TYPE_6__** @xmalloc(i64 %17)
  store %struct.TYPE_6__** %18, %struct.TYPE_6__*** %6, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %27, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %25
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %19

30:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %7, align 8
  br label %42

42:                                               ; preds = %69, %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hash_string(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = sub nsw i32 %52, 1
  %54 = and i32 %50, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %8, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %67
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %68, align 8
  br label %69

69:                                               ; preds = %45
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %7, align 8
  br label %42

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %31

75:                                               ; preds = %31
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = call i32 @xfree(%struct.TYPE_6__** %78)
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.TYPE_6__** %80, %struct.TYPE_6__*** %82, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local %struct.TYPE_6__** @xmalloc(i64) #1

declare dso_local i32 @hash_string(i32) #1

declare dso_local i32 @xfree(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
