; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_endian.h_fsds_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_endian.h_fsds_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8** }
%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32* }

@BEFS_NUM_DIRECT_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.super_block*, %struct.TYPE_5__*)* @fsds_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsds_to_cpu(%struct.TYPE_6__* noalias sret %0, %struct.super_block* %1, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %3
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BEFS_NUM_DIRECT_BLOCKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @fsrun_to_cpu(%struct.super_block* %11, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %18, i8** %23, align 8
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @fs64_to_cpu(%struct.super_block* %28, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @fsrun_to_cpu(%struct.super_block* %33, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @fs64_to_cpu(%struct.super_block* %38, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @fsrun_to_cpu(%struct.super_block* %43, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @fs64_to_cpu(%struct.super_block* %48, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @fs64_to_cpu(%struct.super_block* %53, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  ret void
}

declare dso_local i8* @fsrun_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
