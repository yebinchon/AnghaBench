; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_pat_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_pat_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32 }

@pathead = common dso_local global %struct.TYPE_6__* null, align 8
@nflag = common dso_local global i32 0, align 4
@MTCH = common dso_local global i32 0, align 4
@DIR_MTCH = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@PAX_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Pattern select out of memory\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Pattern list inconsistent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pat_sel(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pathead, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %159

15:                                               ; preds = %9
  %16 = load i32, i32* @nflag, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @MTCH, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  store i32 0, i32* %2, align 4
  br label %159

24:                                               ; preds = %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DIR_MTCH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %159

32:                                               ; preds = %24
  %33 = load i32, i32* @dflag, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %126, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PAX_DIR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %126

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @strdup(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = icmp eq i8* %59, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8 47, i8* %72, align 1
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i8* null, i8** %75, align 8
  store i32 -1, i32* %2, align 4
  br label %159

76:                                               ; preds = %55
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8 47, i8* %84, align 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %117

107:                                              ; preds = %87
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %107, %87
  %118 = load i32, i32* @DIR_MTCH, align 4
  %119 = load i32, i32* @MTCH, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %125, align 8
  store i32 0, i32* %2, align 4
  br label %159

126:                                              ; preds = %40, %32
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pathead, align 8
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__** @pathead, %struct.TYPE_6__*** %5, align 8
  br label %128

128:                                              ; preds = %139, %126
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %130 = icmp ne %struct.TYPE_6__* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = icmp ne %struct.TYPE_6__* %132, %135
  br label %137

137:                                              ; preds = %131, %128
  %138 = phi i1 [ false, %128 ], [ %136, %131 ]
  br i1 %138, label %139, label %145

139:                                              ; preds = %137
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  store %struct.TYPE_6__** %141, %struct.TYPE_6__*** %5, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  store %struct.TYPE_6__* %144, %struct.TYPE_6__** %4, align 8
  br label %128

145:                                              ; preds = %137
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = icmp eq %struct.TYPE_6__* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %159

150:                                              ; preds = %145
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %153, %struct.TYPE_6__** %154, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = call i32 @free(%struct.TYPE_6__* %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %158, align 8
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %150, %148, %117, %73, %31, %18, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
