; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalcase.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.node*, %union.node*, %union.node* }
%struct.arglist = type { i32* }
%struct.TYPE_4__ = type { %union.node*, i32 }
%struct.TYPE_5__ = type { %union.node* }

@exitstatus = common dso_local global i64 0, align 8
@oexitstatus = common dso_local global i64 0, align 8
@EXP_TILDE = common dso_local global i32 0, align 4
@NCLISTFALLTHRU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* (%union.node*)* @evalcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @evalcase(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca %union.node*, align 8
  %4 = alloca %union.node*, align 8
  %5 = alloca %union.node*, align 8
  %6 = alloca %struct.arglist, align 8
  store %union.node* %0, %union.node** %3, align 8
  %7 = call i32 @emptyarglist(%struct.arglist* %6)
  %8 = load i64, i64* @exitstatus, align 8
  store i64 %8, i64* @oexitstatus, align 8
  %9 = load %union.node*, %union.node** %3, align 8
  %10 = bitcast %union.node* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EXP_TILDE, align 4
  %14 = call i32 @expandarg(i32 %12, %struct.arglist* %6, i32 %13)
  %15 = load %union.node*, %union.node** %3, align 8
  %16 = bitcast %union.node* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %union.node*, %union.node** %17, align 8
  store %union.node* %18, %union.node** %4, align 8
  br label %19

19:                                               ; preds = %97, %1
  %20 = load %union.node*, %union.node** %4, align 8
  %21 = icmp ne %union.node* %20, null
  br i1 %21, label %22, label %102

22:                                               ; preds = %19
  %23 = load %union.node*, %union.node** %4, align 8
  %24 = bitcast %union.node* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %union.node*, %union.node** %25, align 8
  store %union.node* %26, %union.node** %5, align 8
  br label %27

27:                                               ; preds = %91, %22
  %28 = load %union.node*, %union.node** %5, align 8
  %29 = icmp ne %union.node* %28, null
  br i1 %29, label %30, label %96

30:                                               ; preds = %27
  %31 = load %union.node*, %union.node** %5, align 8
  %32 = getelementptr inbounds %struct.arglist, %struct.arglist* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @casematch(%union.node* %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %59, %38
  %40 = load %union.node*, %union.node** %4, align 8
  %41 = bitcast %union.node* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %union.node*, %union.node** %42, align 8
  %44 = icmp ne %union.node* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %union.node*, %union.node** %4, align 8
  %47 = bitcast %union.node* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NCLISTFALLTHRU, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %union.node*, %union.node** %4, align 8
  %53 = bitcast %union.node* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %union.node*, %union.node** %54, align 8
  %56 = icmp eq %union.node* %55, null
  br label %57

57:                                               ; preds = %51, %45, %39
  %58 = phi i1 [ false, %45 ], [ false, %39 ], [ %56, %51 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = load %union.node*, %union.node** %4, align 8
  %61 = bitcast %union.node* %60 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %union.node*, %union.node** %62, align 8
  store %union.node* %63, %union.node** %4, align 8
  br label %39

64:                                               ; preds = %57
  %65 = load %union.node*, %union.node** %4, align 8
  %66 = bitcast %union.node* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %union.node*, %union.node** %67, align 8
  %69 = icmp ne %union.node* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %union.node*, %union.node** %4, align 8
  %72 = bitcast %union.node* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NCLISTFALLTHRU, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %union.node*, %union.node** %4, align 8
  store %union.node* %77, %union.node** %2, align 8
  br label %103

78:                                               ; preds = %70, %64
  %79 = load %union.node*, %union.node** %4, align 8
  %80 = bitcast %union.node* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %union.node*, %union.node** %81, align 8
  %83 = icmp eq %union.node* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i64 0, i64* @exitstatus, align 8
  br label %85

85:                                               ; preds = %84, %78
  %86 = load %union.node*, %union.node** %4, align 8
  %87 = bitcast %union.node* %86 to %struct.TYPE_6__*
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %union.node*, %union.node** %88, align 8
  store %union.node* %89, %union.node** %2, align 8
  br label %103

90:                                               ; preds = %30
  br label %91

91:                                               ; preds = %90
  %92 = load %union.node*, %union.node** %5, align 8
  %93 = bitcast %union.node* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %union.node*, %union.node** %94, align 8
  store %union.node* %95, %union.node** %5, align 8
  br label %27

96:                                               ; preds = %27
  br label %97

97:                                               ; preds = %96
  %98 = load %union.node*, %union.node** %4, align 8
  %99 = bitcast %union.node* %98 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %union.node*, %union.node** %100, align 8
  store %union.node* %101, %union.node** %4, align 8
  br label %19

102:                                              ; preds = %19
  store i64 0, i64* @exitstatus, align 8
  store %union.node* null, %union.node** %2, align 8
  br label %103

103:                                              ; preds = %102, %85, %76
  %104 = load %union.node*, %union.node** %2, align 8
  ret %union.node* %104
}

declare dso_local i32 @emptyarglist(%struct.arglist*) #1

declare dso_local i32 @expandarg(i32, %struct.arglist*, i32) #1

declare dso_local i64 @casematch(%union.node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
