; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parseredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_parseredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heredoc = type { i32, %union.node* }
%union.node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NAPPEND = common dso_local global i32 0, align 4
@NTOFD = common dso_local global i32 0, align 4
@NCLOBBER = common dso_local global i32 0, align 4
@NTO = common dso_local global i32 0, align 4
@NHERE = common dso_local global i32 0, align 4
@heredoc = common dso_local global %struct.heredoc* null, align 8
@NFROMFD = common dso_local global i32 0, align 4
@NFROMTO = common dso_local global i32 0, align 4
@NFROM = common dso_local global i32 0, align 4
@redirnode = common dso_local global %union.node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parseredir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseredir(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %union.node*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %5, align 1
  %9 = call i64 @stalloc(i32 4)
  %10 = inttoptr i64 %9 to %union.node*
  store %union.node* %10, %union.node** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 62
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %union.node*, %union.node** %6, align 8
  %15 = bitcast %union.node* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = call i32 (...) @pgetc_linecont()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 62
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @NAPPEND, align 4
  %22 = load %union.node*, %union.node** %6, align 8
  %23 = bitcast %union.node* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %45

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 38
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @NTOFD, align 4
  %29 = load %union.node*, %union.node** %6, align 8
  %30 = bitcast %union.node* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 124
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @NCLOBBER, align 4
  %36 = load %union.node*, %union.node** %6, align 8
  %37 = bitcast %union.node* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @NTO, align 4
  %40 = load %union.node*, %union.node** %6, align 8
  %41 = bitcast %union.node* %40 to i32*
  store i32 %39, i32* %41, align 4
  %42 = call i32 (...) @pungetc()
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %20
  br label %94

46:                                               ; preds = %2
  %47 = load %union.node*, %union.node** %6, align 8
  %48 = bitcast %union.node* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = call i32 (...) @pgetc_linecont()
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 60
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load i32, i32* @NHERE, align 4
  %55 = load %union.node*, %union.node** %6, align 8
  %56 = bitcast %union.node* %55 to i32*
  store i32 %54, i32* %56, align 4
  %57 = call i64 @stalloc(i32 16)
  %58 = inttoptr i64 %57 to %struct.heredoc*
  store %struct.heredoc* %58, %struct.heredoc** @heredoc, align 8
  %59 = load %union.node*, %union.node** %6, align 8
  %60 = load %struct.heredoc*, %struct.heredoc** @heredoc, align 8
  %61 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %60, i32 0, i32 1
  store %union.node* %59, %union.node** %61, align 8
  %62 = call i32 (...) @pgetc_linecont()
  store i32 %62, i32* %4, align 4
  %63 = icmp eq i32 %62, 45
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.heredoc*, %struct.heredoc** @heredoc, align 8
  %66 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.heredoc*, %struct.heredoc** @heredoc, align 8
  %69 = getelementptr inbounds %struct.heredoc, %struct.heredoc* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = call i32 (...) @pungetc()
  br label %71

71:                                               ; preds = %67, %64
  br label %93

72:                                               ; preds = %46
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 38
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @NFROMFD, align 4
  %77 = load %union.node*, %union.node** %6, align 8
  %78 = bitcast %union.node* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %92

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 62
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @NFROMTO, align 4
  %84 = load %union.node*, %union.node** %6, align 8
  %85 = bitcast %union.node* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @NFROM, align 4
  %88 = load %union.node*, %union.node** %6, align 8
  %89 = bitcast %union.node* %88 to i32*
  store i32 %87, i32* %89, align 4
  %90 = call i32 (...) @pungetc()
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i8, i8* %5, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8, i8* %5, align 1
  %100 = call i32 @digit_val(i8 signext %99)
  %101 = load %union.node*, %union.node** %6, align 8
  %102 = bitcast %union.node* %101 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = load %union.node*, %union.node** %6, align 8
  store %union.node* %105, %union.node** @redirnode, align 8
  ret void
}

declare dso_local i64 @stalloc(i32) #1

declare dso_local i32 @pgetc_linecont(...) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @digit_val(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
