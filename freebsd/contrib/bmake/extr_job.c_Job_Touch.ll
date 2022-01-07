; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_Touch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_Job_Touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.utimbuf = type { i32, i32 }

@OP_JOIN = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@OP_EXEC = common dso_local global i32 0, align 4
@OP_OPTIONAL = common dso_local global i32 0, align 4
@OP_SPECIAL = common dso_local global i32 0, align 4
@OP_PHONY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"touch %s\0A\00", align 1
@OP_ARCHV = common dso_local global i32 0, align 4
@OP_LIB = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"*** couldn't touch %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Job_Touch(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.utimbuf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OP_JOIN, align 4
  %13 = load i32, i32* @OP_USE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OP_USEBEFORE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OP_EXEC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OP_OPTIONAL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OP_SPECIAL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @OP_PHONY, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %11, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %131

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i64 @NoExecute(%struct.TYPE_6__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @stdout, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  br label %43

43:                                               ; preds = %35, %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = call i64 @NoExecute(%struct.TYPE_6__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %131

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @OP_ARCHV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i32 @Arch_Touch(%struct.TYPE_6__* %56)
  br label %131

58:                                               ; preds = %48
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @OP_LIB, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call i32 @Arch_TouchLib(%struct.TYPE_6__* %66)
  br label %130

68:                                               ; preds = %58
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  br label %81

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i8* [ %76, %73 ], [ %80, %77 ]
  store i8* %82, i8** %7, align 8
  %83 = load i32, i32* @now, align 4
  %84 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @utime(i8* %86, %struct.utimbuf* %6)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @O_RDWR, align 4
  %92 = load i32, i32* @O_CREAT, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @open(i8* %90, i32 %93, i32 438)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @read(i32 %98, i8* %8, i32 1)
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @SEEK_SET, align 4
  %104 = call i32 @lseek(i32 %102, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %115, %101
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @write(i32 %106, i8* %8, i32 1)
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EAGAIN, align 8
  %112 = icmp eq i64 %110, %111
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %105 ], [ %112, %109 ]
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %105

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %116, %97
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @close(i32 %118)
  br label %128

120:                                              ; preds = %89
  %121 = load i32, i32* @stdout, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = load i64, i64* @errno, align 8
  %124 = call i8* @strerror(i64 %123)
  %125 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %122, i8* %124)
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 @fflush(i32 %126)
  br label %128

128:                                              ; preds = %120, %117
  br label %129

129:                                              ; preds = %128, %81
  br label %130

130:                                              ; preds = %129, %65
  br label %131

131:                                              ; preds = %27, %47, %130, %55
  ret void
}

declare dso_local i64 @NoExecute(%struct.TYPE_6__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @Arch_Touch(%struct.TYPE_6__*) #1

declare dso_local i32 @Arch_TouchLib(%struct.TYPE_6__*) #1

declare dso_local i64 @utime(i8*, %struct.utimbuf*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
