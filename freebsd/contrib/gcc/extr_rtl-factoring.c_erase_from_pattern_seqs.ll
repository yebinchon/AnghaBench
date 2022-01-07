; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_erase_from_pattern_seqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_erase_from_pattern_seqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_7__* }

@pattern_seqs = common dso_local global %struct.TYPE_6__* null, align 8
@seq_call_cost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @erase_from_pattern_seqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_from_pattern_seqs(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  br label %14

14:                                               ; preds = %151, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %156

17:                                               ; preds = %14
  store %struct.TYPE_6__** @pattern_seqs, %struct.TYPE_6__*** %5, align 8
  br label %18

18:                                               ; preds = %150, %17
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %151

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %45, %22
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i64 @compute_rtx_cost(i64 %39)
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @prev_insn_in_block(i64 %46)
  store i64 %47, i64* %7, align 8
  br label %27

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @seq_call_cost, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %12, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = call i32 @free_pattern_seq(%struct.TYPE_6__* %59)
  br label %150

61:                                               ; preds = %48
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store %struct.TYPE_7__** %64, %struct.TYPE_7__*** %6, align 8
  br label %65

65:                                               ; preds = %145, %61
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %146

69:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %103, %69
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %3, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br label %92

92:                                               ; preds = %85, %81, %77, %74
  %93 = phi i1 [ false, %81 ], [ false, %77 ], [ false, %74 ], [ %91, %85 ]
  br i1 %93, label %94, label %106

94:                                               ; preds = %92
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @compute_rtx_cost(i64 %97)
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @prev_insn_in_block(i64 %104)
  store i64 %105, i64* %7, align 8
  br label %74

106:                                              ; preds = %92
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @seq_call_cost, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %13, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %118 = call i32 @free(%struct.TYPE_7__* %117)
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  br label %145

122:                                              ; preds = %106
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %122
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %129, %122
  %142 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  store %struct.TYPE_7__** %144, %struct.TYPE_7__*** %6, align 8
  br label %145

145:                                              ; preds = %141, %110
  br label %65

146:                                              ; preds = %65
  %147 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store %struct.TYPE_6__** %149, %struct.TYPE_6__*** %5, align 8
  br label %150

150:                                              ; preds = %146, %52
  br label %18

151:                                              ; preds = %18
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %4, align 4
  %154 = load i64, i64* %3, align 8
  %155 = call i64 @prev_insn_in_block(i64 %154)
  store i64 %155, i64* %3, align 8
  br label %14

156:                                              ; preds = %14
  ret void
}

declare dso_local i64 @compute_rtx_cost(i64) #1

declare dso_local i64 @prev_insn_in_block(i64) #1

declare dso_local i32 @free_pattern_seq(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
