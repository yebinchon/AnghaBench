; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_zhack_do_feature_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error: missing pool name\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"for_read\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"for_write\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"descriptions\00", align 1
@SPA_FEATURE_ENABLED_TXG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"enabled_txg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @zhack_do_feature_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zhack_do_feature_stat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @usage()
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @B_TRUE, align 4
  %24 = load i32, i32* @FTAG, align 4
  %25 = call i32 @zhack_spa_open(i8* %22, i32 %23, i32 %24, %struct.TYPE_6__** %5)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dump_obj(i32* %29, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dump_obj(i32* %34, i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dump_obj(i32* %39, i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i32, i32* @SPA_FEATURE_ENABLED_TXG, align 4
  %46 = call i64 @spa_feature_is_active(%struct.TYPE_6__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %18
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dump_obj(i32* %49, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %48, %18
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = call i32 @dump_mos(%struct.TYPE_6__* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @spa_close(%struct.TYPE_6__* %57, i32 %58)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @zhack_spa_open(i8*, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @dump_obj(i32*, i32, i8*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dump_mos(%struct.TYPE_6__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
