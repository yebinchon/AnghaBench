; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i64, %struct.hashtab_node** }
%struct.hashtab_node = type { %struct.hashtab_node* }
%struct.hashtab_info = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashtab_stat(%struct.hashtab* %0, %struct.hashtab_info* %1) #0 {
  %3 = alloca %struct.hashtab*, align 8
  %4 = alloca %struct.hashtab_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hashtab_node*, align 8
  store %struct.hashtab* %0, %struct.hashtab** %3, align 8
  store %struct.hashtab_info* %1, %struct.hashtab_info** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.hashtab*, %struct.hashtab** %3, align 8
  %13 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.hashtab*, %struct.hashtab** %3, align 8
  %18 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %17, i32 0, i32 1
  %19 = load %struct.hashtab_node**, %struct.hashtab_node*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %19, i64 %20
  %22 = load %struct.hashtab_node*, %struct.hashtab_node** %21, align 8
  store %struct.hashtab_node* %22, %struct.hashtab_node** %9, align 8
  %23 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %24 = icmp ne %struct.hashtab_node* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %31, %25
  %29 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %30 = icmp ne %struct.hashtab_node* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  %34 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %35 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %34, i32 0, i32 0
  %36 = load %struct.hashtab_node*, %struct.hashtab_node** %35, align 8
  store %struct.hashtab_node* %36, %struct.hashtab_node** %9, align 8
  br label %28

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %10

48:                                               ; preds = %10
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.hashtab_info*, %struct.hashtab_info** %4, align 8
  %51 = getelementptr inbounds %struct.hashtab_info, %struct.hashtab_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.hashtab_info*, %struct.hashtab_info** %4, align 8
  %54 = getelementptr inbounds %struct.hashtab_info, %struct.hashtab_info* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
