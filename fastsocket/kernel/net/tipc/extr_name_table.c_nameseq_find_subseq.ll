; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_nameseq_find_subseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_nameseq_find_subseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_seq = type { i64, i64 }
%struct.name_seq = type { i32, %struct.sub_seq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sub_seq* (%struct.name_seq*, i64)* @nameseq_find_subseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sub_seq* @nameseq_find_subseq(%struct.name_seq* %0, i64 %1) #0 {
  %3 = alloca %struct.sub_seq*, align 8
  %4 = alloca %struct.name_seq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sub_seq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.name_seq* %0, %struct.name_seq** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %11 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %10, i32 0, i32 1
  %12 = load %struct.sub_seq*, %struct.sub_seq** %11, align 8
  store %struct.sub_seq* %12, %struct.sub_seq** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %14 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %55, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.sub_seq*, %struct.sub_seq** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %27, i64 %29
  %31 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %55

37:                                               ; preds = %21
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.sub_seq*, %struct.sub_seq** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %39, i64 %41
  %43 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.sub_seq*, %struct.sub_seq** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %50, i64 %52
  store %struct.sub_seq* %53, %struct.sub_seq** %3, align 8
  br label %57

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %34
  br label %17

56:                                               ; preds = %17
  store %struct.sub_seq* null, %struct.sub_seq** %3, align 8
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.sub_seq*, %struct.sub_seq** %3, align 8
  ret %struct.sub_seq* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
