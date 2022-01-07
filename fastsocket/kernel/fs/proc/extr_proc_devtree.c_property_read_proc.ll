; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_property_read_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c_property_read_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64, i32, i32*, i8*)* @property_read_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_read_proc(i8* %0, i8** %1, i64 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.property*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.property*
  store %struct.property* %17, %struct.property** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.property*, %struct.property** %14, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32*, i32** %12, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %7, align 4
  br label %52

25:                                               ; preds = %6
  %26 = load %struct.property*, %struct.property** %14, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %15, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32*, i32** %12, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.property*, %struct.property** %14, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @memcpy(i8* %40, i8* %46, i32 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i8**, i8*** %9, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %39, %23
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
