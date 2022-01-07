; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_splice_viable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_splice_viable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32, %struct.z_candidate* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate*, i32, i32*)* @splice_viable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @splice_viable(%struct.z_candidate* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.z_candidate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.z_candidate*, align 8
  %8 = alloca %struct.z_candidate**, align 8
  %9 = alloca %struct.z_candidate**, align 8
  %10 = alloca %struct.z_candidate*, align 8
  store %struct.z_candidate* %0, %struct.z_candidate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %7, align 8
  store %struct.z_candidate** %7, %struct.z_candidate*** %8, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  store %struct.z_candidate** %4, %struct.z_candidate*** %9, align 8
  br label %12

12:                                               ; preds = %46, %3
  %13 = load %struct.z_candidate**, %struct.z_candidate*** %9, align 8
  %14 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %15 = icmp ne %struct.z_candidate* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.z_candidate**, %struct.z_candidate*** %9, align 8
  %18 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  store %struct.z_candidate* %18, %struct.z_candidate** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %23 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %31, label %43

26:                                               ; preds = %16
  %27 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %28 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %21
  %32 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %33 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  store %struct.z_candidate* %32, %struct.z_candidate** %33, align 8
  %34 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %35 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %34, i32 0, i32 1
  %36 = load %struct.z_candidate*, %struct.z_candidate** %35, align 8
  %37 = load %struct.z_candidate**, %struct.z_candidate*** %9, align 8
  store %struct.z_candidate* %36, %struct.z_candidate** %37, align 8
  %38 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %39 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %38, i32 0, i32 1
  store %struct.z_candidate* null, %struct.z_candidate** %39, align 8
  %40 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %41 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %40, i32 0, i32 1
  store %struct.z_candidate** %41, %struct.z_candidate*** %8, align 8
  %42 = load i32*, i32** %6, align 8
  store i32 1, i32* %42, align 4
  br label %46

43:                                               ; preds = %26, %21
  %44 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  %45 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %44, i32 0, i32 1
  store %struct.z_candidate** %45, %struct.z_candidate*** %9, align 8
  br label %46

46:                                               ; preds = %43, %31
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  %49 = icmp ne %struct.z_candidate* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.z_candidate*, %struct.z_candidate** %7, align 8
  br label %54

52:                                               ; preds = %47
  %53 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi %struct.z_candidate* [ %51, %50 ], [ %53, %52 ]
  ret %struct.z_candidate* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
