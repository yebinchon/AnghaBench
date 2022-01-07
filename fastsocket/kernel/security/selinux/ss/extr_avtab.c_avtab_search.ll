; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_datum = type { i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_datum, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_datum* @avtab_search(%struct.avtab* %0, %struct.avtab_key* %1) #0 {
  %3 = alloca %struct.avtab_datum*, align 8
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
  store %struct.avtab_datum* null, %struct.avtab_datum** %3, align 8
  br label %142

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

38:                                               ; preds = %137, %25
  %39 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %40 = icmp ne %struct.avtab_node* %39, null
  br i1 %40, label %41, label %141

41:                                               ; preds = %38
  %42 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %43 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %46 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %41
  %51 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %52 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %55 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %61 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %64 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %71 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %78 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %77, i32 0, i32 1
  store %struct.avtab_datum* %78, %struct.avtab_datum** %3, align 8
  br label %142

79:                                               ; preds = %68, %59, %50, %41
  %80 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %81 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %84 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %141

89:                                               ; preds = %79
  %90 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %91 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %94 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %89
  %99 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %100 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %103 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %141

108:                                              ; preds = %98, %89
  %109 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %110 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %113 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %108
  %118 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %119 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %122 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %120, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %117
  %127 = load %struct.avtab_key*, %struct.avtab_key** %5, align 8
  %128 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %131 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %141

136:                                              ; preds = %126, %117, %108
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.avtab_node*, %struct.avtab_node** %7, align 8
  %139 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %138, i32 0, i32 2
  %140 = load %struct.avtab_node*, %struct.avtab_node** %139, align 8
  store %struct.avtab_node* %140, %struct.avtab_node** %7, align 8
  br label %38

141:                                              ; preds = %135, %107, %88, %38
  store %struct.avtab_datum* null, %struct.avtab_datum** %3, align 8
  br label %142

142:                                              ; preds = %141, %76, %24
  %143 = load %struct.avtab_datum*, %struct.avtab_datum** %3, align 8
  ret %struct.avtab_datum* %143
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
