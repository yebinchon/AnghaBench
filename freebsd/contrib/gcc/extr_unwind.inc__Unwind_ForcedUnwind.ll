; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_ForcedUnwind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind.inc__Unwind_ForcedUnwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Exception = type { i8*, i8* }
%struct._Unwind_Context = type { i32 }

@_URC_INSTALL_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_Unwind_ForcedUnwind(%struct._Unwind_Exception* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Unwind_Exception*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._Unwind_Context, align 4
  %9 = alloca %struct._Unwind_Context, align 4
  %10 = alloca i64, align 8
  store %struct._Unwind_Exception* %0, %struct._Unwind_Exception** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @uw_init_context(%struct._Unwind_Context* %8)
  %12 = bitcast %struct._Unwind_Context* %9 to i8*
  %13 = bitcast %struct._Unwind_Context* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %5, align 8
  %17 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %5, align 8
  %20 = getelementptr inbounds %struct._Unwind_Exception, %struct._Unwind_Exception* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct._Unwind_Exception*, %struct._Unwind_Exception** %5, align 8
  %22 = call i64 @_Unwind_ForcedUnwind_Phase2(%struct._Unwind_Exception* %21, %struct._Unwind_Context* %9)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @_URC_INSTALL_CONTEXT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %4, align 8
  br label %30

28:                                               ; preds = %3
  %29 = call i32 @uw_install_context(%struct._Unwind_Context* %8, %struct._Unwind_Context* %9)
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i32 @uw_init_context(%struct._Unwind_Context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @_Unwind_ForcedUnwind_Phase2(%struct._Unwind_Exception*, %struct._Unwind_Context*) #1

declare dso_local i32 @uw_install_context(%struct._Unwind_Context*, %struct._Unwind_Context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
