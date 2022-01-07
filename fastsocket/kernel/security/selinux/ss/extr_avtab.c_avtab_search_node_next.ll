; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search_node_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_search_node_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_node* @avtab_search_node_next(%struct.avtab_node* %0, i32 %1) #0 {
  %3 = alloca %struct.avtab_node*, align 8
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.avtab_node*, align 8
  store %struct.avtab_node* %0, %struct.avtab_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %8 = icmp ne %struct.avtab_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %132

10:                                               ; preds = %2
  %11 = load i32, i32* @AVTAB_ENABLED, align 4
  %12 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %18 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %17, i32 0, i32 1
  %19 = load %struct.avtab_node*, %struct.avtab_node** %18, align 8
  store %struct.avtab_node* %19, %struct.avtab_node** %6, align 8
  br label %20

20:                                               ; preds = %127, %10
  %21 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %22 = icmp ne %struct.avtab_node* %21, null
  br i1 %22, label %23, label %131

23:                                               ; preds = %20
  %24 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %25 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %29 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %23
  %34 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %35 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %39 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  %44 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %45 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %49 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %56 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  store %struct.avtab_node* %62, %struct.avtab_node** %3, align 8
  br label %132

63:                                               ; preds = %53, %43, %33, %23
  %64 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %65 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %69 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %131

74:                                               ; preds = %63
  %75 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %76 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %80 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %86 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %90 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %131

95:                                               ; preds = %84, %74
  %96 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %97 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %101 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %99, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %95
  %106 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %107 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %111 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %105
  %116 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %117 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %121 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %119, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %131

126:                                              ; preds = %115, %105, %95
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.avtab_node*, %struct.avtab_node** %6, align 8
  %129 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %128, i32 0, i32 1
  %130 = load %struct.avtab_node*, %struct.avtab_node** %129, align 8
  store %struct.avtab_node* %130, %struct.avtab_node** %6, align 8
  br label %20

131:                                              ; preds = %125, %94, %73, %20
  store %struct.avtab_node* null, %struct.avtab_node** %3, align 8
  br label %132

132:                                              ; preds = %131, %61, %9
  %133 = load %struct.avtab_node*, %struct.avtab_node** %3, align 8
  ret %struct.avtab_node* %133
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
