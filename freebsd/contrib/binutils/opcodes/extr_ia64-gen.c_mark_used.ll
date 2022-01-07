; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_mark_used.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-gen.c_mark_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iclass = type { i32, i32, i64*, i32, i64*, i64 }

@ics = common dso_local global %struct.iclass** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iclass*, i32)* @mark_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_used(%struct.iclass* %0, i32 %1) #0 {
  %3 = alloca %struct.iclass*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iclass* %0, %struct.iclass** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iclass*, %struct.iclass** %3, align 8
  %7 = getelementptr inbounds %struct.iclass, %struct.iclass* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.iclass*, %struct.iclass** %3, align 8
  %12 = getelementptr inbounds %struct.iclass, %struct.iclass* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.iclass*, %struct.iclass** %3, align 8
  %17 = getelementptr inbounds %struct.iclass, %struct.iclass* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %22 = load %struct.iclass*, %struct.iclass** %3, align 8
  %23 = getelementptr inbounds %struct.iclass, %struct.iclass* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.iclass*, %struct.iclass** %21, i64 %28
  %30 = load %struct.iclass*, %struct.iclass** %29, align 8
  %31 = load i32, i32* %4, align 4
  call void @mark_used(%struct.iclass* %30, i32 %31)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %14

35:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %54, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.iclass*, %struct.iclass** %3, align 8
  %39 = getelementptr inbounds %struct.iclass, %struct.iclass* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.iclass**, %struct.iclass*** @ics, align 8
  %44 = load %struct.iclass*, %struct.iclass** %3, align 8
  %45 = getelementptr inbounds %struct.iclass, %struct.iclass* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.iclass*, %struct.iclass** %43, i64 %50
  %52 = load %struct.iclass*, %struct.iclass** %51, align 8
  %53 = load i32, i32* %4, align 4
  call void @mark_used(%struct.iclass* %52, i32 %53)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %36

57:                                               ; preds = %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
