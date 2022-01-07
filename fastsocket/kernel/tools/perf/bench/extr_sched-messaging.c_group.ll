; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_sched-messaging.c_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/bench/extr_sched-messaging.c_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sender_context = type { i32, i32*, i32, i32, i32*, i32 }
%struct.receiver_context = type { i32, i32*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@loops = common dso_local global i32 0, align 4
@receiver = common dso_local global i64 0, align 8
@thread_mode = common dso_local global i32 0, align 4
@sender = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sender_context*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.receiver_context*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 40, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.sender_context* @malloc(i32 %17)
  store %struct.sender_context* %18, %struct.sender_context** %10, align 8
  %19 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %20 = icmp ne %struct.sender_context* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = call i32 @barf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %85, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %24
  %29 = call %struct.sender_context* @malloc(i32 40)
  %30 = bitcast %struct.sender_context* %29 to %struct.receiver_context*
  store %struct.receiver_context* %30, %struct.receiver_context** %12, align 8
  %31 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %32 = icmp ne %struct.receiver_context* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @barf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %37 = call i32 @fdpair(i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @loops, align 4
  %40 = mul i32 %38, %39
  %41 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %42 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %46 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %52 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %57 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %60 = getelementptr inbounds %struct.receiver_context, %struct.receiver_context* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.receiver_context*, %struct.receiver_context** %12, align 8
  %62 = bitcast %struct.receiver_context* %61 to %struct.sender_context*
  %63 = load i64, i64* @receiver, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @create_worker(%struct.sender_context* %62, i8* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %73 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* @thread_mode, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %35
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  br label %84

84:                                               ; preds = %80, %35
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %24

88:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %113, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %96 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %99 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %102 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %104 = load i64, i64* @sender, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @create_worker(%struct.sender_context* %103, i8* %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %93
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %89

116:                                              ; preds = %89
  %117 = load i32, i32* @thread_mode, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %137, label %119

119:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.sender_context*, %struct.sender_context** %10, align 8
  %126 = getelementptr inbounds %struct.sender_context, %struct.sender_context* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @close(i32 %131)
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %120

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %116
  %138 = load i32, i32* %6, align 4
  %139 = mul i32 %138, 2
  ret i32 %139
}

declare dso_local %struct.sender_context* @malloc(i32) #1

declare dso_local i32 @barf(i8*) #1

declare dso_local i32 @fdpair(i32*) #1

declare dso_local i32 @create_worker(%struct.sender_context*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
