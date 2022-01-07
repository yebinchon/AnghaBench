; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i64, i32, %struct.z_candidate*, i8*, i8*, i32**, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate**, i8*, i8*, i64, i32**, i8*, i8*, i32)* @add_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @add_candidate(%struct.z_candidate** %0, i8* %1, i8* %2, i64 %3, i32** %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.z_candidate**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_candidate*, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = call i64 @conversion_obstack_alloc(i32 64)
  %19 = inttoptr i64 %18 to %struct.z_candidate*
  store %struct.z_candidate* %19, %struct.z_candidate** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %22 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %25 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i32**, i32*** %13, align 8
  %27 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %28 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %27, i32 0, i32 5
  store i32** %26, i32*** %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %31 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %34 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %37 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %40 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.z_candidate**, %struct.z_candidate*** %9, align 8
  %42 = load %struct.z_candidate*, %struct.z_candidate** %41, align 8
  %43 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %44 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %43, i32 0, i32 2
  store %struct.z_candidate* %42, %struct.z_candidate** %44, align 8
  %45 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  %46 = load %struct.z_candidate**, %struct.z_candidate*** %9, align 8
  store %struct.z_candidate* %45, %struct.z_candidate** %46, align 8
  %47 = load %struct.z_candidate*, %struct.z_candidate** %17, align 8
  ret %struct.z_candidate* %47
}

declare dso_local i64 @conversion_obstack_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
