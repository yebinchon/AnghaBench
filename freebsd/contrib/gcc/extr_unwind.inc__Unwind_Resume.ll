; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_Resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_Resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Exception = type { i64 }
%struct._Unwind_Context = type { i32 }

@_URC_INSTALL_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Unwind_Resume(%struct._Unwind_Exception* %0) #0 {
  %2 = alloca %struct._Unwind_Exception*, align 8
  %3 = alloca %struct._Unwind_Context, align 4
  %4 = alloca %struct._Unwind_Context, align 4
  %5 = alloca i64, align 8
  store %struct._Unwind_Exception* %0, %struct._Unwind_Exception** %2, align 8
  %6 = call i32 @uw_init_context(%struct._Unwind_Context* %3)
  %7 = bitcast %struct._Unwind_Context* %4 to i8*
  %8 = bitcast %struct._Unwind_Context* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %2, align 8
  %10 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %2, align 8
  %15 = call i64 @_Unwind_RaiseException_Phase2(%struct._Unwind_Exception* %14, %struct._Unwind_Context* %4)
  store i64 %15, i64* %5, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %2, align 8
  %18 = call i64 @_Unwind_ForcedUnwind_Phase2(%struct._Unwind_Exception* %17, %struct._Unwind_Context* %4)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @_URC_INSTALL_CONTEXT, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = call i32 @uw_install_context(%struct._Unwind_Context* %3, %struct._Unwind_Context* %4)
  ret void
}

declare dso_local i32 @uw_init_context(%struct._Unwind_Context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @_Unwind_RaiseException_Phase2(%struct._Unwind_Exception*, %struct._Unwind_Context*) #1

declare dso_local i64 @_Unwind_ForcedUnwind_Phase2(%struct._Unwind_Exception*, %struct._Unwind_Context*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @uw_install_context(%struct._Unwind_Context*, %struct._Unwind_Context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
