; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@TRUE_DEP = common dso_local global i64 0, align 8
@MEM_DEP = common dso_local global i64 0, align 8
@REG_DEP = common dso_local global i64 0, align 8
@REG_DEP_ANTI = common dso_local global i64 0, align 8
@ANTI_DEP = common dso_local global i64 0, align 8
@REG_DEP_OUTPUT = common dso_local global i64 0, align 8
@OUTPUT_DEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32)* @create_ddg_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_ddg_dependence(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* @TRUE_DEP, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @mem_access_insn_p(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @mem_access_insn_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @MEM_DEP, align 8
  br label %39

37:                                               ; preds = %29, %4
  %38 = load i64, i64* @REG_DEP, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %14, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @REG_NOTE_KIND(i32 %47)
  %49 = load i64, i64* @REG_DEP_ANTI, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @ANTI_DEP, align 8
  store i64 %52, i64* %13, align 8
  br label %61

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @REG_NOTE_KIND(i32 %54)
  %56 = load i64, i64* @REG_DEP_OUTPUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @OUTPUT_DEP, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @insn_cost(i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @create_ddg_edge(%struct.TYPE_6__* %70, %struct.TYPE_6__* %71, i64 %72, i64 %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %61
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @OUTPUT_DEP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = icmp eq %struct.TYPE_6__* %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %83, %79
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @ANTI_DEP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @REG_DEP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @add_backarc_to_ddg(i32 %96, i32 %97)
  br label %102

99:                                               ; preds = %91, %83
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @free(i32 %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %119

103:                                              ; preds = %61
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @ANTI_DEP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* @REG_DEP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @free(i32 %112)
  br label %118

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @add_edge_to_ddg(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  br label %119

119:                                              ; preds = %118, %102
  ret void
}

declare dso_local i64 @mem_access_insn_p(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @REG_NOTE_KIND(i32) #1

declare dso_local i32 @insn_cost(i32, i32, i32) #1

declare dso_local i32 @create_ddg_edge(%struct.TYPE_6__*, %struct.TYPE_6__*, i64, i64, i32, i32) #1

declare dso_local i32 @add_backarc_to_ddg(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @add_edge_to_ddg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
