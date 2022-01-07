; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirtab = type { i32*, i32, %struct.redirtab*, i64 }
%union.node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, %union.node* }
%struct.TYPE_4__ = type { i32 }

@INTOFF = common dso_local global i32 0, align 4
@REDIR_BACKQ = common dso_local global i32 0, align 4
@REDIR_PUSH = common dso_local global i32 0, align 4
@empty_redirs = common dso_local global i64 0, align 8
@EMPTY = common dso_local global i32 0, align 4
@fd0_redirected = common dso_local global i32 0, align 4
@redirlist = common dso_local global %struct.redirtab* null, align 8
@NTOFD = common dso_local global i64 0, align 8
@NFROMFD = common dso_local global i64 0, align 8
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d: %s\00", align 1
@memout = common dso_local global i32 0, align 4
@out1 = common dso_local global i32* null, align 8
@out2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redirect(%union.node* %0, i32 %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.node*, align 8
  %6 = alloca %struct.redirtab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  store %union.node* %0, %union.node** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.redirtab* null, %struct.redirtab** %6, align 8
  %10 = load i32, i32* @INTOFF, align 4
  store i32 10, i32* %7, align 4
  br label %11

11:                                               ; preds = %15, %2
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 %17
  store i8 0, i8* %18, align 1
  br label %11

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @REDIR_BACKQ, align 4
  %22 = and i32 %20, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @REDIR_PUSH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %19
  %30 = load i64, i64* @empty_redirs, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @empty_redirs, align 8
  %32 = load %union.node*, %union.node** %3, align 8
  %33 = icmp ne %union.node* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = call %struct.redirtab* @ckmalloc(i32 32)
  store %struct.redirtab* %35, %struct.redirtab** %6, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %47, %34
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* @EMPTY, align 4
  %41 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %42 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* @fd0_redirected, align 4
  %52 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %53 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @empty_redirs, align 8
  %55 = sub nsw i64 %54, 1
  %56 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %57 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.redirtab*, %struct.redirtab** @redirlist, align 8
  %59 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %60 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %59, i32 0, i32 2
  store %struct.redirtab* %58, %struct.redirtab** %60, align 8
  %61 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  store %struct.redirtab* %61, %struct.redirtab** @redirlist, align 8
  store i64 0, i64* @empty_redirs, align 8
  br label %62

62:                                               ; preds = %50, %29
  br label %63

63:                                               ; preds = %62, %19
  %64 = load %union.node*, %union.node** %3, align 8
  store %union.node* %64, %union.node** %5, align 8
  br label %65

65:                                               ; preds = %145, %63
  %66 = load %union.node*, %union.node** %5, align 8
  %67 = icmp ne %union.node* %66, null
  br i1 %67, label %68, label %150

68:                                               ; preds = %65
  %69 = load %union.node*, %union.node** %5, align 8
  %70 = bitcast %union.node* %69 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* @fd0_redirected, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load %union.node*, %union.node** %5, align 8
  %78 = bitcast %union.node* %77 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NTOFD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %union.node*, %union.node** %5, align 8
  %85 = bitcast %union.node* %84 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NFROMFD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83, %76
  %91 = load %union.node*, %union.node** %5, align 8
  %92 = bitcast %union.node* %91 to %struct.TYPE_4__*
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %145

98:                                               ; preds = %90, %83
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @REDIR_PUSH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %105 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @EMPTY, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %103
  %114 = load i32, i32* @INTOFF, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %117 = call i32 @fcntl(i32 %115, i32 %116, i32 10)
  store i32 %117, i32* %7, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i32, i32* @errno, align 4
  switch i32 %120, label %123 [
    i32 128, label %121
  ]

121:                                              ; preds = %119
  %122 = load i32, i32* @CLOSED, align 4
  store i32 %122, i32* %7, align 4
  br label %129

123:                                              ; preds = %119
  %124 = load i32, i32* @INTON, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @errno, align 4
  %127 = call i8* @strerror(i32 %126)
  %128 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %125, i8* %127)
  br label %129

129:                                              ; preds = %123, %121
  br label %130

130:                                              ; preds = %129, %113
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.redirtab*, %struct.redirtab** %6, align 8
  %133 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* @INTON, align 4
  br label %139

139:                                              ; preds = %130, %103, %98
  %140 = load %union.node*, %union.node** %5, align 8
  %141 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %142 = call i32 @openredirect(%union.node* %140, i8* %141)
  %143 = load i32, i32* @INTON, align 4
  %144 = load i32, i32* @INTOFF, align 4
  br label %145

145:                                              ; preds = %139, %97
  %146 = load %union.node*, %union.node** %5, align 8
  %147 = bitcast %union.node* %146 to %struct.TYPE_3__*
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load %union.node*, %union.node** %148, align 8
  store %union.node* %149, %union.node** %5, align 8
  br label %65

150:                                              ; preds = %65
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32* @memout, i32** @out1, align 8
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 2
  %157 = load i8, i8* %156, align 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32* @memout, i32** @out2, align 8
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local %struct.redirtab* @ckmalloc(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @openredirect(%union.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
