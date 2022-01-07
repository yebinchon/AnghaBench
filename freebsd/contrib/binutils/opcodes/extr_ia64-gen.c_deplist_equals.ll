; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_deplist_equals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_deplist_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deplist = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.deplist*, %struct.deplist*)* @deplist_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deplist_equals(%struct.deplist* %0, %struct.deplist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.deplist*, align 8
  %5 = alloca %struct.deplist*, align 8
  %6 = alloca i32, align 4
  store %struct.deplist* %0, %struct.deplist** %4, align 8
  store %struct.deplist* %1, %struct.deplist** %5, align 8
  %7 = load %struct.deplist*, %struct.deplist** %4, align 8
  %8 = getelementptr inbounds %struct.deplist, %struct.deplist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.deplist*, %struct.deplist** %5, align 8
  %11 = getelementptr inbounds %struct.deplist, %struct.deplist* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.deplist*, %struct.deplist** %4, align 8
  %19 = getelementptr inbounds %struct.deplist, %struct.deplist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.deplist*, %struct.deplist** %4, align 8
  %24 = getelementptr inbounds %struct.deplist, %struct.deplist* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.deplist*, %struct.deplist** %5, align 8
  %31 = getelementptr inbounds %struct.deplist, %struct.deplist* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
