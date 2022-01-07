; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i64, i32, %struct.sidtab_node** }
%struct.sidtab_node = type { i64, %struct.sidtab_node*, i32 }
%struct.context = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_insert(%struct.sidtab* %0, i64 %1, %struct.context* %2) #0 {
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sidtab_node*, align 8
  %10 = alloca %struct.sidtab_node*, align 8
  %11 = alloca %struct.sidtab_node*, align 8
  store %struct.sidtab* %0, %struct.sidtab** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.context* %2, %struct.context** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %13 = icmp ne %struct.sidtab* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  br label %124

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @SIDTAB_HASH(i64 %18)
  store i32 %19, i32* %7, align 4
  store %struct.sidtab_node* null, %struct.sidtab_node** %9, align 8
  %20 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %21 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %20, i32 0, i32 2
  %22 = load %struct.sidtab_node**, %struct.sidtab_node*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %22, i64 %24
  %26 = load %struct.sidtab_node*, %struct.sidtab_node** %25, align 8
  store %struct.sidtab_node* %26, %struct.sidtab_node** %10, align 8
  br label %27

27:                                               ; preds = %38, %17
  %28 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  %29 = icmp ne %struct.sidtab_node* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  %33 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i1 [ false, %27 ], [ %35, %30 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  store %struct.sidtab_node* %39, %struct.sidtab_node** %9, align 8
  %40 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  %41 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %40, i32 0, i32 1
  %42 = load %struct.sidtab_node*, %struct.sidtab_node** %41, align 8
  store %struct.sidtab_node* %42, %struct.sidtab_node** %10, align 8
  br label %27

43:                                               ; preds = %36
  %44 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  %45 = icmp ne %struct.sidtab_node* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.sidtab_node*, %struct.sidtab_node** %10, align 8
  %49 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EEXIST, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %124

55:                                               ; preds = %46, %43
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call %struct.sidtab_node* @kmalloc(i32 24, i32 %56)
  store %struct.sidtab_node* %57, %struct.sidtab_node** %11, align 8
  %58 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %59 = icmp eq %struct.sidtab_node* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %124

63:                                               ; preds = %55
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %66 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %68 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %67, i32 0, i32 2
  %69 = load %struct.context*, %struct.context** %6, align 8
  %70 = call i64 @context_cpy(i32* %68, %struct.context* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %74 = call i32 @kfree(%struct.sidtab_node* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %124

77:                                               ; preds = %63
  %78 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %79 = icmp ne %struct.sidtab_node* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %82 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %81, i32 0, i32 1
  %83 = load %struct.sidtab_node*, %struct.sidtab_node** %82, align 8
  %84 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %85 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %84, i32 0, i32 1
  store %struct.sidtab_node* %83, %struct.sidtab_node** %85, align 8
  %86 = call i32 (...) @wmb()
  %87 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %88 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %89 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %88, i32 0, i32 1
  store %struct.sidtab_node* %87, %struct.sidtab_node** %89, align 8
  br label %108

90:                                               ; preds = %77
  %91 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %92 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %91, i32 0, i32 2
  %93 = load %struct.sidtab_node**, %struct.sidtab_node*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %93, i64 %95
  %97 = load %struct.sidtab_node*, %struct.sidtab_node** %96, align 8
  %98 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %99 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %98, i32 0, i32 1
  store %struct.sidtab_node* %97, %struct.sidtab_node** %99, align 8
  %100 = call i32 (...) @wmb()
  %101 = load %struct.sidtab_node*, %struct.sidtab_node** %11, align 8
  %102 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %103 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %102, i32 0, i32 2
  %104 = load %struct.sidtab_node**, %struct.sidtab_node*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %104, i64 %106
  store %struct.sidtab_node* %101, %struct.sidtab_node** %107, align 8
  br label %108

108:                                              ; preds = %90, %80
  %109 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %110 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %115 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load i64, i64* %5, align 8
  %120 = add nsw i64 %119, 1
  %121 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %122 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %108
  br label %124

124:                                              ; preds = %123, %72, %60, %52, %14
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @SIDTAB_HASH(i64) #1

declare dso_local %struct.sidtab_node* @kmalloc(i32, i32) #1

declare dso_local i64 @context_cpy(i32*, %struct.context*) #1

declare dso_local i32 @kfree(%struct.sidtab_node*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
