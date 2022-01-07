; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_join(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %8 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @trace_xfs_da_join(i32 %10)
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i64 %20
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %4, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i64 %30
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %5, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 129
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 130
  br i1 %45, label %51, label %46

46:                                               ; preds = %1
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 128
  br label %51

51:                                               ; preds = %46, %1
  %52 = phi i1 [ true, %1 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  br label %55

55:                                               ; preds = %153, %51
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %59, 2
  br i1 %60, label %61, label %163

61:                                               ; preds = %55
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  switch i64 %64, label %120 [
    i64 130, label %65
    i64 128, label %81
    i64 129, label %97
  ]

65:                                               ; preds = %61
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %67 = call i32 @xfs_attr_leaf_toosmall(%struct.TYPE_27__* %66, i32* %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %179

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %179

76:                                               ; preds = %72
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = call i32 @xfs_attr_leaf_unbalance(%struct.TYPE_27__* %77, %struct.TYPE_28__* %78, %struct.TYPE_28__* %79)
  br label %120

81:                                               ; preds = %61
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %83 = call i32 @xfs_dir2_leafn_toosmall(%struct.TYPE_27__* %82, i32* %6)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %179

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %179

92:                                               ; preds = %88
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = call i32 @xfs_dir2_leafn_unbalance(%struct.TYPE_27__* %93, %struct.TYPE_28__* %94, %struct.TYPE_28__* %95)
  br label %120

97:                                               ; preds = %61
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %100 = call i32 @xfs_da_node_remove(%struct.TYPE_27__* %98, %struct.TYPE_28__* %99)
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = call i32 @xfs_da_fixhashpath(%struct.TYPE_27__* %101, %struct.TYPE_26__* %103)
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %106 = call i32 @xfs_da_node_toosmall(%struct.TYPE_27__* %105, i32* %6)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %179

111:                                              ; preds = %97
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %179

115:                                              ; preds = %111
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %119 = call i32 @xfs_da_node_unbalance(%struct.TYPE_27__* %116, %struct.TYPE_28__* %117, %struct.TYPE_28__* %118)
  br label %120

120:                                              ; preds = %61, %115, %92, %76
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 2
  %124 = call i32 @xfs_da_fixhashpath(%struct.TYPE_27__* %121, %struct.TYPE_26__* %123)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %128 = call i32 @xfs_da_blk_unlink(%struct.TYPE_27__* %125, %struct.TYPE_28__* %126, %struct.TYPE_28__* %127)
  store i32 %128, i32* %7, align 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %130 = call i32 @xfs_da_state_kill_altpath(%struct.TYPE_27__* %129)
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %179

135:                                              ; preds = %120
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @xfs_da_shrink_inode(i32 %138, i32 %141, i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  store i32* null, i32** %147, align 8
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %179

152:                                              ; preds = %135
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 -1
  store %struct.TYPE_28__* %155, %struct.TYPE_28__** %4, align 8
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 -1
  store %struct.TYPE_28__* %157, %struct.TYPE_28__** %5, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %161, -1
  store i64 %162, i64* %160, align 8
  br label %55

163:                                              ; preds = %55
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %166 = call i32 @xfs_da_node_remove(%struct.TYPE_27__* %164, %struct.TYPE_28__* %165)
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = call i32 @xfs_da_fixhashpath(%struct.TYPE_27__* %167, %struct.TYPE_26__* %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i64 0
  %177 = call i32 @xfs_da_root_join(%struct.TYPE_27__* %171, %struct.TYPE_28__* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %163, %150, %133, %114, %109, %91, %86, %75, %70
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @trace_xfs_da_join(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr_leaf_toosmall(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @xfs_attr_leaf_unbalance(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_dir2_leafn_toosmall(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @xfs_dir2_leafn_unbalance(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_da_node_remove(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_da_fixhashpath(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @xfs_da_node_toosmall(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @xfs_da_node_unbalance(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_da_blk_unlink(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_da_state_kill_altpath(%struct.TYPE_27__*) #1

declare dso_local i32 @xfs_da_shrink_inode(i32, i32, i32*) #1

declare dso_local i32 @xfs_da_root_join(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
