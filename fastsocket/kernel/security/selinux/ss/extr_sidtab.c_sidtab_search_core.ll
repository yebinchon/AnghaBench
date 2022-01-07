; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_search_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_sidtab.c_sidtab_search_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64 }
%struct.sidtab = type { %struct.sidtab_node** }
%struct.sidtab_node = type { i64, %struct.context, %struct.sidtab_node* }

@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.context* (%struct.sidtab*, i64, i32)* @sidtab_search_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.context* @sidtab_search_core(%struct.sidtab* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sidtab_node*, align 8
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %11 = icmp ne %struct.sidtab* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.context* null, %struct.context** %4, align 8
  br label %114

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @SIDTAB_HASH(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %17 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %16, i32 0, i32 0
  %18 = load %struct.sidtab_node**, %struct.sidtab_node*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %18, i64 %20
  %22 = load %struct.sidtab_node*, %struct.sidtab_node** %21, align 8
  store %struct.sidtab_node* %22, %struct.sidtab_node** %9, align 8
  br label %23

23:                                               ; preds = %34, %13
  %24 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %25 = icmp ne %struct.sidtab_node* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %29 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ false, %23 ], [ %31, %26 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %36 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %35, i32 0, i32 2
  %37 = load %struct.sidtab_node*, %struct.sidtab_node** %36, align 8
  store %struct.sidtab_node* %37, %struct.sidtab_node** %9, align 8
  br label %23

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %43 = icmp ne %struct.sidtab_node* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %47 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %52 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.context, %struct.context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %58 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %57, i32 0, i32 1
  store %struct.context* %58, %struct.context** %4, align 8
  br label %114

59:                                               ; preds = %50, %44, %41, %38
  %60 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %61 = icmp eq %struct.sidtab_node* %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %65 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %70 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.context, %struct.context* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %68, %62, %59
  %75 = load i64, i64* @SECINITSID_UNLABELED, align 8
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @SIDTAB_HASH(i64 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %79 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %78, i32 0, i32 0
  %80 = load %struct.sidtab_node**, %struct.sidtab_node*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sidtab_node*, %struct.sidtab_node** %80, i64 %82
  %84 = load %struct.sidtab_node*, %struct.sidtab_node** %83, align 8
  store %struct.sidtab_node* %84, %struct.sidtab_node** %9, align 8
  br label %85

85:                                               ; preds = %96, %74
  %86 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %87 = icmp ne %struct.sidtab_node* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %91 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br label %94

94:                                               ; preds = %88, %85
  %95 = phi i1 [ false, %85 ], [ %93, %88 ]
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %98 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %97, i32 0, i32 2
  %99 = load %struct.sidtab_node*, %struct.sidtab_node** %98, align 8
  store %struct.sidtab_node* %99, %struct.sidtab_node** %9, align 8
  br label %85

100:                                              ; preds = %94
  %101 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %102 = icmp ne %struct.sidtab_node* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %106 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %100
  store %struct.context* null, %struct.context** %4, align 8
  br label %114

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %68
  %112 = load %struct.sidtab_node*, %struct.sidtab_node** %9, align 8
  %113 = getelementptr inbounds %struct.sidtab_node, %struct.sidtab_node* %112, i32 0, i32 1
  store %struct.context* %113, %struct.context** %4, align 8
  br label %114

114:                                              ; preds = %111, %109, %56, %12
  %115 = load %struct.context*, %struct.context** %4, align 8
  ret %struct.context* %115
}

declare dso_local i32 @SIDTAB_HASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
