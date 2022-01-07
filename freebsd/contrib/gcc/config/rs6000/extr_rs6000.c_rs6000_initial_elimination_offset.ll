; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_initial_elimination_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_initial_elimination_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@FRAME_GROWS_DOWNWARD = common dso_local global i64 0, align 8
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@RS6000_PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rs6000_initial_elimination_offset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call %struct.TYPE_3__* (...) @rs6000_stack_info()
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 0, %24
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i64 [ 0, %20 ], [ %25, %21 ]
  store i64 %27, i64* %6, align 8
  br label %136

28:                                               ; preds = %11, %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 0, %45
  br label %47

47:                                               ; preds = %42, %41
  %48 = phi i64 [ 0, %41 ], [ %46, %42 ]
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* @FRAME_GROWS_DOWNWARD, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %51, %47
  br label %135

66:                                               ; preds = %32, %28
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load i64, i64* @FRAME_GROWS_DOWNWARD, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  br label %90

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %77
  %91 = phi i64 [ %88, %77 ], [ 0, %89 ]
  store i64 %91, i64* %6, align 8
  br label %134

92:                                               ; preds = %70, %66
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %6, align 8
  br label %133

104:                                              ; preds = %96, %92
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @ARG_POINTER_REGNUM, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  br label %122

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i64 [ %120, %117 ], [ 0, %121 ]
  store i64 %123, i64* %6, align 8
  br label %132

124:                                              ; preds = %108, %104
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i64 0, i64* %6, align 8
  br label %131

129:                                              ; preds = %124
  %130 = call i32 (...) @gcc_unreachable()
  br label %131

131:                                              ; preds = %129, %128
  br label %132

132:                                              ; preds = %131, %122
  br label %133

133:                                              ; preds = %132, %100
  br label %134

134:                                              ; preds = %133, %90
  br label %135

135:                                              ; preds = %134, %65
  br label %136

136:                                              ; preds = %135, %26
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local %struct.TYPE_3__* @rs6000_stack_info(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
