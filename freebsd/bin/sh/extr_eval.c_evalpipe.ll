; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalpipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalpipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nodelist* }
%struct.nodelist = type { i32, %struct.nodelist* }
%struct.job = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"evalpipe(%p) called\0A\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Pipe call failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@EV_EXIT = common dso_local global i32 0, align 4
@exitstatus = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"evalpipe:  job done exit status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.node*)* @evalpipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalpipe(%union.node* %0) #0 {
  %2 = alloca %union.node*, align 8
  %3 = alloca %struct.job*, align 8
  %4 = alloca %struct.nodelist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %union.node* %0, %union.node** %2, align 8
  %8 = load %union.node*, %union.node** %2, align 8
  %9 = bitcast %union.node* %8 to i8*
  %10 = call i32 @TRACE(i8* %9)
  store i32 0, i32* %5, align 4
  %11 = load %union.node*, %union.node** %2, align 8
  %12 = bitcast %union.node* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.nodelist*, %struct.nodelist** %13, align 8
  store %struct.nodelist* %14, %struct.nodelist** %4, align 8
  br label %15

15:                                               ; preds = %21, %1
  %16 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %17 = icmp ne %struct.nodelist* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %23 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %22, i32 0, i32 1
  %24 = load %struct.nodelist*, %struct.nodelist** %23, align 8
  store %struct.nodelist* %24, %struct.nodelist** %4, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load i32, i32* @INTOFF, align 4
  %27 = load %union.node*, %union.node** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.job* @makejob(%union.node* %27, i32 %28)
  store %struct.job* %29, %struct.job** %3, align 8
  store i32 -1, i32* %6, align 4
  %30 = load %union.node*, %union.node** %2, align 8
  %31 = bitcast %union.node* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.nodelist*, %struct.nodelist** %32, align 8
  store %struct.nodelist* %33, %struct.nodelist** %4, align 8
  br label %34

34:                                               ; preds = %132, %25
  %35 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %36 = icmp ne %struct.nodelist* %35, null
  br i1 %36, label %37, label %136

37:                                               ; preds = %34
  %38 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %39 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @prehash(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %44 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %43, i32 0, i32 1
  %45 = load %struct.nodelist*, %struct.nodelist** %44, align 8
  %46 = icmp ne %struct.nodelist* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = call i64 @pipe(i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @close(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.job*, %struct.job** %3, align 8
  %64 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %65 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %union.node*, %union.node** %2, align 8
  %68 = bitcast %union.node* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @forkshell(%struct.job* %63, i32 %66, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %62
  %74 = load i32, i32* @INTON, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dup2(i32 %78, i32 0)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @close(i32 %80)
  br label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89, %86
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dup2(i32 %103, i32 1)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @close(i32 %106)
  br label %108

108:                                              ; preds = %101, %97
  br label %109

109:                                              ; preds = %108, %82
  %110 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %111 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @EV_EXIT, align 4
  %114 = call i32 @evaltree(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %62
  %116 = load i32, i32* %6, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @close(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %6, align 4
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.nodelist*, %struct.nodelist** %4, align 8
  %134 = getelementptr inbounds %struct.nodelist, %struct.nodelist* %133, i32 0, i32 1
  %135 = load %struct.nodelist*, %struct.nodelist** %134, align 8
  store %struct.nodelist* %135, %struct.nodelist** %4, align 8
  br label %34

136:                                              ; preds = %34
  %137 = load i32, i32* @INTON, align 4
  %138 = load %union.node*, %union.node** %2, align 8
  %139 = bitcast %union.node* %138 to %struct.TYPE_2__*
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load i32, i32* @INTOFF, align 4
  %145 = load %struct.job*, %struct.job** %3, align 8
  %146 = call i64 @waitforjob(%struct.job* %145, i32* null)
  store i64 %146, i64* @exitstatus, align 8
  %147 = load i64, i64* @exitstatus, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @TRACE(i8* %148)
  %150 = load i32, i32* @INTON, align 4
  br label %152

151:                                              ; preds = %136
  store i64 0, i64* @exitstatus, align 8
  br label %152

152:                                              ; preds = %151, %143
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.job* @makejob(%union.node*, i32) #1

declare dso_local i32 @prehash(i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @forkshell(%struct.job*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @evaltree(i32, i32) #1

declare dso_local i64 @waitforjob(%struct.job*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
