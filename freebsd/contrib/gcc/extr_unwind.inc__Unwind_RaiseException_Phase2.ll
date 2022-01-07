; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_RaiseException_Phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_RaiseException_Phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Exception = type { i64, i32 }
%struct._Unwind_Context = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* }

@_UA_HANDLER_FRAME = common dso_local global i32 0, align 4
@_URC_NO_REASON = common dso_local global i32 0, align 4
@_URC_FATAL_PHASE2_ERROR = common dso_local global i32 0, align 4
@_UA_CLEANUP_PHASE = common dso_local global i32 0, align 4
@_URC_INSTALL_CONTEXT = common dso_local global i32 0, align 4
@_URC_CONTINUE_UNWIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._Unwind_Exception*, %struct._Unwind_Context*)* @_Unwind_RaiseException_Phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Unwind_RaiseException_Phase2(%struct._Unwind_Exception* %0, %struct._Unwind_Context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Exception*, align 8
  %5 = alloca %struct._Unwind_Context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  store %struct._Unwind_Exception* %0, %struct._Unwind_Exception** %4, align 8
  store %struct._Unwind_Context* %1, %struct._Unwind_Context** %5, align 8
  br label %9

9:                                                ; preds = %2, %55
  %10 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %11 = call i32 @uw_frame_state_for(%struct._Unwind_Context* %10, %struct.TYPE_4__* %7)
  store i32 %11, i32* %6, align 4
  %12 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %13 = call i64 @uw_identify_context(%struct._Unwind_Context* %12)
  %14 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %15 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @_UA_HANDLER_FRAME, align 4
  br label %21

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @_URC_NO_REASON, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @_URC_FATAL_PHASE2_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %30 = load i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %29, align 8
  %31 = icmp ne i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %34 = load i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %33, align 8
  %35 = load i32, i32* @_UA_CLEANUP_PHASE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %35, %36
  %38 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %39 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %42 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %43 = call i32 %34(i32 1, i32 %37, i32 %40, %struct._Unwind_Exception* %41, %struct._Unwind_Context* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %63

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @_URC_CONTINUE_UNWIND, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @_URC_FATAL_PHASE2_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @gcc_assert(i32 %59)
  %61 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %62 = call i32 @uw_update_context(%struct._Unwind_Context* %61, %struct.TYPE_4__* %7)
  br label %9

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %52, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @uw_frame_state_for(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

declare dso_local i64 @uw_identify_context(%struct._Unwind_Context*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @uw_update_context(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
