; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ccid.c_ccid_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { %struct.ccid_operations* }
%struct.ccid_operations = type { i64 (%struct.ccid.0*, %struct.sock*)*, i64 (%struct.ccid.1*, %struct.sock*)*, i32, i32, i32, i32 }
%struct.ccid.0 = type opaque
%struct.ccid.1 = type opaque
%struct.sock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccid* @ccid_new(i32 %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccid_operations*, align 8
  %8 = alloca %struct.ccid*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ccid_operations* @ccid_by_number(i32 %9)
  store %struct.ccid_operations* %10, %struct.ccid_operations** %7, align 8
  store %struct.ccid* null, %struct.ccid** %8, align 8
  %11 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %12 = icmp eq %struct.ccid_operations* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %91

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %19 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %23 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  %27 = call i32 (...) @gfp_any()
  %28 = call %struct.ccid* @kmem_cache_alloc(i32 %26, i32 %27)
  store %struct.ccid* %28, %struct.ccid** %8, align 8
  %29 = load %struct.ccid*, %struct.ccid** %8, align 8
  %30 = icmp eq %struct.ccid* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %34 = load %struct.ccid*, %struct.ccid** %8, align 8
  %35 = getelementptr inbounds %struct.ccid, %struct.ccid* %34, i32 0, i32 0
  store %struct.ccid_operations* %33, %struct.ccid_operations** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.ccid*, %struct.ccid** %8, align 8
  %40 = getelementptr inbounds %struct.ccid, %struct.ccid* %39, i64 1
  %41 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %42 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memset(%struct.ccid* %40, i32 0, i32 %43)
  %45 = load %struct.ccid*, %struct.ccid** %8, align 8
  %46 = getelementptr inbounds %struct.ccid, %struct.ccid* %45, i32 0, i32 0
  %47 = load %struct.ccid_operations*, %struct.ccid_operations** %46, align 8
  %48 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %47, i32 0, i32 0
  %49 = load i64 (%struct.ccid.0*, %struct.sock*)*, i64 (%struct.ccid.0*, %struct.sock*)** %48, align 8
  %50 = icmp ne i64 (%struct.ccid.0*, %struct.sock*)* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %38
  %52 = load %struct.ccid*, %struct.ccid** %8, align 8
  %53 = getelementptr inbounds %struct.ccid, %struct.ccid* %52, i32 0, i32 0
  %54 = load %struct.ccid_operations*, %struct.ccid_operations** %53, align 8
  %55 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %54, i32 0, i32 0
  %56 = load i64 (%struct.ccid.0*, %struct.sock*)*, i64 (%struct.ccid.0*, %struct.sock*)** %55, align 8
  %57 = load %struct.ccid*, %struct.ccid** %8, align 8
  %58 = bitcast %struct.ccid* %57 to %struct.ccid.0*
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call i64 %56(%struct.ccid.0* %58, %struct.sock* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %93

63:                                               ; preds = %51, %38
  br label %90

64:                                               ; preds = %32
  %65 = load %struct.ccid*, %struct.ccid** %8, align 8
  %66 = getelementptr inbounds %struct.ccid, %struct.ccid* %65, i64 1
  %67 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %68 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memset(%struct.ccid* %66, i32 0, i32 %69)
  %71 = load %struct.ccid*, %struct.ccid** %8, align 8
  %72 = getelementptr inbounds %struct.ccid, %struct.ccid* %71, i32 0, i32 0
  %73 = load %struct.ccid_operations*, %struct.ccid_operations** %72, align 8
  %74 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %73, i32 0, i32 1
  %75 = load i64 (%struct.ccid.1*, %struct.sock*)*, i64 (%struct.ccid.1*, %struct.sock*)** %74, align 8
  %76 = icmp ne i64 (%struct.ccid.1*, %struct.sock*)* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %64
  %78 = load %struct.ccid*, %struct.ccid** %8, align 8
  %79 = getelementptr inbounds %struct.ccid, %struct.ccid* %78, i32 0, i32 0
  %80 = load %struct.ccid_operations*, %struct.ccid_operations** %79, align 8
  %81 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %80, i32 0, i32 1
  %82 = load i64 (%struct.ccid.1*, %struct.sock*)*, i64 (%struct.ccid.1*, %struct.sock*)** %81, align 8
  %83 = load %struct.ccid*, %struct.ccid** %8, align 8
  %84 = bitcast %struct.ccid* %83 to %struct.ccid.1*
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = call i64 %82(%struct.ccid.1* %84, %struct.sock* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %93

89:                                               ; preds = %77, %64
  br label %90

90:                                               ; preds = %89, %63
  br label %91

91:                                               ; preds = %104, %90, %31, %13
  %92 = load %struct.ccid*, %struct.ccid** %8, align 8
  ret %struct.ccid* %92

93:                                               ; preds = %88, %62
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %98 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  br label %104

100:                                              ; preds = %93
  %101 = load %struct.ccid_operations*, %struct.ccid_operations** %7, align 8
  %102 = getelementptr inbounds %struct.ccid_operations, %struct.ccid_operations* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %99, %96 ], [ %103, %100 ]
  %106 = load %struct.ccid*, %struct.ccid** %8, align 8
  %107 = call i32 @kmem_cache_free(i32 %105, %struct.ccid* %106)
  store %struct.ccid* null, %struct.ccid** %8, align 8
  br label %91
}

declare dso_local %struct.ccid_operations* @ccid_by_number(i32) #1

declare dso_local %struct.ccid* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @memset(%struct.ccid*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ccid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
