; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*, i32)*, %struct.hashtab_node** }
%struct.hashtab_node = type { i8*, i32, %struct.hashtab_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hashtab_search(%struct.hashtab* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hashtab*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hashtab_node*, align 8
  store %struct.hashtab* %0, %struct.hashtab** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %9 = icmp ne %struct.hashtab* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %13 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %12, i32 0, i32 0
  %14 = load i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*)** %13, align 8
  %15 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 %14(%struct.hashtab* %15, i8* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %19 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %18, i32 0, i32 2
  %20 = load %struct.hashtab_node**, %struct.hashtab_node*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %20, i64 %21
  %23 = load %struct.hashtab_node*, %struct.hashtab_node** %22, align 8
  store %struct.hashtab_node* %23, %struct.hashtab_node** %7, align 8
  br label %24

24:                                               ; preds = %40, %11
  %25 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %26 = icmp ne %struct.hashtab_node* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %29 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %28, i32 0, i32 1
  %30 = load i64 (%struct.hashtab*, i8*, i32)*, i64 (%struct.hashtab*, i8*, i32)** %29, align 8
  %31 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %34 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 %30(%struct.hashtab* %31, i8* %32, i32 %35)
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %27, %24
  %39 = phi i1 [ false, %24 ], [ %37, %27 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %42 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %41, i32 0, i32 2
  %43 = load %struct.hashtab_node*, %struct.hashtab_node** %42, align 8
  store %struct.hashtab_node* %43, %struct.hashtab_node** %7, align 8
  br label %24

44:                                               ; preds = %38
  %45 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %46 = icmp eq %struct.hashtab_node* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %49 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %48, i32 0, i32 1
  %50 = load i64 (%struct.hashtab*, i8*, i32)*, i64 (%struct.hashtab*, i8*, i32)** %49, align 8
  %51 = load %struct.hashtab*, %struct.hashtab** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %54 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 %50(%struct.hashtab* %51, i8* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47, %44
  store i8* null, i8** %3, align 8
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.hashtab_node*, %struct.hashtab_node** %7, align 8
  %61 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %59, %58, %10
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
