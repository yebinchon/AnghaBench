; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32* }

@yypcb = common dso_local global %struct.TYPE_8__* null, align 8
@EDT_NODECL = common dso_local global i32 0, align 4
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@CTF_K_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @dt_decl_top() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @yypcb, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EDT_NODECL, align 4
  %13 = call i32 @longjmp(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i64, i64* @CTF_K_INTEGER, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %30 = call i32 @dt_decl_check(%struct.TYPE_7__* %29)
  br label %31

31:                                               ; preds = %25, %20, %14
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %32
}

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @dt_decl_check(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
