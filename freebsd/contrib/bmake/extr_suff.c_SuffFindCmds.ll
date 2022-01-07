; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffFindCmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffFindCmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@OP_OPTIONAL = common dso_local global i32 0, align 4
@sufflist = common dso_local global i32 0, align 4
@SuffSuffHasNameP = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\09using existing source %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, i32)* @SuffFindCmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @SuffFindCmds(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @Lst_Open(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %100, %86, %75, %52, %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @Lst_Next(i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @Lst_Close(i32 %34)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %147

36:                                               ; preds = %24
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @Lst_Datum(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OP_OPTIONAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @Lst_IsEmpty(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %24

53:                                               ; preds = %46, %36
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strrchr(i8* %56, i8 signext 47)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %12, align 8
  br label %67

64:                                               ; preds = %53
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @strncmp(i8* %68, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %24

76:                                               ; preds = %67
  %77 = load i32, i32* @sufflist, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* @SuffSuffHasNameP, align 4
  %83 = call i32* @Lst_Find(i32 %77, i8* %81, i32 %82)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %24

87:                                               ; preds = %76
  %88 = load i32*, i32** %6, align 8
  %89 = call i64 @Lst_Datum(i32* %88)
  %90 = inttoptr i64 %89 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %10, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32* @Lst_Member(i32 %93, %struct.TYPE_9__* %96)
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %101

100:                                              ; preds = %87
  br label %24

101:                                              ; preds = %99
  %102 = call %struct.TYPE_10__* @bmake_malloc(i32 40)
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %11, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @bmake_strdup(i8* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %135 = call i32 @Lst_AtEnd(i32 %133, %struct.TYPE_10__* %134)
  %136 = load i32, i32* @SUFF, align 4
  %137 = call i64 @DEBUG(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %101
  %140 = load i32, i32* @debug_file, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %139, %101
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %3, align 8
  br label %147

147:                                              ; preds = %145, %31
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %148
}

declare dso_local i32 @Lst_Open(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @Lst_Next(i32) #1

declare dso_local i32 @Lst_Close(i32) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i64 @Lst_IsEmpty(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32* @Lst_Find(i32, i8*, i32) #1

declare dso_local i32* @Lst_Member(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @bmake_malloc(i32) #1

declare dso_local i32 @bmake_strdup(i8*) #1

declare dso_local i32 @Lst_AtEnd(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
