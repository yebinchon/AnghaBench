; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalbackcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_evalbackcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.localvar = type { i32 }
%struct.TYPE_2__ = type { i8 }
%struct.jmploc = type { i32 }
%union.node = type { i32 }
%struct.backcmd = type { i32, %struct.job*, i64, i32* }
%struct.job = type { i32 }
%struct.stackmark = type { i32 }

@exitstatus = common dso_local global i64 0, align 8
@oexitstatus = common dso_local global i64 0, align 8
@localvars = common dso_local global %struct.localvar* null, align 8
@shellparam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 1
@forcelocal = common dso_local global i32 0, align 4
@handler = common dso_local global %struct.jmploc* null, align 8
@exception = common dso_local global i64 0, align 8
@EXERROR = common dso_local global i64 0, align 8
@EV_BACKCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Pipe call failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@FORK_NOJOB = common dso_local global i32 0, align 4
@FORCEINTON = common dso_local global i32 0, align 4
@EV_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"evalbackcmd done: fd=%d buf=%p nleft=%d jp=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evalbackcmd(%union.node* %0, %struct.backcmd* %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca %struct.backcmd*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.job*, align 8
  %7 = alloca %struct.stackmark, align 4
  %8 = alloca %struct.jmploc, align 4
  %9 = alloca %struct.jmploc*, align 8
  %10 = alloca %struct.localvar*, align 8
  %11 = alloca i8, align 1
  store %union.node* %0, %union.node** %3, align 8
  store %struct.backcmd* %1, %struct.backcmd** %4, align 8
  %12 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %13 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %15 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %17 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %19 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %18, i32 0, i32 1
  store %struct.job* null, %struct.job** %19, align 8
  %20 = load %union.node*, %union.node** %3, align 8
  %21 = icmp eq %union.node* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* @exitstatus, align 8
  br label %134

23:                                               ; preds = %2
  %24 = call i32 @setstackmark(%struct.stackmark* %7)
  %25 = load i64, i64* @oexitstatus, align 8
  store i64 %25, i64* @exitstatus, align 8
  %26 = load %union.node*, %union.node** %3, align 8
  %27 = call i64 @is_valid_fast_cmdsubst(%union.node* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = load %struct.localvar*, %struct.localvar** @localvars, align 8
  store %struct.localvar* %30, %struct.localvar** %10, align 8
  store %struct.localvar* null, %struct.localvar** @localvars, align 8
  %31 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 1
  store i8 %31, i8* %11, align 1
  %32 = load i32, i32* @forcelocal, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @forcelocal, align 4
  %34 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  store %struct.jmploc* %34, %struct.jmploc** %9, align 8
  %35 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @setjmp(i32 %36) #3
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %29
  %40 = load i64, i64* @exception, align 8
  %41 = load i64, i64* @EXERROR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %59

44:                                               ; preds = %39
  %45 = load i64, i64* @exception, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.jmploc*, %struct.jmploc** %9, align 8
  store %struct.jmploc* %48, %struct.jmploc** @handler, align 8
  %49 = load i32, i32* @forcelocal, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @forcelocal, align 4
  %51 = call i32 (...) @poplocalvars()
  %52 = load %struct.localvar*, %struct.localvar** %10, align 8
  store %struct.localvar* %52, %struct.localvar** @localvars, align 8
  %53 = load i8, i8* %11, align 1
  store i8 %53, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 1
  %54 = load %struct.jmploc*, %struct.jmploc** @handler, align 8
  %55 = getelementptr inbounds %struct.jmploc, %struct.jmploc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @longjmp(i32 %56, i32 1)
  br label %58

58:                                               ; preds = %47, %44
  br label %59

59:                                               ; preds = %58, %43
  br label %65

60:                                               ; preds = %29
  store %struct.jmploc* %8, %struct.jmploc** @handler, align 8
  %61 = load %union.node*, %union.node** %3, align 8
  %62 = load i32, i32* @EV_BACKCMD, align 4
  %63 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %64 = call i32 @evalcommand(%union.node* %61, i32 %62, %struct.backcmd* %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load %struct.jmploc*, %struct.jmploc** %9, align 8
  store %struct.jmploc* %66, %struct.jmploc** @handler, align 8
  %67 = load i32, i32* @forcelocal, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* @forcelocal, align 4
  %69 = call i32 (...) @poplocalvars()
  %70 = load %struct.localvar*, %struct.localvar** %10, align 8
  store %struct.localvar* %70, %struct.localvar** @localvars, align 8
  %71 = load i8, i8* %11, align 1
  store i8 %71, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 1
  br label %118

72:                                               ; preds = %23
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %74 = call i64 @pipe(i32* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %union.node*, %union.node** %3, align 8
  %82 = call %struct.job* @makejob(%union.node* %81, i32 1)
  store %struct.job* %82, %struct.job** %6, align 8
  %83 = load %struct.job*, %struct.job** %6, align 8
  %84 = load %union.node*, %union.node** %3, align 8
  %85 = load i32, i32* @FORK_NOJOB, align 4
  %86 = call i64 @forkshell(%struct.job* %83, %union.node* %84, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %80
  %89 = load i32, i32* @FORCEINTON, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @close(i32 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dup2(i32 %98, i32 1)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %96, %88
  %104 = load %union.node*, %union.node** %3, align 8
  %105 = load i32, i32* @EV_EXIT, align 4
  %106 = call i32 @evaltree(%union.node* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %80
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @close(i32 %109)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %114 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.job*, %struct.job** %6, align 8
  %116 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %117 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %116, i32 0, i32 1
  store %struct.job* %115, %struct.job** %117, align 8
  br label %118

118:                                              ; preds = %107, %65
  %119 = call i32 @popstackmark(%struct.stackmark* %7)
  %120 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %121 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %124 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %127 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.backcmd*, %struct.backcmd** %4, align 8
  %130 = getelementptr inbounds %struct.backcmd, %struct.backcmd* %129, i32 0, i32 1
  %131 = load %struct.job*, %struct.job** %130, align 8
  %132 = bitcast %struct.job* %131 to i8*
  %133 = call i32 @TRACE(i8* %132)
  br label %134

134:                                              ; preds = %118, %22
  ret void
}

declare dso_local i32 @setstackmark(%struct.stackmark*) #1

declare dso_local i64 @is_valid_fast_cmdsubst(%union.node*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @poplocalvars(...) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @evalcommand(%union.node*, i32, %struct.backcmd*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.job* @makejob(%union.node*, i32) #1

declare dso_local i64 @forkshell(%struct.job*, %union.node*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @evaltree(%union.node*, i32) #1

declare dso_local i32 @popstackmark(%struct.stackmark*) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
