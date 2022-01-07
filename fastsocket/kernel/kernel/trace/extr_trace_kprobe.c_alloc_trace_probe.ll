; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_alloc_trace_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_alloc_trace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { %struct.trace_probe*, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.trace_probe*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i8*, %struct.trace_probe* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@kretprobe_dispatcher = common dso_local global i32 0, align 4
@kprobe_dispatcher = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_probe* (i8*, i8*, i8*, i8*, i64, i32, i32)* @alloc_trace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_probe* @alloc_trace_probe(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.trace_probe*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.trace_probe*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @SIZEOF_TRACE_PROBE(i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.trace_probe* @kzalloc(i32 %21, i32 %22)
  store %struct.trace_probe* %23, %struct.trace_probe** %16, align 8
  %24 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %25 = icmp ne %struct.trace_probe* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %17, align 4
  %28 = call %struct.trace_probe* @ERR_PTR(i32 %27)
  store %struct.trace_probe* %28, %struct.trace_probe** %8, align 8
  br label %143

29:                                               ; preds = %7
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrdup(i8* %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.trace_probe*
  %37 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %38 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %37, i32 0, i32 0
  store %struct.trace_probe* %36, %struct.trace_probe** %38, align 8
  %39 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %40 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %39, i32 0, i32 0
  %41 = load %struct.trace_probe*, %struct.trace_probe** %40, align 8
  %42 = icmp ne %struct.trace_probe* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %129

44:                                               ; preds = %32
  %45 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %46 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %45, i32 0, i32 0
  %47 = load %struct.trace_probe*, %struct.trace_probe** %46, align 8
  %48 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %49 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store %struct.trace_probe* %47, %struct.trace_probe** %51, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %54 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  br label %63

57:                                               ; preds = %29
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %60 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  br label %63

63:                                               ; preds = %57, %44
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @kretprobe_dispatcher, align 4
  %68 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %69 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  br label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @kprobe_dispatcher, align 4
  %73 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %74 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @is_good_name(i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %17, align 4
  br label %129

87:                                               ; preds = %80
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @kstrdup(i8* %88, i32 %89)
  %91 = bitcast i8* %90 to %struct.trace_probe*
  %92 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %93 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store %struct.trace_probe* %91, %struct.trace_probe** %94, align 8
  %95 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %96 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.trace_probe*, %struct.trace_probe** %97, align 8
  %99 = icmp ne %struct.trace_probe* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %87
  br label %129

101:                                              ; preds = %87
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @is_good_name(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %17, align 4
  br label %129

111:                                              ; preds = %104
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @kstrdup(i8* %112, i32 %113)
  %115 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %116 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i8* %114, i8** %117, align 8
  %118 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %119 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %129

124:                                              ; preds = %111
  %125 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %126 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %125, i32 0, i32 2
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  store %struct.trace_probe* %128, %struct.trace_probe** %8, align 8
  br label %143

129:                                              ; preds = %123, %108, %100, %84, %43
  %130 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %131 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.trace_probe*, %struct.trace_probe** %132, align 8
  %134 = call i32 @kfree(%struct.trace_probe* %133)
  %135 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %136 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %135, i32 0, i32 0
  %137 = load %struct.trace_probe*, %struct.trace_probe** %136, align 8
  %138 = call i32 @kfree(%struct.trace_probe* %137)
  %139 = load %struct.trace_probe*, %struct.trace_probe** %16, align 8
  %140 = call i32 @kfree(%struct.trace_probe* %139)
  %141 = load i32, i32* %17, align 4
  %142 = call %struct.trace_probe* @ERR_PTR(i32 %141)
  store %struct.trace_probe* %142, %struct.trace_probe** %8, align 8
  br label %143

143:                                              ; preds = %129, %124, %26
  %144 = load %struct.trace_probe*, %struct.trace_probe** %8, align 8
  ret %struct.trace_probe* %144
}

declare dso_local %struct.trace_probe* @kzalloc(i32, i32) #1

declare dso_local i32 @SIZEOF_TRACE_PROBE(i32) #1

declare dso_local %struct.trace_probe* @ERR_PTR(i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @is_good_name(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.trace_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
