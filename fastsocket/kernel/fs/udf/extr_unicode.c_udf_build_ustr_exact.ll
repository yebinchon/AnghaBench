; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_build_ustr_exact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_unicode.c_udf_build_ustr_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustr*, i32*, i32)* @udf_build_ustr_exact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_build_ustr_exact(%struct.ustr* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ustr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ustr* %0, %struct.ustr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ustr*, %struct.ustr** %5, align 8
  %9 = icmp ne %struct.ustr* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %37

17:                                               ; preds = %13
  %18 = load %struct.ustr*, %struct.ustr** %5, align 8
  %19 = call i32 @memset(%struct.ustr* %18, i32 0, i32 12)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ustr*, %struct.ustr** %5, align 8
  %24 = getelementptr inbounds %struct.ustr, %struct.ustr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.ustr*, %struct.ustr** %5, align 8
  %28 = getelementptr inbounds %struct.ustr, %struct.ustr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ustr*, %struct.ustr** %5, align 8
  %30 = getelementptr inbounds %struct.ustr, %struct.ustr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @memcpy(i32 %31, i32* %33, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %17, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.ustr*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
