; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64 }

@yypcb = common dso_local global %struct.TYPE_11__* null, align 8
@CTF_K_TYPEDEF = common dso_local global i64 0, align 8
@DT_DC_TYPEDEF = common dso_local global i64 0, align 8
@D_DECL_IDRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"identifier redeclared: %s\0A\00", align 1
@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@D_DECL_COMBO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid type combination\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @dt_decl_spec(i64 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yypcb, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @dt_decl_alloc(i64 %14, i8* %15)
  %17 = call %struct.TYPE_10__* @dt_decl_push(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %3, align 8
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @CTF_K_TYPEDEF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @yypcb, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT_DC_TYPEDEF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.TYPE_10__* @dt_decl_ident(i8* %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %3, align 8
  br label %64

37:                                               ; preds = %27
  %38 = load i32, i32* @D_DECL_IDRED, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32, i8*, ...) @xyerror(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %23, %18
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %41
  %53 = load i32, i32* @D_DECL_COMBO, align 4
  %54 = call i32 (i32, i8*, ...) @xyerror(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = call %struct.TYPE_10__* @dt_decl_check(%struct.TYPE_10__* %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %3, align 8
  br label %64

64:                                               ; preds = %55, %34, %13
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %65
}

declare dso_local %struct.TYPE_10__* @dt_decl_push(i32) #1

declare dso_local i32 @dt_decl_alloc(i64, i8*) #1

declare dso_local %struct.TYPE_10__* @dt_decl_ident(i8*) #1

declare dso_local i32 @xyerror(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @dt_decl_check(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
