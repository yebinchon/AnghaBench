; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_ForcedUnwind_Phase2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_ForcedUnwind_Phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Exception = type { i32, i64, i64 }
%struct._Unwind_Context = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* }

@_URC_NO_REASON = common dso_local global i32 0, align 4
@_URC_END_OF_STACK = common dso_local global i32 0, align 4
@_URC_FATAL_PHASE2_ERROR = common dso_local global i32 0, align 4
@_UA_FORCE_UNWIND = common dso_local global i32 0, align 4
@_UA_CLEANUP_PHASE = common dso_local global i32 0, align 4
@_UA_END_OF_STACK = common dso_local global i32 0, align 4
@_URC_INSTALL_CONTEXT = common dso_local global i32 0, align 4
@_URC_CONTINUE_UNWIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._Unwind_Exception*, %struct._Unwind_Context*)* @_Unwind_ForcedUnwind_Phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Unwind_ForcedUnwind_Phase2(%struct._Unwind_Exception* %0, %struct._Unwind_Context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Exception*, align 8
  %5 = alloca %struct._Unwind_Context*, align 8
  %6 = alloca i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  store %struct._Unwind_Exception* %0, %struct._Unwind_Exception** %4, align 8
  store %struct._Unwind_Context* %1, %struct._Unwind_Context** %5, align 8
  %12 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %13 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)*
  store i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)* %15, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)** %6, align 8
  %16 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %17 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %2, %90
  %21 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %22 = call i32 @uw_frame_state_for(%struct._Unwind_Context* %21, %struct.TYPE_4__* %10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @_URC_NO_REASON, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @_URC_END_OF_STACK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @_URC_FATAL_PHASE2_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @_UA_FORCE_UNWIND, align 4
  %34 = load i32, i32* @_UA_CLEANUP_PHASE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @_URC_END_OF_STACK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @_UA_END_OF_STACK, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)*, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*, i8*)** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %47 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %50 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 %44(i32 1, i32 %45, i32 %48, %struct._Unwind_Exception* %49, %struct._Unwind_Context* %50, i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @_URC_NO_REASON, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @_URC_FATAL_PHASE2_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %95

58:                                               ; preds = %43
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @_URC_END_OF_STACK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %93

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %65 = load i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %64, align 8
  %66 = icmp ne i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %69 = load i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)*, i32 (i32, i32, i32, %struct._Unwind_Exception*, %struct._Unwind_Context*)** %68, align 8
  %70 = load i32, i32* @_UA_FORCE_UNWIND, align 4
  %71 = load i32, i32* @_UA_CLEANUP_PHASE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %74 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %4, align 8
  %77 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %78 = call i32 %69(i32 1, i32 %72, i32 %75, %struct._Unwind_Exception* %76, %struct._Unwind_Context* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %93

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @_URC_CONTINUE_UNWIND, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @_URC_FATAL_PHASE2_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %95

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %92 = call i32 @uw_advance_context(%struct._Unwind_Context* %91, %struct.TYPE_4__* %10)
  br label %20

93:                                               ; preds = %82, %62
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %87, %56, %30
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @uw_frame_state_for(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

declare dso_local i32 @uw_advance_context(%struct._Unwind_Context*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
