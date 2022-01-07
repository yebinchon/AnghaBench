; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file.c_copy_fdtable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file.c_copy_fdtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, i64, i64, i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdtable*, %struct.fdtable*)* @copy_fdtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_fdtable(%struct.fdtable* %0, %struct.fdtable* %1) #0 {
  %3 = alloca %struct.fdtable*, align 8
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fdtable* %0, %struct.fdtable** %3, align 8
  store %struct.fdtable* %1, %struct.fdtable** %4, align 8
  %7 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %8 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %11 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %17 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %23 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %26 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %33 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %36 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @memcpy(i64 %34, i64 %37, i32 %38)
  %40 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %41 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memset(i8* %46, i32 0, i32 %47)
  %49 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %50 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BITS_PER_BYTE, align 4
  %53 = udiv i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %55 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %58 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %56, %59
  %61 = load i32, i32* @BITS_PER_BYTE, align 4
  %62 = udiv i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %64 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %67 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @memcpy(i64 %65, i64 %68, i32 %69)
  %71 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %72 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @memset(i8* %77, i32 0, i32 %78)
  %80 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %81 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %84 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @memcpy(i64 %82, i64 %85, i32 %86)
  %88 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %89 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @memset(i8* %94, i32 0, i32 %95)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
