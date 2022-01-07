; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_pipeline.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nodelist*, i64 }
%struct.nodelist = type { %struct.nodelist*, %union.node* }
%struct.TYPE_4__ = type { %union.node* }

@CHKNL = common dso_local global i32 0, align 4
@CHKKWD = common dso_local global i32 0, align 4
@CHKALIAS = common dso_local global i32 0, align 4
@checkkwd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pipeline: entered\0A\00", align 1
@TNOT = common dso_local global i32 0, align 4
@tokpushback = common dso_local global i32 0, align 4
@TPIPE = common dso_local global i32 0, align 4
@NPIPE = common dso_local global i32 0, align 4
@NNOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* ()* @pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @pipeline() #0 {
  %1 = alloca %union.node*, align 8
  %2 = alloca %union.node*, align 8
  %3 = alloca %union.node*, align 8
  %4 = alloca %union.node*, align 8
  %5 = alloca %struct.nodelist*, align 8
  %6 = alloca %struct.nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @CHKNL, align 4
  %10 = load i32, i32* @CHKKWD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CHKALIAS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* @checkkwd, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %19, %0
  %16 = call i32 (...) @readtoken()
  %17 = load i32, i32* @TNOT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  br label %15

24:                                               ; preds = %15
  %25 = load i32, i32* @tokpushback, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @tokpushback, align 4
  %27 = call i8* (...) @command()
  %28 = bitcast i8* %27 to %union.node*
  store %union.node* %28, %union.node** %2, align 8
  %29 = call i32 (...) @readtoken()
  %30 = load i32, i32* @TPIPE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %24
  %33 = call i64 @stalloc(i32 4)
  %34 = inttoptr i64 %33 to %union.node*
  store %union.node* %34, %union.node** %4, align 8
  %35 = load i32, i32* @NPIPE, align 4
  %36 = load %union.node*, %union.node** %4, align 8
  %37 = bitcast %union.node* %36 to i32*
  store i32 %35, i32* %37, align 8
  %38 = load %union.node*, %union.node** %4, align 8
  %39 = bitcast %union.node* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = call i64 @stalloc(i32 16)
  %42 = inttoptr i64 %41 to %struct.nodelist*
  store %struct.nodelist* %42, %struct.nodelist** %5, align 8
  %43 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %44 = load %union.node*, %union.node** %4, align 8
  %45 = bitcast %union.node* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.nodelist* %43, %struct.nodelist** %46, align 8
  %47 = load %union.node*, %union.node** %2, align 8
  %48 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %49 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %48, i32 0, i32 1
  store %union.node* %47, %union.node** %49, align 8
  br label %50

50:                                               ; preds = %78, %32
  %51 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  store %struct.nodelist* %51, %struct.nodelist** %6, align 8
  %52 = call i64 @stalloc(i32 16)
  %53 = inttoptr i64 %52 to %struct.nodelist*
  store %struct.nodelist* %53, %struct.nodelist** %5, align 8
  %54 = load i32, i32* @CHKNL, align 4
  %55 = load i32, i32* @CHKKWD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CHKALIAS, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* @checkkwd, align 4
  %59 = call i32 (...) @readtoken()
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @tokpushback, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @tokpushback, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @TNOT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = call %union.node* @pipeline()
  %67 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %68 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %67, i32 0, i32 1
  store %union.node* %66, %union.node** %68, align 8
  br label %74

69:                                               ; preds = %50
  %70 = call i8* (...) @command()
  %71 = bitcast i8* %70 to %union.node*
  %72 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %73 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %72, i32 0, i32 1
  store %union.node* %71, %union.node** %73, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %76 = load %struct.nodelist*, %struct.nodelist** %6, align 8
  %77 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %76, i32 0, i32 0
  store %struct.nodelist* %75, %struct.nodelist** %77, align 8
  br label %78

78:                                               ; preds = %74
  %79 = call i32 (...) @readtoken()
  %80 = load i32, i32* @TPIPE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %50, label %82

82:                                               ; preds = %78
  %83 = load %struct.nodelist*, %struct.nodelist** %5, align 8
  %84 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %83, i32 0, i32 0
  store %struct.nodelist* null, %struct.nodelist** %84, align 8
  %85 = load %union.node*, %union.node** %4, align 8
  store %union.node* %85, %union.node** %2, align 8
  br label %86

86:                                               ; preds = %82, %24
  %87 = load i32, i32* @tokpushback, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @tokpushback, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = call i64 @stalloc(i32 4)
  %93 = inttoptr i64 %92 to %union.node*
  store %union.node* %93, %union.node** %3, align 8
  %94 = load i32, i32* @NNOT, align 4
  %95 = load %union.node*, %union.node** %3, align 8
  %96 = bitcast %union.node* %95 to i32*
  store i32 %94, i32* %96, align 8
  %97 = load %union.node*, %union.node** %2, align 8
  %98 = load %union.node*, %union.node** %3, align 8
  %99 = bitcast %union.node* %98 to %struct.TYPE_4__*
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store %union.node* %97, %union.node** %100, align 8
  %101 = load %union.node*, %union.node** %3, align 8
  store %union.node* %101, %union.node** %1, align 8
  br label %104

102:                                              ; preds = %86
  %103 = load %union.node*, %union.node** %2, align 8
  store %union.node* %103, %union.node** %1, align 8
  br label %104

104:                                              ; preds = %102, %91
  %105 = load %union.node*, %union.node** %1, align 8
  ret %union.node* %105
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @readtoken(...) #1

declare dso_local i8* @command(...) #1

declare dso_local i64 @stalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
