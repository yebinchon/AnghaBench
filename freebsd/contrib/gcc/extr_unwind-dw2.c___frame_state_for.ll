; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c___frame_state_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c___frame_state_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_state = type { i32*, i32, i32, i32, i32, i32, i32* }
%struct._Unwind_Context = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EXTENDED_CONTEXT_BIT = common dso_local global i32 0, align 4
@_URC_NO_REASON = common dso_local global i64 0, align 8
@CFA_EXP = common dso_local global i64 0, align 8
@PRE_GCC3_DWARF_FRAME_REGISTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_state* @__frame_state_for(i8* %0, %struct.frame_state* %1) #0 {
  %3 = alloca %struct.frame_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.frame_state*, align 8
  %6 = alloca %struct._Unwind_Context, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.frame_state* %1, %struct.frame_state** %5, align 8
  %9 = call i32 @memset(%struct._Unwind_Context* %6, i32 0, i32 24)
  %10 = load i32, i32* @EXTENDED_CONTEXT_BIT, align 4
  %11 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr i8, i8* %12, i64 1
  %14 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %6, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = call i64 @uw_frame_state_for(%struct._Unwind_Context* %6, %struct.TYPE_9__* %7)
  %16 = load i64, i64* @_URC_NO_REASON, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.frame_state* null, %struct.frame_state** %3, align 8
  br label %118

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CFA_EXP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.frame_state* null, %struct.frame_state** %3, align 8
  br label %118

25:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %93, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PRE_GCC3_DWARF_FRAME_REGISTERS, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %41 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %47 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %85 [
    i32 128, label %53
    i32 129, label %69
  ]

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %64 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %92

69:                                               ; preds = %31
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %80 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %92

85:                                               ; preds = %31
  %86 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %87 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %69, %53
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %26

96:                                               ; preds = %26
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %100 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %104 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %108 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %112 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  %116 = getelementptr inbounds %struct.frame_state, %struct.frame_state* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.frame_state*, %struct.frame_state** %5, align 8
  store %struct.frame_state* %117, %struct.frame_state** %3, align 8
  br label %118

118:                                              ; preds = %96, %24, %18
  %119 = load %struct.frame_state*, %struct.frame_state** %3, align 8
  ret %struct.frame_state* %119
}

declare dso_local i32 @memset(%struct._Unwind_Context*, i32, i32) #1

declare dso_local i64 @uw_frame_state_for(%struct._Unwind_Context*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
