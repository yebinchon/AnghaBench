; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_iov_iter_advance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_iov_iter_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i64, i32, i64, %struct.iovec* }
%struct.iovec = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iov_iter_advance(%struct.iov_iter* %0, i64 %1) #0 {
  %3 = alloca %struct.iov_iter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %9 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %16 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %25 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %30 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %114

33:                                               ; preds = %2
  %34 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %35 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %34, i32 0, i32 3
  %36 = load %struct.iovec*, %struct.iovec** %35, align 8
  store %struct.iovec* %36, %struct.iovec** %5, align 8
  %37 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %38 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %106, %33
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %45 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.iovec*, %struct.iovec** %5, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %40
  %60 = phi i1 [ true, %40 ], [ %58, %54 ]
  br i1 %60, label %61, label %107

61:                                               ; preds = %59
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.iovec*, %struct.iovec** %5, align 8
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @min(i64 %62, i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %70 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %75 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br label %80

80:                                               ; preds = %73, %61
  %81 = phi i1 [ true, %61 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %87 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %4, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load %struct.iovec*, %struct.iovec** %5, align 8
  %99 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %80
  %104 = load %struct.iovec*, %struct.iovec** %5, align 8
  %105 = getelementptr inbounds %struct.iovec, %struct.iovec* %104, i32 1
  store %struct.iovec* %105, %struct.iovec** %5, align 8
  store i64 0, i64* %6, align 8
  br label %106

106:                                              ; preds = %103, %80
  br label %40

107:                                              ; preds = %59
  %108 = load %struct.iovec*, %struct.iovec** %5, align 8
  %109 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %110 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %109, i32 0, i32 3
  store %struct.iovec* %108, %struct.iovec** %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %113 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %22
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
