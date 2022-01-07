; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_depends_finddep.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_depends_finddep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@D_PRAGMA_DEPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to find dependency in libpath: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, i64)* @dt_pragma_depends_finddep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_pragma_depends_finddep(%struct.TYPE_6__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__* %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  br label %15

15:                                               ; preds = %31, %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @stat(i8* %26, %struct.stat* %10)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = call %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %9, align 8
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @xyerror(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  ret void
}

declare dso_local %struct.TYPE_7__* @dt_list_next(%struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @xyerror(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
