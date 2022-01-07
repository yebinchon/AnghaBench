; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_choose_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldemul.c_ldemul_choose_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ld_emulations = common dso_local global %struct.TYPE_4__** null, align 8
@ld_emulation = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%P: unrecognised emulation mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Supported emulations: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%F\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldemul_choose_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__**, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @ld_emulations, align 8
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 103
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 108
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 100
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %22, %16, %10, %1
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strcmp(i8* %31, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** @ld_emulation, align 8
  br label %54

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i32 1
  store %struct.TYPE_4__** %44, %struct.TYPE_4__*** %3, align 8
  br label %26

45:                                               ; preds = %26
  %46 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 (i8*, ...) @einfo(i8* %46, i8* %47)
  %49 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @einfo(i8* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @ldemul_list_emulations(i32 %51)
  %53 = call i32 (i8*, ...) @einfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %45, %38
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @einfo(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ldemul_list_emulations(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
