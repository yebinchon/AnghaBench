; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_hashtab.c_hashtab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i64, i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)*, %struct.hashtab_node** }
%struct.hashtab_node = type { %struct.hashtab_node*, i8*, i8* }

@HASHTAB_MAX_NODES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashtab_insert(%struct.hashtab* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hashtab_node*, align 8
  %10 = alloca %struct.hashtab_node*, align 8
  %11 = alloca %struct.hashtab_node*, align 8
  store %struct.hashtab* %0, %struct.hashtab** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %13 = icmp ne %struct.hashtab* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %16 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HASHTAB_MAX_NODES, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %120

23:                                               ; preds = %14
  %24 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %25 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %24, i32 0, i32 1
  %26 = load i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*)** %25, align 8
  %27 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 %26(%struct.hashtab* %27, i8* %28)
  store i64 %29, i64* %8, align 8
  store %struct.hashtab_node* null, %struct.hashtab_node** %9, align 8
  %30 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %31 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %30, i32 0, i32 3
  %32 = load %struct.hashtab_node**, %struct.hashtab_node*** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %32, i64 %33
  %35 = load %struct.hashtab_node*, %struct.hashtab_node** %34, align 8
  store %struct.hashtab_node* %35, %struct.hashtab_node** %10, align 8
  br label %36

36:                                               ; preds = %52, %23
  %37 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %38 = icmp ne %struct.hashtab_node* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %41 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %40, i32 0, i32 2
  %42 = load i64 (%struct.hashtab*, i8*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)** %41, align 8
  %43 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %46 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 %42(%struct.hashtab* %43, i8* %44, i8* %47)
  %49 = icmp sgt i64 %48, 0
  br label %50

50:                                               ; preds = %39, %36
  %51 = phi i1 [ false, %36 ], [ %49, %39 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  store %struct.hashtab_node* %53, %struct.hashtab_node** %9, align 8
  %54 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %55 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %54, i32 0, i32 0
  %56 = load %struct.hashtab_node*, %struct.hashtab_node** %55, align 8
  store %struct.hashtab_node* %56, %struct.hashtab_node** %10, align 8
  br label %36

57:                                               ; preds = %50
  %58 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %59 = icmp ne %struct.hashtab_node* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %62 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %61, i32 0, i32 2
  %63 = load i64 (%struct.hashtab*, i8*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)** %62, align 8
  %64 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %67 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 %63(%struct.hashtab* %64, i8* %65, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %120

74:                                               ; preds = %60, %57
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.hashtab_node* @kzalloc(i32 24, i32 %75)
  store %struct.hashtab_node* %76, %struct.hashtab_node** %11, align 8
  %77 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %78 = icmp eq %struct.hashtab_node* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %120

82:                                               ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %85 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %88 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %90 = icmp ne %struct.hashtab_node* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %93 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %92, i32 0, i32 0
  %94 = load %struct.hashtab_node*, %struct.hashtab_node** %93, align 8
  %95 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %96 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %95, i32 0, i32 0
  store %struct.hashtab_node* %94, %struct.hashtab_node** %96, align 8
  %97 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %98 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %99 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %98, i32 0, i32 0
  store %struct.hashtab_node* %97, %struct.hashtab_node** %99, align 8
  br label %115

100:                                              ; preds = %82
  %101 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %102 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %101, i32 0, i32 3
  %103 = load %struct.hashtab_node**, %struct.hashtab_node*** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %103, i64 %104
  %106 = load %struct.hashtab_node*, %struct.hashtab_node** %105, align 8
  %107 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %108 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %107, i32 0, i32 0
  store %struct.hashtab_node* %106, %struct.hashtab_node** %108, align 8
  %109 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %110 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %111 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %110, i32 0, i32 3
  %112 = load %struct.hashtab_node**, %struct.hashtab_node*** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %112, i64 %113
  store %struct.hashtab_node* %109, %struct.hashtab_node** %114, align 8
  br label %115

115:                                              ; preds = %100, %91
  %116 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %117 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %79, %71, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.hashtab_node* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
