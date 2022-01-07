; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_RaiseException.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_RaiseException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Exception = type { i32, i64, i32 }
%struct._Unwind_Context = type { i32 }
%struct.TYPE_4__ = type { i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* }

@_URC_END_OF_STACK = common dso_local global i64 0, align 8
@_URC_NO_REASON = common dso_local global i64 0, align 8
@_URC_FATAL_PHASE1_ERROR = common dso_local global i64 0, align 8
@_UA_SEARCH_PHASE = common dso_local global i32 0, align 4
@_URC_HANDLER_FOUND = common dso_local global i64 0, align 8
@_URC_CONTINUE_UNWIND = common dso_local global i64 0, align 8
@_URC_INSTALL_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_Unwind_RaiseException(%struct._Unwind_Exception* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._Unwind_Exception*, align 8
  %4 = alloca %struct._Unwind_Context, align 4
  %5 = alloca %struct._Unwind_Context, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store %struct._Unwind_Exception* %0, %struct._Unwind_Exception** %3, align 8
  %8 = call i32 @uw_init_context(%struct._Unwind_Context* %4)
  %9 = bitcast %struct._Unwind_Context* %5 to i8*
  %10 = bitcast %struct._Unwind_Context* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  br label %11

11:                                               ; preds = %1, %49
  %12 = call i64 @uw_frame_state_for(%struct._Unwind_Context* %5, %struct.TYPE_4__* %7)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @_URC_END_OF_STACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @_URC_END_OF_STACK, align 8
  store i64 %17, i64* %2, align 8
  br label %68

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @_URC_NO_REASON, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @_URC_FATAL_PHASE1_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %68

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %26 = load i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %25, align 8
  %27 = icmp ne i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %30 = load i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i64 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %29, align 8
  %31 = load i32, i32* @_UA_SEARCH_PHASE, align 4
  %32 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %3, align 8
  %33 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %3, align 8
  %36 = call i64 %30(i32 1, i32 %31, i32 %34, %struct._Unwind_Exception* %35, %struct._Unwind_Context* %5)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @_URC_HANDLER_FOUND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %51

41:                                               ; preds = %28
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @_URC_CONTINUE_UNWIND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @_URC_FATAL_PHASE1_ERROR, align 8
  store i64 %46, i64* %2, align 8
  br label %68

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %24
  %50 = call i32 @uw_update_context(%struct._Unwind_Context* %5, %struct.TYPE_4__* %7)
  br label %11

51:                                               ; preds = %40
  %52 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %3, align 8
  %53 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = call i32 @uw_identify_context(%struct._Unwind_Context* %5)
  %55 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %3, align 8
  %56 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = bitcast %struct._Unwind_Context* %5 to i8*
  %58 = bitcast %struct._Unwind_Context* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %3, align 8
  %60 = call i64 @_Unwind_RaiseException_Phase2(%struct._Unwind_Exception* %59, %struct._Unwind_Context* %5)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @_URC_INSTALL_CONTEXT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %2, align 8
  br label %68

66:                                               ; preds = %51
  %67 = call i32 @uw_install_context(%struct._Unwind_Context* %4, %struct._Unwind_Context* %5)
  br label %68

68:                                               ; preds = %66, %64, %45, %22, %16
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i32 @uw_init_context(%struct._Unwind_Context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @uw_frame_state_for(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

declare dso_local i32 @uw_update_context(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

declare dso_local i32 @uw_identify_context(%struct._Unwind_Context*) #1

declare dso_local i64 @_Unwind_RaiseException_Phase2(%struct._Unwind_Exception*, %struct._Unwind_Context*) #1

declare dso_local i32 @uw_install_context(%struct._Unwind_Context*, %struct._Unwind_Context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
