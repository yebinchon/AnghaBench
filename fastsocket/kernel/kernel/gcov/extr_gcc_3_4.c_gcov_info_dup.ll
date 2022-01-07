; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_info_dup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_info_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.gcov_ctr_info*, i32, i32, i32, i32, i32 }
%struct.gcov_ctr_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_info* @gcov_info_dup(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gcov_ctr_info*, align 8
  %8 = alloca i64, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %9 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %10 = call i32 @num_counter_active(%struct.gcov_info* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 12, %12
  %14 = add i64 40, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.gcov_info* @kzalloc(i32 %15, i32 %16)
  store %struct.gcov_info* %17, %struct.gcov_info** %4, align 8
  %18 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %19 = icmp ne %struct.gcov_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %151

21:                                               ; preds = %1
  %22 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %23 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %26 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %28 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %31 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %33 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %36 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %38 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %41 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %43 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @kstrdup(i32 %44, i32 %45)
  %47 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %48 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %50 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %21
  br label %148

54:                                               ; preds = %21
  %55 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %56 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %59 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %62 = call i32 @get_fn_size(%struct.gcov_info* %61)
  %63 = mul nsw i32 %60, %62
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @kmemdup(i32 %57, i32 %63, i32 %64)
  %66 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %67 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %69 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  br label %148

73:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %143, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %146

78:                                               ; preds = %74
  %79 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %80 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %79, i32 0, i32 1
  %81 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %81, i64 %83
  store %struct.gcov_ctr_info* %84, %struct.gcov_ctr_info** %7, align 8
  %85 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %86 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  store i64 %89, i64* %8, align 8
  %90 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %91 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %94 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %93, i32 0, i32 1
  %95 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %95, i64 %97
  %99 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 4
  %100 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %101 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %104 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %103, i32 0, i32 1
  %105 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %105, i64 %107
  %109 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %108, i32 0, i32 2
  store i32 %102, i32* %109, align 4
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @vmalloc(i64 %110)
  %112 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %113 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %112, i32 0, i32 1
  %114 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %114, i64 %116
  %118 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %117, i32 0, i32 1
  store i32 %111, i32* %118, align 4
  %119 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %120 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %119, i32 0, i32 1
  %121 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %121, i64 %123
  %125 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %78
  br label %148

129:                                              ; preds = %78
  %130 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %131 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %130, i32 0, i32 1
  %132 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %132, i64 %134
  %136 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %7, align 8
  %139 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @memcpy(i32 %137, i32 %140, i64 %141)
  br label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %5, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %74

146:                                              ; preds = %74
  %147 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  store %struct.gcov_info* %147, %struct.gcov_info** %2, align 8
  br label %151

148:                                              ; preds = %128, %72, %53
  %149 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %150 = call i32 @gcov_info_free(%struct.gcov_info* %149)
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %151

151:                                              ; preds = %148, %146, %20
  %152 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %152
}

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

declare dso_local %struct.gcov_info* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @get_fn_size(%struct.gcov_info*) #1

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
