; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_as_undef.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_as.c_dt_as_undef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DT_IDFLG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"``\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@DT_IDFLG_PRIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"primary kernel\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"loadable kernel\00", align 1
@yylineno = common dso_local global i32 0, align 4
@D_ASRELO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"relocation remains against %s symbol %s%s%s (offset 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @dt_as_undef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_as_undef(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DT_IDFLG_USER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DT_IDFLG_USER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DT_IDFLG_PRIM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %35

34:                                               ; preds = %26
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @yylineno, align 4
  %40 = load i32, i32* @D_ASRELO, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @xyerror(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %41, i32 %44, i8* %45, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @xyerror(i32, i8*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
