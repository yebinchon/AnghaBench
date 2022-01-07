; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parsefname.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parsefname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { i64 }
%struct.heredoc = type { i8*, %struct.heredoc*, i64 }
%struct.TYPE_2__ = type { i32 }

@redirnode = common dso_local global %union.node* null, align 8
@TWORD = common dso_local global i32 0, align 4
@NHERE = common dso_local global i64 0, align 8
@heredoc = common dso_local global %struct.heredoc* null, align 8
@quoteflag = common dso_local global i64 0, align 8
@NXHERE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Here document %d\0A\00", align 1
@wordtext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Illegal eof marker for << redirection\00", align 1
@heredoclist = common dso_local global %struct.heredoc* null, align 8
@NTOFD = common dso_local global i64 0, align 8
@NFROMFD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parsefname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsefname() #0 {
  %1 = alloca %union.node*, align 8
  %2 = alloca %struct.heredoc*, align 8
  %3 = alloca %struct.heredoc*, align 8
  %4 = load %union.node*, %union.node** @redirnode, align 8
  store %union.node* %4, %union.node** %1, align 8
  %5 = load i32, i32* @TWORD, align 4
  %6 = call i32 @consumetoken(i32 %5)
  %7 = load %union.node*, %union.node** %1, align 8
  %8 = bitcast %union.node* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NHERE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %75

12:                                               ; preds = %0
  %13 = load %struct.heredoc*, %struct.heredoc** @heredoc, align 8
  store %struct.heredoc* %13, %struct.heredoc** %2, align 8
  %14 = load i64, i64* @quoteflag, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* @NXHERE, align 8
  %18 = load %union.node*, %union.node** %1, align 8
  %19 = bitcast %union.node* %18 to i64*
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %union.node*, %union.node** %1, align 8
  %22 = bitcast %union.node* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @TRACE(i8* %24)
  %26 = load %struct.heredoc*, %struct.heredoc** %2, align 8
  %27 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i8*, i8** @wordtext, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** @wordtext, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @wordtext, align 8
  br label %31

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i8*, i8** @wordtext, align 8
  %42 = call i32 @noexpand(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 @synerror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8*, i8** @wordtext, align 8
  %48 = call i32 @rmescapes(i8* %47)
  %49 = load i8*, i8** @wordtext, align 8
  %50 = load %struct.heredoc*, %struct.heredoc** %2, align 8
  %51 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.heredoc*, %struct.heredoc** %2, align 8
  %53 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %52, i32 0, i32 1
  store %struct.heredoc* null, %struct.heredoc** %53, align 8
  %54 = load %struct.heredoc*, %struct.heredoc** @heredoclist, align 8
  %55 = icmp eq %struct.heredoc* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load %struct.heredoc*, %struct.heredoc** %2, align 8
  store %struct.heredoc* %57, %struct.heredoc** @heredoclist, align 8
  br label %74

58:                                               ; preds = %46
  %59 = load %struct.heredoc*, %struct.heredoc** @heredoclist, align 8
  store %struct.heredoc* %59, %struct.heredoc** %3, align 8
  br label %60

60:                                               ; preds = %66, %58
  %61 = load %struct.heredoc*, %struct.heredoc** %3, align 8
  %62 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %61, i32 0, i32 1
  %63 = load %struct.heredoc*, %struct.heredoc** %62, align 8
  %64 = icmp ne %struct.heredoc* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.heredoc*, %struct.heredoc** %3, align 8
  %68 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %67, i32 0, i32 1
  %69 = load %struct.heredoc*, %struct.heredoc** %68, align 8
  store %struct.heredoc* %69, %struct.heredoc** %3, align 8
  br label %60

70:                                               ; preds = %60
  %71 = load %struct.heredoc*, %struct.heredoc** %2, align 8
  %72 = load %struct.heredoc*, %struct.heredoc** %3, align 8
  %73 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %72, i32 0, i32 1
  store %struct.heredoc* %71, %struct.heredoc** %73, align 8
  br label %74

74:                                               ; preds = %70, %56
  br label %97

75:                                               ; preds = %0
  %76 = load %union.node*, %union.node** %1, align 8
  %77 = bitcast %union.node* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NTOFD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %union.node*, %union.node** %1, align 8
  %83 = bitcast %union.node* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NFROMFD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %75
  %88 = load %union.node*, %union.node** %1, align 8
  %89 = load i8*, i8** @wordtext, align 8
  %90 = call i32 @fixredir(%union.node* %88, i8* %89, i32 0)
  br label %96

91:                                               ; preds = %81
  %92 = call i32 (...) @makename()
  %93 = load %union.node*, %union.node** %1, align 8
  %94 = bitcast %union.node* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96, %74
  ret void
}

declare dso_local i32 @consumetoken(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @noexpand(i8*) #1

declare dso_local i32 @synerror(i8*) #1

declare dso_local i32 @rmescapes(i8*) #1

declare dso_local i32 @fixredir(%union.node*, i8*, i32) #1

declare dso_local i32 @makename(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
