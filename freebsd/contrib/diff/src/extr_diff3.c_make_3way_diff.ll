; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_make_3way_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_make_3way_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { %struct.diff3_block* }
%struct.diff_block = type { %struct.diff_block* }

@make_3way_diff.zero_diff3 = internal constant %struct.diff3_block zeroinitializer, align 8
@FC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"internal error: screwup in format of diff blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff3_block* (%struct.diff_block*, %struct.diff_block*)* @make_3way_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff3_block* @make_3way_diff(%struct.diff_block* %0, %struct.diff_block* %1) #0 {
  %3 = alloca %struct.diff_block*, align 8
  %4 = alloca %struct.diff_block*, align 8
  %5 = alloca [2 x %struct.diff_block*], align 16
  %6 = alloca [2 x %struct.diff_block*], align 16
  %7 = alloca [2 x %struct.diff_block*], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.diff_block*, align 8
  %13 = alloca %struct.diff_block*, align 8
  %14 = alloca %struct.diff3_block*, align 8
  %15 = alloca %struct.diff3_block*, align 8
  %16 = alloca %struct.diff3_block**, align 8
  %17 = alloca %struct.diff3_block*, align 8
  store %struct.diff_block* %0, %struct.diff_block** %3, align 8
  store %struct.diff_block* %1, %struct.diff_block** %4, align 8
  store %struct.diff3_block* null, %struct.diff3_block** %14, align 8
  store %struct.diff3_block** %14, %struct.diff3_block*** %16, align 8
  %18 = load %struct.diff_block*, %struct.diff_block** %3, align 8
  %19 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 0
  store %struct.diff_block* %18, %struct.diff_block** %19, align 16
  %20 = load %struct.diff_block*, %struct.diff_block** %4, align 8
  %21 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 1
  store %struct.diff_block* %20, %struct.diff_block** %21, align 8
  store %struct.diff3_block* @make_3way_diff.zero_diff3, %struct.diff3_block** %17, align 8
  br label %22

22:                                               ; preds = %167, %2
  %23 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 0
  %24 = load %struct.diff_block*, %struct.diff_block** %23, align 16
  %25 = icmp ne %struct.diff_block* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 1
  %28 = load %struct.diff_block*, %struct.diff_block** %27, align 8
  %29 = icmp ne %struct.diff_block* %28, null
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %173

32:                                               ; preds = %30
  %33 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 1
  store %struct.diff_block* null, %struct.diff_block** %33, align 8
  %34 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 0
  store %struct.diff_block* null, %struct.diff_block** %34, align 16
  %35 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 1
  store %struct.diff_block* null, %struct.diff_block** %35, align 8
  %36 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 0
  store %struct.diff_block* null, %struct.diff_block** %36, align 16
  %37 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 0
  %38 = load %struct.diff_block*, %struct.diff_block** %37, align 16
  %39 = icmp ne %struct.diff_block* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %58

41:                                               ; preds = %32
  %42 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 1
  %43 = load %struct.diff_block*, %struct.diff_block** %42, align 8
  %44 = icmp ne %struct.diff_block* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 0
  %48 = load %struct.diff_block*, %struct.diff_block** %47, align 16
  %49 = load i32, i32* @FC, align 4
  %50 = call i64 @D_LOWLINE(%struct.diff_block* %48, i32 %49)
  %51 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 1
  %52 = load %struct.diff_block*, %struct.diff_block** %51, align 8
  %53 = load i32, i32* @FC, align 4
  %54 = call i64 @D_LOWLINE(%struct.diff_block* %52, i32 %53)
  %55 = icmp sgt i64 %50, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %46, %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %61
  %63 = load %struct.diff_block*, %struct.diff_block** %62, align 8
  store %struct.diff_block* %63, %struct.diff_block** %12, align 8
  %64 = load %struct.diff_block*, %struct.diff_block** %12, align 8
  %65 = load i32, i32* @FC, align 4
  %66 = call i64 @D_HIGHLINE(%struct.diff_block* %64, i32 %65)
  store i64 %66, i64* %8, align 8
  %67 = load %struct.diff_block*, %struct.diff_block** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 %69
  store %struct.diff_block* %67, %struct.diff_block** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 %72
  store %struct.diff_block* %67, %struct.diff_block** %73, align 8
  %74 = load %struct.diff_block*, %struct.diff_block** %12, align 8
  %75 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %74, i32 0, i32 0
  %76 = load %struct.diff_block*, %struct.diff_block** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %78
  store %struct.diff_block* %76, %struct.diff_block** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 %81
  %83 = load %struct.diff_block*, %struct.diff_block** %82, align 8
  %84 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %83, i32 0, i32 0
  store %struct.diff_block* null, %struct.diff_block** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = xor i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %88
  %90 = load %struct.diff_block*, %struct.diff_block** %89, align 8
  store %struct.diff_block* %90, %struct.diff_block** %13, align 8
  br label %91

