; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_node* @avtab_search_node(%struct.avtab* %0, %struct.avtab_key* %1) #0 {
  %3 = alloca %struct.avtab_node*, align 8
  %4 = alloca %struct.avtab*, align 8
  %5 = alloca %struct.avtab_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.avtab_node*, align 8
  %8 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %4, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %5, align 8
  %9 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %10 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AVTAB_ENABLED, align 4
  %13 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.avtab*, %struct.avtab** %4, align 8
  %18 = icmp ne %struct.avtab* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.avtab*, %struct.avtab** %4, align 8
  %21 = getelementptr inbounds %struct.avtab, %struct.avtab* %20, i32 0, i32 0
  %22 = load %struct.avtab_node**, %struct.avtab_node*** %21, align 8
  %23 = icmp ne %struct.avtab_node** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %141

25:                                               ; preds = %19
  %26 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %27 = load %struct.avtab*, %struct.avtab** %4, align 8
  %28 = getelementptr inbounds %struct.avtab, %struct.avtab* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @avtab_hash(%struct.avtab_key* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.avtab*, %struct.avtab** %4, align 8
  %32 = getelementptr inbounds %struct.avtab, %struct.avtab* %31, i32 0, i32 0
  %33 = load %struct.avtab_node**, %struct.avtab_node*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %33, i64 %35
  %37 = load %struct.avtab_node*, %struct.avtab_node** %36, align 8
  store %struct.avtab_node* %37, %struct.avtab_node** %7, align 8
  br label %38

38:                                               ; preds = %136, %25
  %39 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %40 = icmp ne %struct.avtab_node* %39, null
  br i1 %40, label %41, label %140

41:                                               ; preds = %38
  %42 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %43 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %46 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %41
  %51 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %52 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %55 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %50
  %60 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %61 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %64 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %71 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  store %struct.avtab_node* %77, %struct.avtab_node** %3, align 8
  br label %141

78:                                               ; preds = %68, %59, %50, %41
  %79 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %80 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %83 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %140

88:                                               ; preds = %78
  %89 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %90 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %93 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %99 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %102 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %140

107:                                              ; preds = %97, %88
  %108 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %109 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %112 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %110, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %107
  %117 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %118 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %121 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %119, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %116
  %126 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %127 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %130 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %140

135:                                              ; preds = %125, %116, %107
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %138 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %137, i32 0, i32 1
  %139 = load %struct.avtab_node*, %struct.avtab_node** %138, align 8
  store %struct.avtab_node* %139, %struct.avtab_node** %7, align 8
  br label %38

140:                                              ; preds = %134, %106, %87, %38
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %141

141:                                              ; preds = %140, %76, %24
  %142 = load %struct.avtab_node*, %struct.avtab_node** %3, align 8
  ret %struct.avtab_node* %142
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
