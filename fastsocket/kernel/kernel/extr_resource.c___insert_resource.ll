; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c___insert_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c___insert_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.resource*, %struct.resource*)* @__insert_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__insert_resource(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  br label %8

8:                                                ; preds = %57, %2
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = call %struct.resource* @__request_resource(%struct.resource* %9, %struct.resource* %10)
  store %struct.resource* %11, %struct.resource** %6, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %15, %struct.resource** %3, align 8
  br label %156

16:                                               ; preds = %8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp eq %struct.resource* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %21, %struct.resource** %3, align 8
  br label %156

22:                                               ; preds = %16
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22
  br label %59

39:                                               ; preds = %30
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.resource*, %struct.resource** %5, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %59

56:                                               ; preds = %47, %39
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %58, %struct.resource** %4, align 8
  br label %8

59:                                               ; preds = %55, %38
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %60, %struct.resource** %7, align 8
  br label %61

61:                                               ; preds = %97, %59
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.resource*, %struct.resource** %7, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69, %61
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  store %struct.resource* %78, %struct.resource** %3, align 8
  br label %156

79:                                               ; preds = %69
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 2
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %101

85:                                               ; preds = %79
  %86 = load %struct.resource*, %struct.resource** %7, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 2
  %88 = load %struct.resource*, %struct.resource** %87, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.resource*, %struct.resource** %5, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %101

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.resource*, %struct.resource** %7, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 2
  %100 = load %struct.resource*, %struct.resource** %99, align 8
  store %struct.resource* %100, %struct.resource** %7, align 8
  br label %61

101:                                              ; preds = %95, %84
  %102 = load %struct.resource*, %struct.resource** %4, align 8
  %103 = load %struct.resource*, %struct.resource** %5, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 4
  store %struct.resource* %102, %struct.resource** %104, align 8
  %105 = load %struct.resource*, %struct.resource** %7, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 2
  %107 = load %struct.resource*, %struct.resource** %106, align 8
  %108 = load %struct.resource*, %struct.resource** %5, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 2
  store %struct.resource* %107, %struct.resource** %109, align 8
  %110 = load %struct.resource*, %struct.resource** %6, align 8
  %111 = load %struct.resource*, %struct.resource** %5, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 3
  store %struct.resource* %110, %struct.resource** %112, align 8
  %113 = load %struct.resource*, %struct.resource** %7, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 2
  store %struct.resource* null, %struct.resource** %114, align 8
  %115 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %115, %struct.resource** %7, align 8
  br label %116

116:                                              ; preds = %123, %101
  %117 = load %struct.resource*, %struct.resource** %7, align 8
  %118 = icmp ne %struct.resource* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.resource*, %struct.resource** %5, align 8
  %121 = load %struct.resource*, %struct.resource** %7, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 4
  store %struct.resource* %120, %struct.resource** %122, align 8
  br label %123

123:                                              ; preds = %119
  %124 = load %struct.resource*, %struct.resource** %7, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i32 0, i32 2
  %126 = load %struct.resource*, %struct.resource** %125, align 8
  store %struct.resource* %126, %struct.resource** %7, align 8
  br label %116

127:                                              ; preds = %116
  %128 = load %struct.resource*, %struct.resource** %4, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 3
  %130 = load %struct.resource*, %struct.resource** %129, align 8
  %131 = load %struct.resource*, %struct.resource** %6, align 8
  %132 = icmp eq %struct.resource* %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.resource*, %struct.resource** %5, align 8
  %135 = load %struct.resource*, %struct.resource** %4, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 3
  store %struct.resource* %134, %struct.resource** %136, align 8
  br label %155

137:                                              ; preds = %127
  %138 = load %struct.resource*, %struct.resource** %4, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 3
  %140 = load %struct.resource*, %struct.resource** %139, align 8
  store %struct.resource* %140, %struct.resource** %7, align 8
  br label %141

141:                                              ; preds = %147, %137
  %142 = load %struct.resource*, %struct.resource** %7, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 2
  %144 = load %struct.resource*, %struct.resource** %143, align 8
  %145 = load %struct.resource*, %struct.resource** %6, align 8
  %146 = icmp ne %struct.resource* %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.resource*, %struct.resource** %7, align 8
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 2
  %150 = load %struct.resource*, %struct.resource** %149, align 8
  store %struct.resource* %150, %struct.resource** %7, align 8
  br label %141

151:                                              ; preds = %141
  %152 = load %struct.resource*, %struct.resource** %5, align 8
  %153 = load %struct.resource*, %struct.resource** %7, align 8
  %154 = getelementptr inbounds %struct.resource, %struct.resource* %153, i32 0, i32 2
  store %struct.resource* %152, %struct.resource** %154, align 8
  br label %155

155:                                              ; preds = %151, %133
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %156

156:                                              ; preds = %155, %77, %20, %14
  %157 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %157
}

declare dso_local %struct.resource* @__request_resource(%struct.resource*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