91:                                               ; preds = %149, %58
  %92 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %93 = icmp ne %struct.diff_block* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %96 = load i32, i32* @FC, align 4
  %97 = call i64 @D_LOWLINE(%struct.diff_block* %95, i32 %96)
  %98 = load i64, i64* %8, align 8
  %99 = add nsw i64 %98, 1
  %100 = icmp sle i64 %97, %99
  br label %101

101:                                              ; preds = %94, %91
  %102 = phi i1 [ false, %91 ], [ %100, %94 ]
  br i1 %102, label %103, label %156

103:                                              ; preds = %101
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 %105
  %107 = load %struct.diff_block*, %struct.diff_block** %106, align 8
  %108 = icmp ne %struct.diff_block* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 %112
  %114 = load %struct.diff_block*, %struct.diff_block** %113, align 8
  %115 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %114, i32 0, i32 0
  store %struct.diff_block* %110, %struct.diff_block** %115, align 8
  br label %121

116:                                              ; preds = %103
  %117 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 %119
  store %struct.diff_block* %117, %struct.diff_block** %120, align 8
  br label %121

121:                                              ; preds = %116, %109
  %122 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 %124
  store %struct.diff_block* %122, %struct.diff_block** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %127
  %129 = load %struct.diff_block*, %struct.diff_block** %128, align 8
  %130 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %129, i32 0, i32 0
  %131 = load %struct.diff_block*, %struct.diff_block** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %133
  store %struct.diff_block* %131, %struct.diff_block** %134, align 8
  %135 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %136 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %135, i32 0, i32 0
  store %struct.diff_block* null, %struct.diff_block** %136, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %139 = load i32, i32* @FC, align 4
  %140 = call i64 @D_HIGHLINE(%struct.diff_block* %138, i32 %139)
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %121
  %143 = load i32, i32* %9, align 4
  %144 = xor i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  store %struct.diff_block* %145, %struct.diff_block** %12, align 8
  %146 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %147 = load i32, i32* @FC, align 4
  %148 = call i64 @D_HIGHLINE(%struct.diff_block* %146, i32 %147)
  store i64 %148, i64* %8, align 8
  br label %149

149:                                              ; preds = %142, %121
  %150 = load i32, i32* %9, align 4
  %151 = xor i32 %150, 1
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %7, i64 0, i64 %153
  %155 = load %struct.diff_block*, %struct.diff_block** %154, align 8
  store %struct.diff_block* %155, %struct.diff_block** %13, align 8
  br label %91

156:                                              ; preds = %101
  %157 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %5, i64 0, i64 0
  %158 = getelementptr inbounds [2 x %struct.diff_block*], [2 x %struct.diff_block*]* %6, i64 0, i64 0
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.diff3_block*, %struct.diff3_block** %17, align 8
  %162 = call %struct.diff3_block* @using_to_diff3_block(%struct.diff_block** %157, %struct.diff_block** %158, i32 %159, i32 %160, %struct.diff3_block* %161)
  store %struct.diff3_block* %162, %struct.diff3_block** %15, align 8
  %163 = load %struct.diff3_block*, %struct.diff3_block** %15, align 8
  %164 = icmp ne %struct.diff3_block* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %156
  %166 = call i32 @fatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %156
  %168 = load %struct.diff3_block*, %struct.diff3_block** %15, align 8
  %169 = load %struct.diff3_block**, %struct.diff3_block*** %16, align 8
  store %struct.diff3_block* %168, %struct.diff3_block** %169, align 8
  %170 = load %struct.diff3_block*, %struct.diff3_block** %15, align 8
  %171 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %170, i32 0, i32 0
  store %struct.diff3_block** %171, %struct.diff3_block*** %16, align 8
  %172 = load %struct.diff3_block*, %struct.diff3_block** %15, align 8
  store %struct.diff3_block* %172, %struct.diff3_block** %17, align 8
  br label %22

173:                                              ; preds = %30
  %174 = load %struct.diff3_block*, %struct.diff3_block** %14, align 8
  ret %struct.diff3_block* %174
}

declare dso_local i64 @D_LOWLINE(%struct.diff_block*, i32) #1

declare dso_local i64 @D_HIGHLINE(%struct.diff_block*, i32) #1

declare dso_local %struct.diff3_block* @using_to_diff3_block(%struct.diff_block**, %struct.diff_block**, i32, i32, %struct.diff3_block*) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
